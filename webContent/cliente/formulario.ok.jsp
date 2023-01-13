<%@ include file="../template/cabecalho.jsp" %>


<h1>Formulário de Cliente</h1>
 
<h3><span class="alert-danger">${msgErro}</span></h3>

 <form action="cliente.salvar.logic" method="post">
 
	
	
	<input type="hidden" name="cliente.id" value="${cliente.id != null ? cliente.id : 0 }">
	
	 
	  <div class="form-group">
	    <label >Nome:</label>
	    <input type="text" class="form-control" name="cliente.nome" value="${cliente.nome}">
	  </div>
	  
	   <div class="form-group">
	    <label >CPF:</label>
	    <input type="text" class="form-control" name="cliente.cpf" value="${cliente.cpf}">
	  </div>
	  
	  <button type="submit" class="btn btn-primary">Salvar</button>
	  
 </form>
  
<%@ include file="../template/rodape.jsp" %>