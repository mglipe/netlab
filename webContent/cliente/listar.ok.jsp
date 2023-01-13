<%@ include file="../template/cabecalho.jsp" %>


<h1>Listagem de Clientes</h1>
<h3><span class="alert-success">${msgSucesso}</span></h3>
<h3><span class="alert-danger">${msgErro}</span></h3>

 <form action="cliente.listar.logic" method="post">
 
 	<input type="hidden" name="acao" value="listar">
  
  <div class="form-group">
    <label for="nome">Nome:</label>
    <input type="text" class="form-control" name="cliente.nome" id="cliente.nome" value="${cliente.nome}"> 
 </div>
 
  <button type="submit" class="btn btn-primary">Pesquisar</button>
</form>


<display:table name="listaCliente" id="item" pagesize="2" class="table table-hover" defaultsort="1" defaultorder="descending" export="true" requestURI="cliente.listar.logic" >
  <display:column property="id" title="ID" sortable="true"/>
  <display:column property="nome" title="Nome" sortable="true" />
  <display:column property="cpf" title="CPF"  media="html" sortable="true" />
   <display:column title="Ação"  sortable="false">
       <a href="cliente.detalhes.logic?cliente.id=${item.id}"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
        <a href="cliente.editar.logic?cliente.id=${item.id}"><span class="glyphicon glyphicon-edit " aria-hidden="true"></span></a>
        <a href="cliente.remover.logic?cliente.id=${item.id}"><span class="glyphicon glyphicon-trash " aria-hidden="true"></span></a>
   </display:column>
</display:table>  		
  
   
<%@ include file="../template/rodape.jsp" %>