// Formulario

import { showNotification } from './notification1.js';
import { saveForm, addData, loadSavedForms, loadFormFields } from './dataManager1.js';

let formCount = 0;

export function addForm() {
  formCount++;
  const formTitle = window.prompt("Digite o título do formulário");
  if (!formTitle) return;
  const formId = `form${formCount}`;
  const formDiv = document.createElement('div');
  formDiv.classList.add('form');
  formDiv.id = formId;
  formDiv.innerHTML = `
    <h2>${formTitle}</h2>
    <br>
    <div class=buttonForm>
    <button class="add-field-button" onclick="addField('${formId}', 'text')"><i class="fa-sharp fa-solid fa-font fa-lg"></i> Texto</button>
    <button class="add-field-button" onclick="addField('${formId}', 'date')"><i class="	far fa-calendar-alt fa-lg"></i> Data</button>
    <button class="add-field-button" onclick="addField('${formId}', 'dropdown')"><i class="fa-solid fa-chevron-down fa-lg"></i> Dropdown</button>
    <button class="add-field-button" onclick="addField('${formId}', 'number')"><i class="fa-regular fa-1 fa-lg"></i> Número</button>
    </div>
    <hr>
    <div id="${formId}-fields"></div>
    <div class=buttonData>
    <button class="save-form-button" onclick="saveForm('${formId}', '${formTitle}', true)"><i class="fa-solid fa-clipboard-check fa-lg"></i> Salvar formulário</button>
    <button class="remove-form-button" onclick="removeForm('${formId}')" style="background-color:#fe112d";><i class="fas fa-trash-alt"></i> Remover Formulário</button>
    <div id="${formId}-data-entry" style="display:none;">
      <button class="add-data-button" id="buttonData" onclick="addData('${formId}')"><i class="fas fa-plus"></i> Inserir Dados</button>
    </div>
    </div>
  `;
  document.getElementById('forms').appendChild(formDiv);
  showNotification('Formulário adicionado!');
}

export function addField(formId, type) {
  const fieldTitle = window.prompt("Digite o título do campo");
  if (!fieldTitle) return;

  const fieldId = `${formId}-${type}-${document.querySelectorAll(`#${formId}-fields > .field`).length + 1}`; 
  const fieldDiv = document.createElement('div');
  fieldDiv.classList.add('field');
  fieldDiv.id = fieldId;

  let fieldContent = '';
  switch (type) {
    case 'text':
      fieldContent = `
        <label for="${fieldId}">${fieldTitle}</label>
        <input type="text" id="${fieldId}" placeholder="Digite aqui" required>
      `;
      break;
    case 'date':
      fieldContent = `
        <label for="${fieldId}">${fieldTitle}</label>
        <input type="date" id="${fieldId}" required>
      `;
      break;
    case 'dropdown':
      const options = window.prompt("Digite as opções do dropdown separadas por vírgula");
      if (!options) return;
      const optionsArray = options.split(',').map(option => option.trim());
      fieldContent = `
        <label for="${fieldId}">${fieldTitle}</label>
        <select id="${fieldId}" required>
          <option value="">Selecione</option>
          ${optionsArray.map(option => `<option value="${option}">${option}</option>`).join('')}
        </select>
      `;
      break;
    case 'number':
      fieldContent = `
        <label for="${fieldId}">${fieldTitle}</label>
        <input type="number" id="${fieldId}" placeholder="Digite um número" required>
      `;
      break;
  }

  fieldDiv.innerHTML = `
    ${fieldContent}
    <button class="remove-field-button remove-field-${formId}" onclick="removeField('${formId}', '${fieldId}')"><i class=fas fa-eraser></i>Remover Campo</button>
  `;
  document.getElementById(`${formId}-fields`).appendChild(fieldDiv);
  showNotification('Campo adicionado!');
}

export function removeForm(formId) {
  const form = document.getElementById(formId);
  if (form && form.parentNode) {
    form.parentNode.removeChild(form);
    showNotification('Formulário removido!');
  } else {
    console.error(`Formulário com ID ${formId} não encontrado.`);
  }
}

export function removeField(formId, fieldId) {
  const field = document.getElementById(fieldId);
  if (field && field.parentNode) {
    field.parentNode.removeChild(field);
    showNotification('Campo removido!');
  } else {
    console.error(`Campo com ID ${fieldId} não encontrado.`);
  }
}

export function moveFormToSavedArea(formId, formTitle) {
  const savedFormsContainer = document.getElementById('saved-forms');
  const form = document.getElementById(formId);
  if (savedFormsContainer && form) {
    form.querySelectorAll('.remove-field-button').forEach(button => button.remove());
    form.querySelectorAll('.add-field-button').forEach(button => button.remove());
    form.querySelectorAll('.remove-form-button').forEach(button => button.remove());
    
    const removeFormButton = document.createElement('div');
    removeFormButton.classList.add('buttonRemoveForm');
    removeFormButton.innerHTML = '<button class="remove-form-button" onclick="removeForm(${formId})" style="background-color:#fe112d";><i class="fas fa-trash-alt"></i> Remover Formulário</button>';
    removeFormButton.onclick = ($formId) => {
      removeForm(formId);
      fetch('/removeForm', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({ formTitle })
      })
      .then(response => response.json())
      .then(data => {
        showNotification(data.message);
      })
      .catch(error => {
        console.error('Erro ao remover o formulário:', error);
        showNotification('Erro ao remover o formulário');
      });
    };

    form.appendChild(removeFormButton);
    savedFormsContainer.appendChild(form);
  } else {
    console.error('Erro ao mover formulário para a área de formulários salvos.');
  }
}