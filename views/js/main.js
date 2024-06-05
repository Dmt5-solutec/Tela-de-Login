// main.js

// Importar funções dos gerenciadores de formulário e dados
import { addForm, addField, removeForm, removeField } from './formManager.js';
import { saveForm, addData, loadSavedForms, loadFormFields } from './dataManager.js';

// Expor funções para o escopo global
window.addForm = addForm;
window.addField = addField;
window.removeForm = removeForm;
window.removeField = removeField;
window.saveForm = saveForm;
window.addData = addData;
window.loadSavedForms = loadSavedForms;
window.loadFormFields = loadFormFields;

// Carregar formulários salvos ao carregar a página
window.onload = loadSavedForms;
