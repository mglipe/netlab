<%@ include file="../template/cabecalho.jsp"%>

<h1>${msgErro}</h1>


<form action="hospedagem.sql.logic" method="post" class="form-default">
	<div class="container-flex">
		<label class="hrzn-fm">Componentes:</label>
		<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
			<div class="nk-int-st">
				<input style="width:10em;" type="text" class="form-control"
					name="hospedagem.componente" value="${hospedagem.componente}"
					placeholder="Componentes" />
			</div>
		</div>
		<div class="container-buttons">
			<button style="margin-left: 1em;" type="submit"
				class="btn btn-success notika-btn-success waves-effect">Pesquisar</button>
		</div>
	</div>
</form>


<display:table name="${listaHospedagem}" id="item" pagesize="100"
	class="table table-striped table-hover table-condensed table-bordered"
	cellspacing="2" cellpadding="1" defaultsort="1"
	defaultorder="descending" export="true"
	requestURI="hospedagem.sql.logic">
	<display:column property="id" title="ID" sortable="false" />
	<display:column property="descricao" title="Descricao" sortable="false" />
	<display:column title="Tipo Laudo" sortable="false" >
		<a href="http://${item.nomeLab}.sistemanetlab.med.br/lis/tipolaudo.detalhes.logic?tipolaudo.id=${item.id}" target="_black">${item.cidade}</a>
	</display:column>
</display:table>



<%@ include file="../template/rodapejs.jsp"%>

<%@ include file="../template/rodapefinal.jsp"%>


