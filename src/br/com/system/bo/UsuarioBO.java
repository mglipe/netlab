package br.com.system.bo;



import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.vraptor.annotations.Out;
import org.vraptor.scope.ScopeType;

import br.com.system.dao.Dao;
import br.com.system.model.Usuario;

public class UsuarioBO {
	
	private List<Usuario> listaUsuario;
	
	private Dao dao;
	
	private Usuario usuario;
	
	public UsuarioBO(Dao dao) {
		this.dao = dao;
	}
	

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	
	public List<Usuario> getListaUsuario(){
		return this.listaUsuario;
	}
	
	
	public Usuario salvar(Usuario usuario) throws Exception{
	
		try {
			
			if(!usuario.getSenhaForm().equals(usuario.getConfirmaSenha())) {
				throw new Exception("Confirmação de senha invalida!");
			}					
			Integer senha = usuario.getSenhaForm().hashCode();
			usuario.setSenha(senha);
			return this.usuario = (Usuario)dao.salva(usuario);
		
			
			}catch(Exception e) {
				throw new Exception(e.getMessage());
			}
		
	}
	
	public void remover(Usuario usuario) throws Exception{
		try {
			this.dao.remove(usuario);
		}catch(Exception e) {
			throw new Exception(e.getMessage());
		}
	}
	
	
	public Usuario procura(Usuario usuario) {
		return (Usuario)this.dao.procura(usuario.getId(), Usuario.class);
	}
	
	public List<Usuario> lista() {
		Criteria sa = dao.getSession().createCriteria(Usuario.class);
		return this.listaUsuario = sa.list();
	}
	
	
	
	public Usuario existeUnico(Usuario user) throws Exception{
		Usuario autenticado = null;
		try {
			Integer senhaBanco = user.getSenhaForm().hashCode();
			String hql = "select user from Usuario as user where user.login = :login and user.senha = :senha and user.status = :status";
			Query query = dao.getSession().createQuery(hql);
			query.setParameter("login", user.getLogin());
			query.setParameter("senha", senhaBanco);
			query.setParameter("status", 1);
			autenticado = (Usuario) query.uniqueResult();
			if(autenticado == null) {
				throw new Exception("Usuário não autenticado!");
			}
			
			return autenticado;
		}catch(Exception e) {
			throw new Exception(e.getMessage());
		}
		
	}

	

}
