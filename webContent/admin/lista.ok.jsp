<%@ include file="../template/cabecalho.jsp"%>

<c:if test="${msgSucesso != null}">
	<div class="alert alert-success alert-dismissible" role="alert">
		${msgSucesso}
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
</c:if>

<c:if test="${msgErro != null }">
	<div class="alert alert-danger alert-dismissible" role="alert">
		${msgErro}
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
</c:if>

<div class="ms-5 me-5 mt-5">
	<display:table name="${listaUsuarios}" id="item" pagesize="100"
		class="table table-striped table-hover table-condensed table-bordered"
		cellspacing="2" cellpadding="1" defaultsort="1"
		defaultorder="descending" export="true" requestURI="admin.lista.logic">
		<display:column property="id" title="ID" sortable="true" />
		<display:column property="login" title="Login" sortable="true" />
		<display:column property="senha" title="Senha" sortable="true" />
		<display:column property="descricao" title="Descrição" sortable="true" />
		<display:column property="status" title="status" sortable="true" />
		<display:column title="Ação" sortable="false">
			<!-- <div class="grupobotoes">
				<a href="admin.editar.logic?usuario.id=${item.id}"
					class="btn btn-default btn-icon-notika" data-toggle="tooltip"
					data-placement="top" title="Alterar"><i
					class="glyphicon glyphicon-edit"></i></a> <a href="admin.remover.logic?usuario.id=${item.id}"
					class="btn btn-default btn-icon-notika botao-deletar"
					data-toggle="tooltip" data-placement="top" title="Excluir"><i
					class="glyphicon glyphicon-trash"></i></a>
			</div> -->
		</display:column>
	</display:table>
</div>




<%@ include file="../template/rodapejs.jsp"%>


<%@ include file="../template/rodapefinal.jsp"%>