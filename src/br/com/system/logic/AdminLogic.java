package br.com.system.logic;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.vraptor.annotations.Component;
import org.vraptor.annotations.In;
import org.vraptor.annotations.InterceptedBy;
import org.vraptor.annotations.Out;
import org.vraptor.annotations.Parameter;
import org.vraptor.scope.ScopeType;

import br.com.system.bo.UsuarioBO;
import br.com.system.dao.Dao;
import br.com.system.dao.DaoInterceptor;
import br.com.system.model.Usuario;
import br.com.system.test.LocalShell;
import br.com.system.util.Datas;
import org.apache.log4j.Logger;


@Component("admin")
@InterceptedBy(DaoInterceptor.class)
public class AdminLogic extends DefaultLogic {
	
	private static final Logger LOGGER = Logger.getLogger(LocalShell.class);
	
	private final Dao dao;
	
	private UsuarioBO bo;
	
	private List<Usuario> listaUsuarios;
	
	public AdminLogic(Dao daoFactory) {
		this.dao = daoFactory;
		this.bo = new UsuarioBO(new Dao());
	}
	
	private Usuario logado ;
	
	@In protected HttpServletRequest request;
	
	private String diaatual;
	
	private String mesatual;
	
	private boolean administrador;
	
	private boolean superUser;
	
	private String anoatual;
	
	
	
	
	private String ID_USUARIO;
	
	
	private String sistema = "NetLab";
	
	private Date hoje;
	
	@Parameter(create = true)
    private String msg;
	
	
	@Out(scope=ScopeType.SESSION)
	public Usuario getLogado() {
		return this.logado;
	}

	public void login() throws Exception{
		Datas dt = new Datas();
		diaatual = dt.getDiaMes();
		mesatual = dt.getNomeMes();
		anoatual = dt.getAno();
	}

	public String efetuaLogin(Usuario usuario ) {
		try {
			this.logado = bo.existeUnico(usuario);
			
			return "ok";
		} catch (Exception e) {
			this.msgErro= e.getMessage();
			return "invalid";
		}
	}
	
	
	public void logout() {
		this.logado  = null;
	}
	
	
	public void formCadastro() {
		
	}
	
	public String salvar(Usuario usuario) {
		try {
			this.logado = bo.salvar(usuario);
			this.msgSucesso = "Registro salvo com sucesso!";
			return "ok";
			
		}catch(Exception e) {
			this.msgErro = e.getMessage();
			return "invalid";
		}
	}
	

	public void remover(Usuario dto) {
		try {
			this.bo.remover(dto);
			this.msgSucesso = "registro removido";
		}catch(Exception e) {
			this.msgErro = e.getMessage();
		}
	}
	
	public void editar(Usuario usuario) {
		this.logado = bo.procura(usuario);
	}
	
	public List<Usuario> getListaUsuarios(){
		return this.listaUsuarios;
	}
	
	public void lista() {
		this.listaUsuarios = this.bo.lista();
	}

	
	@Out(scope=ScopeType.SESSION)
	public String getAnoatual() {
		return anoatual;
	}

	@Out(scope=ScopeType.SESSION)
	public String getDiaatual() {
		return diaatual;
	}

	@Out(scope=ScopeType.SESSION)
	public String getMesatual() {
		return mesatual;
	}
	
	
	@Out(scope=ScopeType.SESSION)
	public boolean isAdministrador() {
		return administrador;
	}

	

	@Out(scope=ScopeType.SESSION)
	public String getSistema() {
		return sistema;
	}

	
	@Out(scope=ScopeType.SESSION)
	public Date getHoje() {
		return hoje;
	}
	
	@Out(scope=ScopeType.SESSION)
	public boolean isSuperUser() {
		return superUser;
	}

	
	
	public void serial() throws Exception{
		
	}
	
	@Out(scope=ScopeType.SESSION)
	public String getID_USUARIO() {
		return ID_USUARIO;
	}



	
	
	
}
	
