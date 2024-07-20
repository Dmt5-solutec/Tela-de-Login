const express = require('express');
const nodemailer = require('nodemailer');
const bodyParser = require('body-parser');
const crypto = require('crypto');
const cors = require('cors');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(bodyParser.json());
app.use(cors());

// Configuração do Nodemailer
const transporter = nodemailer.createTransport({
  service: '', //  serviço de e-mail que você estiver usando
  auth: {
    user: '',
    pass: ''
  }
});

// Simulação de banco de dados em memória
const registeredEmails = ['user1@example.com', 'user2@example.com'];
const resetTokens = {}; // token: email

app.post('/send-reset-email', (req, res) => {
  const { email } = req.body;

  if (!registeredEmails.includes(email)) {
    return res.status(400).send('Email não registrado');
  }

  const resetToken = crypto.randomBytes(32).toString('hex');
  resetTokens[resetToken] = email;

  const resetURL = `http://localhost:3000/reset-password?token=${resetToken}`;

  const mailOptions = {
    from: 'seu-email@gmail.com',
    to: email,
    subject: 'Redefinição de Senha',
    text: `Clique no link para redefinir sua senha: ${resetURL}`
  };

  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      return res.status(500).send('Erro ao enviar o e-mail de redefinição');
    }
    res.status(200).send('E-mail de redefinição enviado com sucesso');
  });
});

app.post('/reset-password', (req, res) => {
  const { token, newPassword } = req.body;

  const email = resetTokens[token];
  if (!email) {
    return res.status(400).send('Token inválido ou expirado');
  }

  // Aqui você deve atualizar a senha no banco de dados
  // Por exemplo: updateUserPassword(email, newPassword);
  // Para este exemplo, apenas simule a atualização
  delete resetTokens[token];

  res.status(200).send('Senha redefinida com sucesso');
});

app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
