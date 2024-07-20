// dataManager.js

// Variáveis globais para contagem de formulários e armazenamento de formulários salvos
let formCount = 0; 
let savedForms = []; 

// Importar notificações e função para mover formulários
import { showNotification } from './notification1.js';
import { moveFormToSavedArea } from './formManager1.js';

// Função para salvar o formulário
export function saveForm(formId, formTitle = false) {
  const fields = document.querySelectorAll(`#${formId}-fields .field`);
  const formFields = [];
  fields.forEach(field => {
    const input = field.querySelector('input, select');
    formFields.push({
      id: field.id,
      title: field.querySelector('label').textContent,
      type: input.type,
      value: input.value
    });
  });

  const form = {
    id: formId,
    title: formTitle || document.getElementById(`${formId}-title`).textContent,
    fields: formFields
  };

  fetch('/saveForm', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(form)
  })
  .then(response => response.json())
  .then(data => {
    if (data.errors) {
      data.errors.forEach(error => showNotification(error.msg));
    } else {
      showNotification(data.message);

      document.querySelectorAll(`#${formId} .add-field-button, #${formId} .remove-form-button`).forEach(button => button.disabled = true);
      document.querySelectorAll(`.remove-field-${formId}`).forEach(button => button.remove());
      const saveButton = document.querySelector(`#${formId} .save-form-button`);
      if (saveButton) {
        saveButton.remove();
      } else {
        console.error(`Botão de salvar com ID ${formId} não encontrado.`);
      }
      const dataEntryDiv = document.getElementById(`${formId}-data-entry`);
      if (dataEntryDiv) {
        dataEntryDiv.style.display = 'grid';
      } else {
        console.error(`Div de entrada de dados com ID ${formId}-data-entry não encontrada.`);
      }
      moveFormToSavedArea(formId, formTitle);
    }
  })
  .catch(error => {
    console.error('Erro ao salvar o formulário:', error);
    showNotification('Erro ao salvar o formulário');
  });
}


// Função para adicionar dados ao formulário
export function addData(formId) {
  const formTitle = document.querySelector(`#${formId} h2`).textContent;
  const formData = {};
  const fields = document.querySelectorAll(`#${formId}-fields .field`);
  fields.forEach(field => {
    const input = field.querySelector('input, select');
    formData[field.querySelector('label').textContent] = input.value;
  });

  fetch('/submitForm', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ formTitle, formData })
  })
  .then(response => response.json())
  .then(data => {
    if (data.errors) {
      data.errors.forEach(error => showNotification(error.msg));
    } else {
      showNotification(data.message);
      
      fields.forEach(field => {
        const input = field.querySelector('input, select');
        input.value = '';
      });
    }
  })
  .catch(error => {
    console.error('Erro ao inserir dados:', error);
    showNotification('Erro ao inserir dados');
  });
}

// Função para carregar os formulários salvos
export function loadSavedForms() {
  fetch('/getForms')
  .then(response => response.json())
  .then(data => {
    if (data.forms) {
      data.forms.forEach(formTitle => {
        const formId = `form${formCount++}`;
        const formDiv = document.createElement('div');
        formDiv.classList.add('form');
        formDiv.id = formId;
        formDiv.innerHTML = `
          <h2>${formTitle}</h2>
          <hr>
          <div id="${formId}-fields"></div>
          <div id="${formId}-data-entry" class="buttonInsert">
            <button class="add-data-button" onclick="addData('${formId}')"><i class="fas fa-plus"></i> Inserir Dados</button>
          </div>
        `;
        if (!formDiv.classList.contains('hidden')) { // Não adicionar formulários ocultos
          document.getElementById('saved-forms').appendChild(formDiv);
          moveFormToSavedArea(formId, formTitle);
          loadFormFields(formId, formTitle);
        }
      });
    }
  })
  .catch(error => {
    console.error('Erro ao carregar os formulários salvos:', error);
  });
}

// Função para carregar os campos de um formulário específico
export function loadFormFields(formId, formTitle) {
  fetch(`/getFormDetails?formTitle=${formTitle}`)
  .then(response => response.json())
  .then(data => {
    const fieldsContainer = document.getElementById(`${formId}-fields`);
    if (data.fields && fieldsContainer) {
      data.fields.forEach(field => {
        if (field.title === 'id') return;

        const fieldDiv = document.createElement('div');
        fieldDiv.classList.add('field');
        fieldDiv.id = `${formId}-${field.title}`;

        let fieldContent = '';
        switch (field.type) {
          case 'TEXT':
            fieldContent = `<label for="${fieldDiv.id}">${field.title}</label><input type="text" id="${fieldDiv.id}" required>`;
            break;
          case 'DATE':
            fieldContent = `<label for="${fieldDiv.id}">${field.title}</label><input type="date" id="${fieldDiv.id}" required>`;
            break;
          case 'INTEGER':
            fieldContent = `<label for="${fieldDiv.id}">${field.title}</label><input type="number" id="${fieldDiv.id}" required>`;
            break;
        }

        fieldDiv.innerHTML = fieldContent;
        fieldsContainer.appendChild(fieldDiv);
      });
    }
  })
  .catch(error => {
    console.error('Erro ao carregar os campos do formulário:', error);
  });
}
