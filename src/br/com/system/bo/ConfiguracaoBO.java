package br.com.system.bo;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.vraptor.annotations.InterceptedBy;

import br.com.system.dao.Dao;
import br.com.system.dao.DaoInterceptor;
import br.com.system.model.Configuracao;

public class ConfiguracaoBO {
	
	private Dao dao;
	
	public ConfiguracaoBO(Dao dao) {
		this.dao = dao;
	}
	
	public Configuracao salvar(Configuracao dto) throws Exception {
		return (Configuracao) this.dao.salva(dto);
	}
	
	
	public void remover(Configuracao dto) throws Exception {
		this.dao.remove(dto);
	}
	
	
	public Configuracao procurar(Configuracao dto) {
		return (Configuracao) this.dao.procura(dto.getId(), Configuracao.class);
		
	}
	
	public List<Configuracao> listaTudo(){
		return this.dao.listaTudo(Configuracao.class);
	}
	
	
	public List<Object> lista(Configuracao dto)throws Exception {
		Criteria sa = this.dao.getSession().createCriteria(Configuracao.class);
		if(dto.getCnpj()!=null && !dto.getCnpj().equals(""))
			sa.add(Restrictions.like("cnpj",dto.getCnpj(),MatchMode.ANYWHERE).ignoreCase());
		
		return sa.list();
	 }
	
	
}
