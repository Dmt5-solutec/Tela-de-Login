const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const sqlite3 = require('sqlite3').verbose();
const cors = require('cors');
const nodemailer = require('nodemailer');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

const db = new sqlite3.Database('./db/SolarMeninosDeLuz.db');

const app = express();
const port = 3000;

app.use(express.json());
app.use(cors({
  methods: ['GET', 'POST'],
  allowedHeaders: ['Content-Type']
}));
app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'views')));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'index.html'));
});

app.get('/index', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'index.html'));
});

function verificarToken(req, res, next) {
    const authHeader = req.headers['authorization'];
    console.log('Authorization Header:', authHeader); // Adicionado para verificar

    if (!authHeader) {
        return res.status(403).json({ message: 'Token não fornecido.' });
    }

    const token = authHeader.split(' ')[1];
    console.log('Token:', token); // Adicionado para verificar

    jwt.verify(token, 'seuSegredoJWT', (err, decoded) => {
        if (err) {
            return res.status(403).json({ message: 'Token inválido.' });
        }

        req.email = decoded.email;
        next();
    });
}



app.get('/menu', (req, res) => {
  
          res.sendFile(path.join(__dirname, 'views', 'menu.html'));
      }
  );


app.get('/tabelaDados', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'table.html'));
});

app.get('/dashboard', verificarToken, (req, res) => {
    
    res.redirect('http://127.0.0.1:5000/dashboard');
});

const createConsolidatedTable = () => {
    db.serialize(() => {
        db.run(`CREATE TABLE IF NOT EXISTS Consolidado (
            matricula TEXT PRIMARY KEY,
            nome TEXT,
            dataNascimento DATE,
            genero TEXT,
            anoEntrada INTEGER,
            serie TEXT,
            segmento TEXT,
            anoLetivo INTEGER,
            oficina TEXT,
            trilhaTecnologica TEXT,
            resultado TEXT
        )`, (err) => {
            if (err) {
                console.error('Erro ao criar a tabela Consolidado:', err.message);
            } else {
                populateConsolidatedTable();
            }
        });
    });
};

const populateConsolidatedTable = () => {
    const selectSql = `
        SELECT
            a.matricula,
            a.nome,
            a.dataNascimento,
            a.genero,
            a.anoEntrada,
            t.serie,
            t.segmento,
            t.anoLetivo,
            ac.oficina,
            tt.nome AS trilhaTecnologica,
            c.resultado
        FROM Alunos a
        LEFT JOIN Certificado c ON a.matricula = c.matricula
        LEFT JOIN Turmas t ON c.idTurma = t.idTurma
        LEFT JOIN Atividades at ON a.matricula = at.matricula
        LEFT JOIN AtividadeComplementar ac ON at.codigoAtividade = ac.codigo
        LEFT JOIN AtividadeTrilha atr ON a.matricula = atr.codigoAluno
        LEFT JOIN TrilhasTecnologicas tt ON atr.codigoTrilha = tt.codigo;
    `;

    db.all(selectSql, [], (err, rows) => {
        if (err) {
            console.error('Erro ao selecionar dados:', err.message);
            return;
        }

        const insertSql = `
            INSERT OR REPLACE INTO Consolidado (
                matricula, nome, dataNascimento, genero, anoEntrada,
                serie, segmento, anoLetivo, oficina, trilhaTecnologica, resultado
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
        `;

        rows.forEach(row => {
            db.run(insertSql, [
                row.matricula, row.nome, row.dataNascimento, row.genero, row.anoEntrada,
                row.serie, row.segmento, row.anoLetivo, row.oficina, row.trilhaTecnologica, row.resultado
            ], (err) => {
                if (err) {
                    console.error('Erro ao inserir dados na tabela Consolidado:', err.message);
                }
            });
        });
    });
};

createConsolidatedTable();

app.get('/consolidado', (req, res) => {
    const sql = 'SELECT * FROM Consolidado';
    db.all(sql, [], (err, rows) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json({ data: rows });
    });
});

app.post('/add-member', (req, res) => {
  const { nome, dataNascimento, genero, email, senha, acesso } = req.body;

  if (!nome || !dataNascimento || !genero || !email || !senha || !acesso) {
      return res.status(400).send('Todos os campos são obrigatórios.');
  }

  bcrypt.hash(senha, 10, (err, hash) => {
    if (err) {
        console.error('Erro ao criptografar a senha:', err);
        return;
    }
    const query = `INSERT INTO Funcionarios (nome, email, senha, acesso) VALUES (?, ?, ?, ?)`;
    db.run(query, [nome, email, hash, acesso], function (err) {
        if (err) {
            console.error('Erro ao inserir no banco de dados:', err.message);
            res.status(500).send('Erro ao adicionar membro');
        } else {
            console.log('Usuário adicionado com sucesso.');
            res.status(200).send('Usuário adicionado com sucesso.');
        }
    });
});
});

const getUserByEmail = async (email) => {
    return new Promise((resolve, reject) => {
        db.get('SELECT * FROM Funcionarios WHERE email = ?', [email], (err, row) => {
            if (err) {
                return reject(err);
            }
            resolve(row);
        });
    });
};

app.post('/login', async (req, res) => {
  const { email, senha } = req.body;

  try {
      const user = await getUserByEmail(email);

      if (!user) {
          return res.status(404).json({ message: 'Usuário não encontrado' });
      }

      const match = await bcrypt.compare(senha, user.senha);

      if (!match) {
          return res.status(403).json({ message: 'Senha incorreta' });
      }

      // Senha correta, autentique o usuário
      const token = jwt.sign({ email: user.email, acesso: user.acesso }, 'seuSegredoJWT', { expiresIn: '1h' });

      res.json({ message: 'Login bem-sucedido', token });
  } catch (error) {
      console.error('Erro interno do servidor:', error);
      res.status(500).json({ message: 'Erro interno do servidor' });
  }
});


const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: 'juangomes.sales@gmail.com',
        pass: 'ntad spqc mesk zgah'
    }
});

app.post('/sendresetemail', (req, res) => {
    const { email } = req.body;

    console.log('Recebendo solicitação para /sendresetemail');
    console.log('Email recebido:', email);

    db.get('SELECT email, senha FROM Funcionarios WHERE email = ?', [email], (err, row) => {
        if (err) {
            console.error('Erro ao consultar o banco de dados:', err.message);
            return res.status(500).json({ message: 'Erro no servidor' });
        }

        if (row) {
            console.log('Email encontrado no banco de dados:', row.email);

            const storedPassword = row.senha;

            const mailOptions = {
                from: 'solatmeninosdeluz@gmail.com',
                to: email,
                subject: 'Detalhes da Conta',
                text: `Você solicitou uma redefinição de senha. Sua senha atual é: ${storedPassword}`
            };

            transporter.sendMail(mailOptions, (error, info) => {
                if (error) {
                    console.error('Erro ao enviar e-mail:', error);
                    return res.status(500).json({ message: 'Erro ao enviar e-mail' });
                }
                console.log('Email enviado: ' + info.response);
                res.json({ message: 'E-mail com a senha atual enviado com sucesso!' });
            });
        } else {
            console.log('Email não encontrado no banco de dados:', email);
            res.status(404).json({ message: 'E-mail não encontrado' });
        }
    });
});

app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
});
