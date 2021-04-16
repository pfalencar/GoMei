<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport"
  content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="resources/styles/styles.css" />
<link rel="stylesheet" type="text/css" href="resources/styles/formContact.css" />
<link rel="stylesheet" type="text/css" href="resources/styles/logo.css" />
<link rel="stylesheet" type="text/css" href="resources/styles/painel.css" />
<title>Acesso Liberado - HOME - Go! MEI</title>
</head>

<body>

  <div class="header">
    <div class="conexao">
      <a href="Login.jsp"><b>Sair</b></a>
    </div>
    <h2>
      Ol�, <a class="logo" href="Home.jsp"><c:out
          value="${usuario.nomeUsuario}"></c:out>!</a>
    </h2>
    <a class="logo" href="index.php"><h1>Go! MEI</h1></a>
  </div>

  <div class="row">
    <div class="col-3 col-s-3 menu">
      <ul>
        <li class="dropdown"><a href="" class="dropbtn">Cat�logo</a>
          <div class="dropdown-content">
            <a href="PesquisaEstoque.php">Estoque</a> <a
              href="PesquisaServico.php">Servi�os</a>
          </div></li>
        <li class="dropdown"><a href="" class="dropbtn">Vendas</a>
          <div class="dropdown-content">
            <a href="PesquisaVendaServico.php">Vendas de Servi�os</a> <a
              href="PesquisaVendaProduto.php">Vendas de Produtos</a> <a
              href="PesquisaCliente.php">Clientes</a>
          </div></li>
        <li class="dropdown"><a href="" class="dropbtn">Compras</a>
          <div class="dropdown-content">
            <a href="PesquisaCompra.php">Compras</a> <a
              href="PesquisaFornecedor.php">Fornecedores</a>
          </div></li>
        <li class="dropdown"><a href="" class="dropbtn">Funcion�rios</a>
          <div class="dropdown-content">
            <a href="PesquisaFuncionario.php">Funcion�rios</a> <a
              href="PesquisaContrato.php">Contratos</a>
          </div></li>

        <!--<a href="#">Relat�rios</a>-->

        <li class="dropdown"><a href="" class="dropbtn">Configura��es</a>
          <div class="dropdown-content">
            <a href="edit_mei.php">Meus Dados</a> <a href="usuario.php">Usu�rio</a>
            <a href="logout.php">Sair</a>
          </div></li>

      </ul>
    </div>


    <div class="col-6 col-s-9">
      <div class="container">
        <p>
          <b>Organize e acompanhe suas vendas em um s� lugar, Efetue
            agora uma nova venda de Servi�o!</b>
        </p>
        <a href="CadVendaServico.php">
          <figure>
            <img width="100" src="resources/imagens/service.png" alt="servi�o">
            <br>
            <br>
            <figcaption>
              <b>Nova Venda de Servi�o</b>
            </figcaption>
          </figure>
        </a>
      </div>
      <div class="container">
        <p>
          <b>Organize e acompanhe suas vendas em um s� lugar, Efetue
            agora uma nova venda de Produto!</b>
        </p>
        <a href="CadVendaProduto.php">
          <figure>
            <img width="100" src="resources/imagens/nova_venda.png" alt="produto">
            <br>
            <br>
            <figcaption>
              <b>Nova Venda de Produto</b>
            </figcaption>
          </figure>
        </a>
      </div>
      <div class="container">

        <a href="resumo.php">
          <p>
            <b>Em Resumo Di�rio voc� encontra v�rias informa��es s�o
              muito importantes para o planejamento estrat�gico da sua
              empresa.</b>
          </p>
          <figure>
            <img width="100" src="resources/imagens/resumo_financeiro.png"
              alt="finan�as">
            <br>
            <br>
            <figcaption>
              <b>Resumo Di�rio</b>
            </figcaption>
          </figure>
        </a>

      </div>
    </div>
  </div>
    <div class="footer">
      <p>Copyright � 2021 Go! MEI</p>
    </div>
</body>
</html>