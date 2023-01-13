package br.com.system.dao;

import org.vraptor.Interceptor;
import org.vraptor.LogicException;
import org.vraptor.LogicFlow;
import org.vraptor.annotations.Out;
import org.vraptor.view.ViewException;


public class DaoInterceptor implements Interceptor {

	private final Dao dao = new Dao();
	
	public void intercept(LogicFlow flow) throws LogicException, ViewException {
		flow.execute();//executa a logica
		if (dao.hasTransaction()) {//se sobrou transacao sem comitar, faz rollback
			dao.rollback();
		}
		dao.close();
	}	
	
	@Out(key="br.com.system.dao.Dao")
	public Dao getDao() {
		return dao;
	}
}