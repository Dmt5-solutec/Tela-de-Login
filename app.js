const express = require('express');
const path = require('path');
const sqlite3 = require('sqlite3').verbose();
const bodyParser = require('body-parser');
const { check, validationResult } = require('express-validator');
const app = express();
const port = 3000;

const db = new sqlite3.Database('./database.db', (err) => {
  if (err) {
    console.error('Erro ao conectar ao banco de dados:', err);
  } else {
    console.log('Conectado ao banco de dados SQLite');
  }
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(express.static(path.join(__dirname, 'views')));

const formatName = (name) => {
  if (typeof name !== 'string') return '';
  return name.replace(/\s+/g, '_');
};

const mapHtmlTypeToSqliteType = (type) => {
  switch (type) {
    case 'text':
    case 'date':
      return 'TEXT';
    case 'number':
      return 'INTEGER';
    case 'dropdown':
      return 'TEXT'; // assuming dropdown values are stored as text
    default:
      return 'TEXT';
  }
};

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'views', 'index.html'));
});

// Endpoint para salvar a estrutura do formulário
app.post('/saveForm', [
  check('title').notEmpty().withMessage('O título é obrigatório'),
  check('fields').isArray().withMessage('Os campos devem ser uma lista')
], (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  const form = req.body;
  const tableName = formatName(form.title);

  const columns = form.fields.map(field => {
    const fieldType = mapHtmlTypeToSqliteType(field.type);
    return `${formatName(field.title)} ${fieldType}`;
  }).join(', ');

  const createTableQuery = `CREATE TABLE IF NOT EXISTS ${tableName} (id INTEGER PRIMARY KEY AUTOINCREMENT, ${columns})`;
  db.run(createTableQuery, (err) => {
    if (err) {
      console.error('Erro ao criar a tabela:', err);
      res.status(500).json({ message: 'Erro ao criar a tabela' });
    } else {
      res.status(200).json({ message: 'Formulário salvo com sucesso!' });
    }
  });
});

// Endpoint para inserir dados no formulário
app.post('/submitForm', [
  check('formTitle').notEmpty().withMessage('O título do formulário é obrigatório'),
  check('formData').isObject().withMessage('Os dados do formulário devem ser um objeto')
], (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  const { formTitle, formData } = req.body;
  const tableName = formatName(formTitle);

  // Verificar se a tabela existe
  const checkTableQuery = `SELECT name FROM sqlite_master WHERE type='table' AND name='${tableName}'`;
  db.get(checkTableQuery, (err, row) => {
    if (err) {
      console.error('Erro ao verificar a tabela:', err);
      return res.status(500).json({ message: 'Erro ao verificar a tabela' });
    }

    if (!row) {
      return res.status(400).json({ message: 'A tabela não existe' });
    }

    // Inserir os dados na tabela
    const columns = Object.keys(formData).map(field => formatName(field)).join(', ');
    const values = Object.values(formData).map(value => `'${value}'`).join(', ');

    const insertDataQuery = `INSERT INTO ${tableName} (${columns}) VALUES (${values})`;
    db.run(insertDataQuery, (err) => {
      if (err) {
        console.error('Erro ao inserir dados:', err);
        res.status(500).json({ message: 'Erro ao inserir dados' });
      } else {
        res.status(200).json({ message: 'Dados inseridos com sucesso!' });
      }
    });
  });
});

// Endpoint para remover um formulário
app.post('/removeForm', [
  check('formTitle').notEmpty().withMessage('O título do formulário é obrigatório')
], (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  const { formTitle } = req.body;
  const tableName = formatName(formTitle);

  const dropTableQuery = `DROP TABLE IF EXISTS ${tableName}`;
  db.run(dropTableQuery, (err) => {
    if (err) {
      console.error('Erro ao remover a tabela:', err);
      res.status(500).json({ message: 'Erro ao remover a tabela' });
    } else {
      res.status(200).json({ message: 'Formulário removido com sucesso!' });
    }
  });
});

// Endpoint para obter todos os formulários salvos
app.get('/getForms', (req, res) => {
  const getTablesQuery = `SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%'`;
  db.all(getTablesQuery, (err, rows) => {
    if (err) {
      console.error('Erro ao obter os formulários:', err);
      res.status(500).json({ message: 'Erro ao obter os formulários' });
    } else {
      const forms = rows.map(row => row.name);
      res.status(200).json({ forms });
    }
  });
});

// Endpoint para obter os detalhes dos campos dos formulários salvos
app.get('/getFormDetails', (req, res) => {
  const { formTitle } = req.query;
  const tableName = formatName(formTitle);

  const getColumnsQuery = `PRAGMA table_info(${tableName})`;
  db.all(getColumnsQuery, (err, rows) => {
    if (err) {
      console.error('Erro ao obter os detalhes do formulário:', err);
      res.status(500).json({ message: 'Erro ao obter os detalhes do formulário' });
    } else {
      const fields = rows.map(row => ({ title: row.name, type: row.type }));
      res.status(200).json({ formTitle, fields });
    }
  });
});

app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});