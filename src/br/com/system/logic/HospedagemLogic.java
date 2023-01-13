package br.com.system.logic;


import java.sql.ResultSet;
import java.util.List;

import org.vraptor.annotations.Component;
import org.vraptor.annotations.InterceptedBy;
import org.vraptor.annotations.Out;
import org.vraptor.scope.ScopeType;

import br.com.system.bo.HospedagemBO;
import br.com.system.dao.AutorizadorInterceptor;
import br.com.system.dao.Dao;
import br.com.system.dao.DaoInterceptor;
import br.com.system.model.Configuracao;
import br.com.system.model.Hospedagem;

@Component
@InterceptedBy({AutorizadorInterceptor.class, DaoInterceptor.class})
public class HospedagemLogic {
	private List<Hospedagem> listaHospedagem;
	private Hospedagem hospedagem;
	private HospedagemBO bo;
	private String msgErro;
	private String msgSucesso;

	private List<Object> listaConf;
	
	private List<ResultSet> listaResultSet;
	
	private final Dao dao;
	
	
	public HospedagemLogic(Dao factoryDao) {
		this.dao = factoryDao;
		this.bo = new HospedagemBO(dao);
	}
	


	public List<Object> getListaConf() {
		return listaConf;
	}

	
	@Out(scope=ScopeType.SESSION)
	public List<ResultSet> getListaResultSet() {
		return this.listaResultSet;
	}
	
	public void setListaResultSet(List<ResultSet> listaResultSet) {
		this.listaResultSet = listaResultSet;
	}


	public void formulario() {
		this.listaConf = dao.listaTudo(Configuracao.class);
	}

	public String listar(Hospedagem dto) {
		String destino = (dto.getDestino() != null && dto.getDestino().equals(1) ? "img" : "ok");
		this.hospedagem = dto;
		try {
			this.listaHospedagem = bo.lista(dto);
			return destino;
		}catch(Exception e) {
			this.msgErro = e.getMessage();
			return "invalid";
		}
		
	}

	public Hospedagem getHospedagem() {
		return hospedagem;
	}



	public void setHospedagem(Hospedagem hospedagem) {
		this.hospedagem = hospedagem;
	}


	public List<Hospedagem> getListaHospedagem() {
		return listaHospedagem;
	}


	public String getMsgErro() {
		return msgErro;
	}



	public void setMsgErro(String msgErro) {
		this.msgErro = msgErro;
	}



	public String getMsgSucesso() {
		return msgSucesso;
	}



	public void setMsgSucesso(String msgSucesso) {
		this.msgSucesso = msgSucesso;
	}
	
	public String salvar(Hospedagem dto) {
		try {
			this.hospedagem = bo.salvar(dto);
			this.msgSucesso = "registro salvo com sucesso";
			return "ok";
		}catch(Exception e) {
			this.hospedagem = dto;
			this.listaConf = dao.listaTudo(Configuracao.class);
			this.msgErro = e.getMessage();
			return "invalid";
		}
	}
	
	public String remover(Hospedagem dto) {
		try {
			bo.remover(dto);
			this.msgSucesso = "Registro deletado com sucesso!";
			return "ok";
		}catch(Exception e) {
			this.msgErro = e.getMessage();
			return "invalid";
		}
	}
	
	public void detalhes(Hospedagem dto) {
		this.hospedagem = (Hospedagem) bo.procurar(dto);
	}
	
	
	public void editar(Hospedagem dto) {
		this.hospedagem = (Hospedagem)bo.procurar(dto);
		this.listaConf = dao.listaTudo(Configuracao.class);
	}
	
	public void buscacomponente() {
		
	}
	
	
	public String sql(Hospedagem dto) {
		 try {
			 this.listaHospedagem = this.bo.pegarComponente(dto);
			 return "ok";
		 }catch(Exception e) {
			 this.msgErro = e.getMessage();
			 return "invalid";
		 }

	}
	
	public void resultset() {
		
	}
	
	public String resultSQL(Hospedagem dto) {
		try {
			this.listaResultSet = this.bo.pegarResultset(dto);
			this.hospedagem = dto;
			return "ok";
		}catch(Exception e) {
			this.msgErro = e.getMessage();
			return "invalid";
		}
	}
	
}

