package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnection;

public class DaoUsuario {
	
	private static Connection connection;

	
	public DaoUsuario() {
		connection = SingleConnection.getConnection();  
	}

	public boolean validarUsuario(String email, String senha) throws Exception {
		String sql = "SELECT * FROM usuario WHERE  emailusuario='" + email + "' AND senhausuario='"+ senha + "'";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		if (rs.next()) {
			return true;
		} else {
			return false;
		}
	}
	

}
