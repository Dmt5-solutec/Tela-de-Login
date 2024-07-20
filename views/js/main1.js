//Principal

import { addForm, addField, removeForm, removeField } from './formManager1.js';
import { saveForm, addData, loadSavedForms, loadFormFields } from './dataManager1.js';

window.addForm = addForm;
window.addField = addField;
window.removeForm = removeForm;
window.removeField = removeField;
window.saveForm = saveForm;
window.addData = addData;
window.loadSavedForms = loadSavedForms;
window.loadFormFields = loadFormFields;

window.onload = loadSavedForms;
