package br.com.system.logic;
/*
 * Autor Prof: Jefferson de Sousa Silva
 */


import java.util.ArrayList;
import java.util.List;

import br.com.system.util.GetParameter;

public class DefaultLogic {
	
	protected GetParameter req;
	
	
	protected List<String> mensagensErro = new ArrayList<String>();
	
	protected List<String> mensagensSucesso = new ArrayList<String>();
	
	protected List<Object> dtos;
	
	protected String msgErro;
	
	protected String msgSucesso;
	
	public void formulario() throws Exception{}	
	
	public List<Object> getDtos() {return dtos;}
	
	public DefaultLogic(){mensagensErro.clear();mensagensSucesso.clear();}

	public List<String> getMensagensErro() {return mensagensErro;}

	public List<String> getMensagensSucesso() {return mensagensSucesso;}
	
	public String getMsgSucesso() { return this.msgSucesso;}
	
	public String getMsgErro() {return this.msgErro;}

}


	
