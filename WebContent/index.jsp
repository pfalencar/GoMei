<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta  charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="resources/styles/styles.css"/>
    <link rel="stylesheet" type="text/css" href="resources/styles/nav.css"/>
    <link rel="stylesheet" type="text/css" href="resources/styles/index.css"/>
    <link rel="stylesheet" type="text/css" href="resources/styles/forms.css"/>
    <title>Index - Go! MEI</title>    
  </head>
  
  <body>
    <div class="header">
      <div class="conexao">
       <a  href="Login.jsp">Entrar</a>
       <a  href="CadastroUsuario.jsp">Cadastrar</a>
      </div>
      <a class="logo" href="index.jsp"><h1>Go! MEI</h1></a>
      <ul>
        <li><a href="#home"><b>Home</b></a></li>
        <li><a href="#sobre"><b>Sobre</b></a></li>
        <li><a href="#funcionalidades"><b>Funcionalidades</b></a></li>
        <li><a href="#contato"><b>Contato</b></a></li>
      </ul>  
    </div>
    
    <div class="row">
      <div class="col-3 col-s-3 menu"></div>
      <div class="col-6 col-s-9"> 					
		<h1>Go! MEI - Sistema de Venda Online para MEI</h1>
		<p>
          O Go! MEI � um sistema de controle de venda online para MicroEmpreendedor Individual que ajuda a organizar e acompanhar as vendas. O usu�rio consegue acessar o 
				sistema de qualquer lugar, seja em smartphone, tablet ou desktop.
		</p>
		<p> 
          � o sistema ideal para o microempreendedor individual que lida com fluxo di�rio de clientes,
				precisa realizar vendas r�pidas e oferecer um bom atendimento. com ele o microempreendedor ter� mais 
				agilidade para dar baixa no estoque sempre que um produto � vendido. 
		</p>
        <h3>O que o sistema abrange:</h3>
        <p>- realiza��o de vendas;</p>
        <p>- baixa autom�tica no estoque;</p>
        <p>- emitir relat�rios de vendas, produtos e clientes.</p>
        					
		<h2 id="sobre">Sobre</h2>
		<p>
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>		
		
		<h2 id="funcionalidades">Funcionalidades</h2>
		<h3>Controle de vendas:</h3>
		<p> o sistema para controle de venda Go! MEI possibilita a organiza��o e acompanhamento das vendas.</p>
		
		<h3>Controle de estoque:</h3>
		<p> atualiza��o autom�tica no estoque dos produtos que foram vendidos. Prever demandas de renova��o de estoque</p>
		
		<h3>Controle de clientes:</h3>
		<p> tal funcionalidade permite que a pr�xima venda ocorra com maior agilidade. Al�m disso, � poss�vel gerar relat�rios sobre seus clientes e entender quem esta devendo e outras informa��es relevantes ao seu neg�cio.</p>
		
		<h3>Relat�rios:</h3>
		<p>- Essas informa��es s�o muito importante para o planejamento estrat�gico da sua empresa.</p>
        <p>- quais foram os produtos que mais tiveram sa�da;</p>
        <p>- quais foram os clientes que mais compraram;</p>
        
        <p>- vendas por periodo</p>
        <p>- produtos ou servi�os que foram vendidos no dia</p>
        
        <p>- Al�m de acessar informa��es da empresa em tempo real, a qualquer momento</p>
					
		<h2 id="contato">Contato</h2>
		<p></p>
    
		<form action="contatoindex.php">
          <div class="container">
        
            <label for="fname">Nome</label>
            <input type="text" id="name" name="name" placeholder="Digite seu nome...">
        
            <label for="lemail">E-mail</label>
            <input type="text" id="email" name="email" placeholder="Digite seu E-mail...">
        
            <label for="sexo">Sexo</label>
            <select id="sexo" name="sexo">
              <option value="feminino">Feminino</option>
              <option value="masculino">Masculino</option>
              <option value="empresa">Empresa</option>
            </select>
        
            <label for="subject">Mensagem</label>
            <textarea id="subject" name="subject" placeholder="Escreva Algo..." style="height:200px"></textarea>
        	
        	 <input type="submit" value="Enviar">        
          </div>
        </form>
  
    </div>
  </div>

  <div class="footer">
    <p>Copyright � 2021 Go! Mei</p>
  </div>
  
 </body>
</html>