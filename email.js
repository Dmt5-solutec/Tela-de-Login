const express = require('express');
const bodyParser = require('body-parser');
const crypto = require('crypto');
const cors = require('cors');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(bodyParser.json());
app.use(cors());

// Configuração do Nodemailer
const transporter = nodemailer.createTransport({
  service: 'gmail', // ou o serviço de e-mail que você estiver usando
  auth: {
    user: 'douglaspangarosilva@gmail.com',
    pass: '123456'
  }
});

// Simulação de banco de dados em memória
const registeredEmails = ['user1@example.com', 'user2@example.com'];
const resetTokens = {}; // token: email

app.post('/send-reset-email', (req, res) => {
  
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
