package br.com.system.dao;

import org.vraptor.Interceptor;
import org.vraptor.LogicException;
import org.vraptor.LogicFlow;
import org.vraptor.annotations.In;
import org.vraptor.scope.ScopeType;
import org.vraptor.view.ViewException;

import br.com.system.model.Usuario;

public class AutorizadorInterceptor implements Interceptor{

	@In(scope=ScopeType.SESSION, required=false)
	private Usuario logado;
	
	public void intercept(LogicFlow flow) throws LogicException, ViewException {
		if (this.logado  == null) {
			try {
				flow.getLogicRequest().getResponse().sendRedirect("admin.login.logic");
			}catch(Exception e) {
				throw new LogicException(e.getCause());
		
			}
		}else {
			flow.execute();
		}
	}
}
