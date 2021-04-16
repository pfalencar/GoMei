package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoUsuario;

@WebServlet("/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DaoUsuario daoUsuario = new DaoUsuario();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			String email = request.getParameter("email");
			String senha = request.getParameter("senha");
			String acao = request.getParameter("acao");
			
			if ( acao == null || ( acao != null && !acao.equalsIgnoreCase("recuperaSenha") ) ) {
				
				if ( (email == null || (email != null && email.isEmpty()))
						|| (senha == null || (senha != null && senha.isEmpty()))) {
					// acesso negado
					RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
					dispatcher.forward(request, response);

				} else {

					if (daoUsuario.validarUsuario(email, senha)) { // acesso liberado
						RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
						dispatcher.forward(request, response);
					} else { // acesso negado
						RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
						dispatcher.forward(request, response);
					}

				}
				
			} else if ( acao != null && !acao.equalsIgnoreCase("recuperaSenha") ) {
				System.out.println("Código para recuperar senha!");
			}

			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
