<%@ include file="../template/cabecalho.jsp" %>


<h1>Detalhes do Cliente</h1>

<h3><span class="alert-success">${msgSucesso}</span></h3>

<div class="form-group">
	<label>ID:</label> ${cliente.id}
</div>


<div class="form-group">
	<label>Nome:</label> ${cliente.nome}
</div>

<div class="form-group">
	<label>CPF:</label> ${cliente.cpf}
</div>


<%@ include file="../template/rodape.jsp" %>