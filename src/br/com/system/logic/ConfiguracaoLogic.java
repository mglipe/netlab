package br.com.system.logic;

import java.util.List;

import org.vraptor.annotations.Component;
import org.vraptor.annotations.InterceptedBy;

import br.com.system.bo.ConfiguracaoBO;
import br.com.system.dao.AutorizadorInterceptor;
import br.com.system.dao.Dao;
import br.com.system.dao.DaoInterceptor;
import br.com.system.model.Configuracao;

@Component
@InterceptedBy({AutorizadorInterceptor.class, DaoInterceptor.class})
public class ConfiguracaoLogic {
	
	private List<Object> listaConfiguracao;
	private Configuracao configuracao;
	private ConfiguracaoBO bo;
	private String msgErro;
	private String msgSucesso;
	
	private final Dao dao;
	
	public ConfiguracaoLogic(Dao factoryDao) {
		this.dao = factoryDao;
		this.bo = new ConfiguracaoBO(dao);
	}
	
	public void formulario() {
		
	}
	

	public List<Object> getListaConfiguracao() {
		return listaConfiguracao;
	}




	public void setListaConfiguracao(List<Object> dto) {
		this.listaConfiguracao = dto;
	}




	public Configuracao getConfiguracao() {
		return configuracao;
	}




	public void setConfiguracao(Configuracao dto) {
		this.configuracao = dto;
	}




	public String getMsgErro() {
		return msgErro;
	}




	public void setMsgErro(String dto) {
		this.msgErro = dto;
	}




	public String getMsgSucesso() {
		return msgSucesso;
	}




	public void setMsgSucesso(String dto) {
		this.msgSucesso = dto;
	}
	

	public String salvar(Configuracao dto){
		try {
			this.configuracao = bo.salvar(dto);
			this.msgSucesso = "registro salvo";
			return "ok";
		}catch(Exception e) {
			this.configuracao = dto;
			this.msgErro = e.getMessage();
			return "invalid";
		}
	}
	
	public String remover(Configuracao dto) {
		try {
			bo.remover(dto);
			this.msgSucesso = "registro removido com sucesso";
			return "ok";
		}catch(Exception e) {
			this.msgErro = e.getMessage();
			return "invalid";
		}
	}
	
	
	public void listar(Configuracao dto){
		this.configuracao = dto;
		try {
			this.listaConfiguracao = bo.lista(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			this.msgErro = e.getMessage();
		}
		
	}
	
	
	public void detalhes(Configuracao dto) {
		this.configuracao = bo.procurar(dto);
	}
	
	public void editar(Configuracao dto) {
		this.configuracao = bo.procurar(dto);
	}
	
}
