package br.com.system.main;

import org.hibernate.cfg.*;
import org.hibernate.tool.hbm2ddl.SchemaExport;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Main{
	public static void main(String[] args) {
		 try {
			  
	            String connectionURL = "jdbc:mysql://mysql-ag-br1-15.hospedagemelastica.com.br:3306/qfqdkj_demo";           
	            Connection connection = null;
	            Statement statement = null;
	            ResultSet rs = null;
	        
	            connection = DriverManager.getConnection(connectionURL, "qfqdkj_demo", "n25ymrmf13");
	            statement = connection.createStatement();
	            String SQLQuery = "SELECT id, descricao, status from tipolaudo";
	            rs = statement.executeQuery(SQLQuery);
	                       
	            while (rs.next()) {           
	             	long id = rs.getLong("id");
	             	String descricao = rs.getString("descricao");
	             	int status = rs.getInt("status");
	             
	        		System.out.println(id + " " + descricao +	" " + status );
				}
				
				statement.close(); 
	            connection.close();
	  }
	  catch(SQLException e) {
		  System.out.println("SQLException caught: " +e.getMessage());
	  }
}
	
}
