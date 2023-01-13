package br.com.system.logic;



import org.vraptor.annotations.Component;
import org.vraptor.annotations.InterceptedBy;

import br.com.system.dao.AutorizadorInterceptor;
import br.com.system.dao.Dao;
import br.com.system.dao.DaoInterceptor;
import br.com.system.model.Conexao;

import java.sql.*;
import static java.lang.System.out;




@Component
@InterceptedBy({AutorizadorInterceptor.class, DaoInterceptor.class})
public class MainLogic{


	private final Dao dao;
	private String msgSucesso;
	private String msgErro;
	private Conexao conexaoJDBC;
	

	public Dao getDao() {
		return dao;
	}


	public MainLogic(Dao daoFactory) {
		this.dao = daoFactory;
	}
	
	
	public String getMsgSucesso() {
		return msgSucesso;
	}



	public void setMsgSucesso(String msgSucesso) {
		this.msgSucesso = msgSucesso;
	}



	public String getMsgErro() {
		return msgErro;
	}



	public void setMsgErro(String msgErro) {
		this.msgErro = msgErro;
	}
   
	



	public void home()throws Exception  {

	}
	

}
