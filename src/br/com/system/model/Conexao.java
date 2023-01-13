package br.com.system.model;

import static java.lang.System.out;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexao {
	
	private Connection connection;
	private Statement statement;
	private ResultSet rs;
	
	public void execute() {
		 try {
			  
	            String connectionURL = "jdbc:mysql://localhost/netlab";           
	            this.connection = null;
	            this.statement = null;
	            this.rs = null;
	        
	            this.connection = DriverManager.getConnection(connectionURL, "root", "admin");
	            this.statement = this.connection.createStatement();
	            String SQLQuery = "SELECT id, descricao, login from usuario";
	            this.rs = statement.executeQuery(SQLQuery);
	                       
	            while (this.rs.next()) {           
	             	int id = this.rs.getInt("id");
	             	String descricao = this.rs.getString("descricao");
	             	String login = this.rs.getString("login");
	             
	        		out.println(id + " " + descricao +	" " + login + "<br />");
				}
				
				this.statement.close(); 
	            this.connection.close();
	  }
	  catch(SQLException e) {
	    out.println("SQLException caught: " +e.getMessage());
	  }

	}
}
