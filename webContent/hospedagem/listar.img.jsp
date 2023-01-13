<%@ include file="../template/cabecalho.jsp"%>



<div class="ms-5 me-5 mt-5">
	<display:table name="${listaHospedagem}" id="item" pagesize="100"
		class="table table-striped table-hover table-condensed table-bordered"
		cellspacing="2" cellpadding="1" defaultsort="1"
		defaultorder="descending" export="true"
		requestURI="hospedagem.listar.logic">
		<display:column property="id" title="ID" sortable="true" />

		<display:column title="Descrição" sortable="true">
			<div class="grupobotoes">
				<a target="_blank"
					href="http://${item.dominioPrincipal}">${item.dominioPrincipal}</i></a>

			</div>
		</display:column>

		<display:column title="Logo 1" sortable="true">
			<div class="grupobotoes">
				<img
					src="http://${item.dominioPrincipal}/img/logo1.jpg"
					style="max-height: 60px;">


			</div>
		</display:column>
		<display:column title="Logo 2" sortable="true">
			<div class="grupobotoes">
				<img
					src="http://${item.dominioPrincipal}/img/logo2.jpg"
					style="max-height: 60px;">


			</div>
		</display:column>

		<display:column title="Logo Cliente" sortable="true">
			<div class="grupobotoes">
				<img
					src="http://${item.dominioPrincipal}/img/logo1cliente.jpg"
					style="max-height: 60px;">


			</div>
		</display:column>


	</display:table>
</div>

















<%@ include file="../template/rodapejs.jsp"%>


<%@ include file="../template/rodapefinal.jsp"%>