/*
 * Criado em 08/08/2005
 *
 * Para alterar o gabarito para este arquivo gerado vá para
 * Janela&gt;Preferências&gt;Java&gt;Geração de Códigos&gt;Código e Comentários
 */
 
package br.com.system.bd;

import java.sql.Connection;
import java.sql.SQLException;

import br.com.system.dao.Dao;
import br.com.system.util.HibernateUtil;


public class Pool {

    public  Connection getConexao() throws SQLException { 
    	Connection con=null;
    	try {
    		con = HibernateUtil.getSession().connection();
        }catch (Exception e) {
	          throw new SQLException(e.getMessage());
        }
        return(con);
  }
      
public void liberar(Connection conexao)throws SQLException {
	conexao.close();
}

}


	
	
 /* 
		private Connection con;
		private String banco = null;
	 	private String driver = null;
	 	private String usuario = null;
	 	private String senha = null;

		public Pool(){
			banco = "jdbc:mysql://localhost/loja";
			driver = "com.mysql.jdbc.Driver";
			usuario = "root";
			senha = "root";
		
		}

		public Connection getConexao() throws Exception{
			
			try {
				  Class.forName(driver);
				  con = DriverManager.getConnection(banco,usuario,senha);//,"","");
				  //Statemant stmt = con.createStatement();
			} 
			catch (ClassNotFoundException ex) {
			  //System.out.println("Erro: "+e.getMessage());
			  throw new Exception(ex.toString());//"Erro na Conexao com o Banco!,\n driver não encontrado.");
			}
			catch (SQLException e) {
			  //System.out.println("Erro: "+e.getMessage());
			  throw new Exception(e.getMessage());//"Erro na Conexao com o Banco!,\n verifique usuario e senha.");
			}

		   return(con);
		}

		public void liberar(Connection con) throws Exception{
		  try{
		   con.close();
		  } catch (SQLException e) {
			 System.out.println("Erro: "+e.getMessage());
			throw new Exception("Erro ao fecha o Banco de Dados!");
		  }
		}

	 }
*/
