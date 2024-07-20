document.getElementById('uploadPhoto').addEventListener('change', function() {
      const file = this.files[0];
      if (file) {
          const reader = new FileReader();
          reader.onload = function(e) {
              document.getElementById('photoPreview').src = e.target.result;
          }
          reader.readAsDataURL(file);
      }
  });
  
  document.getElementById('addButton').addEventListener('click', function() {
      const firstName = document.getElementById('firstName').value;
      const lastName = document.getElementById('lastName').value;
      const email = document.getElementById('email').value;
      const phoneNumber = document.getElementById('phoneNumber').value;
      const position = document.getElementById('position').value;
      const gender = document.getElementById('gender').value;
  
      if (firstName && lastName && email && phoneNumber && position && gender) {
          alert('Team member added successfully!');
          //pode processar ainda mais os dados do formulário aqui
      } else {
          alert('Please fill out all fields.');
      }
  });
  //x x x x x x x x x

//   document.addEventListener("DOMContentLoaded", function() {
//     const allowedLogin = "admin@gmail.com";
//     const allowedPassword = "123456";

//     document.getElementById("loginButton").addEventListener("click", function() {
//         const userLogin = document.getElementById("loginEmail").value;
//         const userPassword = document.getElementById("loginPassword").value;

//         if (userLogin === allowedLogin && userPassword === allowedPassword) {
//             alert("Login bem-sucedido!");
//             sessionStorage.setItem("userLogin", userLogin);
//             window.location.href = "cadastroMembro.html";
//         } else {
//             alert("Acesso negado! Verifique suas credenciais.");
//         }
//     });

//     // Verifica o login na sessão ao carregar a página
//     const currentLogin = sessionStorage.getItem("userLogin");
//     if (currentLogin !== allowedLogin) {
//         document.getElementById("teamMemberForm").style.display = "none";
//         alert("Você não tem permissão para acessar esta página.");
//         window.location.href = "index.html"; // Redireciona para a página de login
//     }

//     document.getElementById("sair").addEventListener("click", function(event) {
//         if (!confirm('Pressione "OK" se deseja realmente sair.')) {
//             event.preventDefault();
//         } else {
//             sessionStorage.removeItem("userLogin");
//             window.location.href = "index.html"; // Redireciona para a página de login (index.html)
//         }
//     });
// });
