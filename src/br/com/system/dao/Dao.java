package br.com.system.dao;


import java.util.ArrayList;
import java.util.List;




import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.system.hibernateUtil.HibernateUtil;


/** 
 *
 * @author Jefferson Silva Criando: fev/2009 Modificado: abr/2015
 * DAO = Data Access Objects - Generico
 */

public class Dao {
    
    private final Session session  ;
    
	private Transaction transaction;
	
	public Dao(){
			this.session = HibernateUtil.getSession();
	}
	
	public void beginTransaction() {
		this.transaction = this.session.beginTransaction();
	}

	
	public void commit() {
		this.transaction.commit();
		this.transaction = null;
	}
	
	public boolean hasTransaction() {
		return this.transaction != null;
	}
	
	public void rollback() {
		this.transaction.rollback();
		this.transaction = null;
	}
	
	public void remove (Object dto)throws Exception  {
		try{
			this.beginTransaction();
			this.session.delete(dto);
			this.commit();
		}catch(Exception e){this.rollback();throw new Exception(e.getMessage());}			
	}
	
	public Object salva (Object dto) throws Exception {
		return this.salva(dto, true);
	}

	public Object salva (Object dto,boolean evict) throws Exception {
		try{
			this.beginTransaction();
			dto = this.session.merge(dto);
			this.commit();
			if(evict)// remove da sess�o
				this.session.evict(dto);
		}catch(Exception e){this.rollback();
			throw new Exception(e.getCause().toString().contains("Duplicate")?"Erro: Informa��o duplicada, j� existe um registro com esses valores!":e.getMessage());}
		return dto;// retorna o objeto persistente
	}
	
   	public ArrayList salvaLista (ArrayList lista) throws Exception {
    		try{
    			this.beginTransaction();
				for(Object dto : lista)
					dto = this.session.merge(dto);
				this.commit();
    		} catch (Exception e) {
    			this.rollback();
    			throw new Exception(e.getCause().toString().contains("Duplicate")?"Erro: Informa��o duplicada, j� existe um registro com esses valores!":e.getMessage());
    		}
    return 	lista;
   	}		
	
	public List listaTudo(Class classe) {
		return this.session.createCriteria(classe).list();
	} 

	public Object procura(Long id,Class classe) {
			return (Object) session.load(classe, id);
	    }

	public Session getSession() {
		return session;
	}
	
	
	public void refresh(Object dto) {
		getSession().refresh(dto); // You still can use Hibernate Session
	}
	
	
	public void close() {
		this.session.close();
	}
	
		
}