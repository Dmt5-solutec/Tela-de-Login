//Dados
let formCount = 0; // Variável para contar o número de formulários
let savedForms = []; // Lista para armazenar os formulários salvos

import { showNotification } from './notification.js';
import { moveFormToSavedArea } from './formManager.js';

export function saveForm(formId, formTitle, showJSON = false) {
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
    title: formTitle,
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
        dataEntryDiv.style.display = 'block';
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
          <div id="${formId}-fields"></div>
          <div id="${formId}-data-entry">
            <button class="add-data-button" onclick="addData('${formId}')"><i class="fas fa-plus"></i> Inserir Dados</button>
          </div>
        `;
        document.getElementById('saved-forms').appendChild(formDiv);
        moveFormToSavedArea(formId, formTitle);

        loadFormFields(formId, formTitle);
      });
    }
  })
  .catch(error => {
    console.error('Erro ao carregar os formulários salvos:', error);
  });
}

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
