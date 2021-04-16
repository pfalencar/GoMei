package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//Classe responsável por fazer a conexão com o BD

public class SingleConnection {

	private static String banco = "jdbc:postgresql://localhost:5432/gomei?autoReconnect=true";
	private static String user = "postgres";
	private static String password = "admin";
	private static Connection connection = null;

	static {
		conectar();
	}

	public SingleConnection() {
		conectar();
	}

	private static void conectar() {
		
			if (connection == null) {
				try {
					//Carrega o driver especificado
					Class.forName("org.postgresql.Driver");
					
				} catch (ClassNotFoundException e) {
					System.out.println("Driver não encontrado!"+e);
				}				
				try {
					connection = DriverManager.getConnection(banco, user, password);
				} catch (SQLException e) {
					System.out.println("Banco, usuário ou senha incorretos!" + e);
					e.printStackTrace();
				}
				try {
					connection.setAutoCommit(false);
				} catch (SQLException e) {
					System.out.println("Erro no commit ao conectar!" + e);
					e.printStackTrace();
				}
			}
		
		}
	
	
	public static Connection getConnection() {
		return connection;		
	}
}
