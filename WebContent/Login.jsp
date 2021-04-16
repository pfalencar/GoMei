<jsp:useBean id="beangomei" class="beans.Usuario" type="beans.Usuario"
  scope="page" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>
<title>Login - Go! MEI</title>
<meta charset="ISO-8859-1" name="viewport"
  content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
  href="resources/styles/styles.css" />
<link rel="stylesheet" type="text/css" href="resources/styles/forms.css" />
</head>

<body>
  <div class="header">
    <a class="logo" href="index.jsp"><h1>Go! MEI</h1></a>
  </div>
  <div class="row">
    <div class="col-3 col-s-3 menu"></div>
    <div class="col-6 col-s-9">

      <form action="UsuarioServlet" method="POST">

        <div class="container">
          <h2>Entre</h2>
          <h3>${msg}</h3>
          <hr>
          <label for="email"><b>Email</b></label> 
          <input type="email" placeholder="Informe o email" name="email" id="email" required> 
          <label for="psw"><b>Senha</b></label> 
          <input type="password" placeholder="Informe a senha" name="senha" id="senha" required>
          <hr>
          <p>
            <!--  <a href="UsuarioServlet?acao=recuperaSenha&user=${user.id}">Esqueceu
              a senha?</a> -->
          </p>
          <button type="submit" class="registerbtn">Entrar</button>
        </div>

        <div class="container signin">
          <a href="CadastroUsuario.jsp"> Não é cadastrado? Cadastre-se! </a>
        </div>

      </form>

      <br>
      <br> <br>
      <br> <br>
    </div>
  </div>
  <div class="footer">
    <p>Copyright © 2021 Go! MEI</p>
  </div>
</body>
</html>