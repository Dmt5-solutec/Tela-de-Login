const http = require("http");
const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const bcrypt = require("bcrypt");
const crypto = require('crypto');
const jwt = require("jsonwebtoken");
const { LocalStorage } = require("node-localstorage");
const cors = require('cors');
const nodemailer = require('nodemailer');
const resetTokens = [];    
// Usar o middleware cors
app.use(cors());
app.use(bodyParser.json());

const localStorage = new LocalStorage("./scratch");

const SECRET_KEY = "your_secret_key"; // Troque para uma chave secreta segura

// GET endpoint para retornar todos os usuários
app.get('/users', (req, res) => {
  const users = getUsers();
  console.log(users);
  res.json(users);
});

// Função para obter usuários do localStorage
function getUsers() {
  const users = localStorage.getItem("users");
  return users ? JSON.parse(users) : [];
}

// Função para salvar usuários no localStorage
function saveUsers(users) {
  localStorage.setItem("users", JSON.stringify(users));
}

// POST endpoint para adicionar um novo usuário
app.post("/users", async (req, res) => {
  try {
    const hashedPassword = await bcrypt.hash(req.body.password, 10);
    const users = getUsers();
    const newUser = {
      id: users.length + 1,
      name: req.body.name,
      email: req.body.email,
      password: hashedPassword
    };

    users.push(newUser);
    saveUsers(users);
    res.status(201).send();
  } catch (error) {
    console.error("Erro ao criar usuário:", error);
    res.status(500).send("Erro ao criar usuário");
  }
});

// POST endpoint para login
app.post("/loginws", async (req, res) => {
  const users = getUsers();
  const user = users.find(user => user.email === req.body.email);
 

  if (user == null) {
    console.log("Usuário não encontrado");
    return res.status(400).send('Usuário não encontrado');
  }

  try {
    if (await bcrypt.compare(req.body.password, user.password)) {

    const token = jwt.sign({ name: user.name, email: user.email }, SECRET_KEY, { expiresIn: '1h' });
     return res.json({ message: "Logged in successfully", token });
    } else {
      console.log("Senha incorreta");
     return res.status(403).send('Senha incorreta');
    }
  } catch (error) {
    console.error("Erro ao fazer login:", error);
    return res.status(500).send("Erro ao fazer login");
  }
});

app.post('/sendresetemail', async (req, res) => {

  console.log("entrou no metodo resetar senha");
  const users = getUsers();
  const user = users.find(user => user.email === req.body.email);

  if (!user) {
    console.log("Usuário não encontrado!");
    return res.status(400).send('Usuário não encontrado');
  }

  try {
    const { email } = req.body;
    const resetToken = crypto.randomBytes(32).toString('hex');
    resetTokens[resetToken] = email;

    const resetURL = `http://localhost:3000/reset-password?token=${resetToken}`;

    const transporter = nodemailer.createTransport({
      host: 'smtp.ethereal.email',
      port: 587,
      secure: false, // true for 465, false for other ports
      auth: {
        user: "marco.kulas@ethereal.email", // usuário gerado pelo Ethereal
        pass: "YrKE42M3yHkMmVbFRQ"  // senha gerada pelo Ethereal
      }
    });

    const mailOptions = {
      from: 'marco.kulas@ethereal.email',
      to: email,
      subject: 'Redefinição de Senha',
      text: `Clique no link para redefinir sua senha: ${resetURL}`
    };

    transporter.sendMail(mailOptions, (error, info) => {
      if (error) {
        console.error("Erro ao enviar o e-mail de redefinição:", error);
        return res.status(500).send('Erro ao enviar o e-mail de redefinição');
      }
      return res.json({ message: "E-mail de redefinição enviado com sucesso"});
    });
  } catch (error) {
    console.error("Erro ao processar a solicitação de redefinição de senha:", error);
    return res.status(500).send('Erro ao processar a solicitação de redefinição de senha');
  }
});

app.listen(3000, () => {
  console.log("Servidor rodando na porta 3000");
});
