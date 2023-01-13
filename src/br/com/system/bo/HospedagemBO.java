
package br.com.system.bo;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import br.com.system.dao.*;
import br.com.system.model.Base;
import br.com.system.model.Hospedagem;

public class HospedagemBO {
	private Dao dao;

	public HospedagemBO(Dao dao) {
		this.dao = dao;
	}

	public Hospedagem salvar(Hospedagem dto) throws Exception {

		try {

			if (dto.getDescricao().equals(""))
				throw new Exception("O campo Descrição deve ser preenchido");
			
			dto.setDataCriacao(new Date());
			dto.setDataModificacao(new Date());
			dto.setIdUsuarioCriador((long) 1);
			dto.setIdUsuarioModificador((long) 2);
			
			
			return (Hospedagem) this.dao.salva(dto);
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
	}

	public void remover(Object dto) {
		try {
			this.dao.remove(dto);
		} catch (Exception e) {
			e.getMessage();
		}

	}

	public Object procurar(Object dto) {
		return this.dao.procura(((Base) dto).getId(), Hospedagem.class);
	}

	public List<Hospedagem> lista(Hospedagem dto) throws Exception {

		Criteria sa = this.dao.getSession().createCriteria(Hospedagem.class);

		if (dto.getDescricao() != null && !dto.getDescricao().equals("")) {
			sa.add(Restrictions.like("descricao", dto.getDescricao(), MatchMode.ANYWHERE).ignoreCase());
		}

		if (dto.getStatus() != null) {
			sa.add(Restrictions.eq("status", dto.getStatus()));

		} else {
			sa.add(Restrictions.eq("status", 1));

		}
		return sa.list();
	}

	public ArrayList<Hospedagem> pegarComponente(Hospedagem dto) throws Exception {
		ArrayList<Hospedagem> listaTemp = new ArrayList<Hospedagem>();
		try {
			List<Hospedagem> listaBanco = this.lista(new Hospedagem());
			
			for (Hospedagem h : listaBanco) {
				listaTemp.addAll(h.pegaComponente(dto.getComponente()));
			}
		} catch (Exception e) {
			System.out.println("SQLException caught: " + e.getMessage());
		}
		
		return listaTemp;

	}
	
	public ArrayList<ResultSet> pegarResultset(Hospedagem dto) throws Exception {
		ArrayList<ResultSet> listaTemp = new ArrayList<>();
		try {
			List<Hospedagem> listaBanco = this.lista(new Hospedagem());
			for (Hospedagem h : listaBanco) {
				listaTemp.add(h.resultset(dto.getResultset()));
			}
		} catch (Exception e) {
			System.out.println("SQLException caught: " + e.getMessage());
		}
		
		return listaTemp;

	}
	

}
