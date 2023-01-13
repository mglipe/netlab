<%@ include file="../template/cabecalho.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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



<!-- nav tab start -->
<div class="widget-tabs-list">
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#tabela01"
			aria-expanded="true">Tabela 01</a></li>
	</ul>
	<!-- nav tab end -->

	<!-- formulario -->
	<div class="form-example-int" style="margin-top: 1em;">
		<div class="row grupobotoes">
			<a href="configuracao.formulario.logic"
				class="btn btn-xs btn-success notika-btn-success botoesform">Inserir
				Novo</a>

		</div>
	</div>

	<!-- dic content nav tab start -->

	<div class="tab-content tab-custom-st">
		<div id="tabela01" class="tab-pane fade active in">
			<div class="tab-ctn">
				<div class="ms-5 me-5 mt-5">
					<display:table name="${listaConfiguracao}" id="item" pagesize="100"
						class="table table-striped table-hover table-condensed table-bordered"
						cellspacing="2" cellpadding="1" defaultsort="1"
						defaultorder="descending" export="true"
						requestURI="configuracao.listar.logic">
						<display:column property="id" title="ID" sortable="true" />
						<display:column property="descricao" title="Descrição"
							sortable="true" />
						<display:column property="dominioPrincipal" title="Dominio Principal"
							sortable="true" />
							<display:column property="dominioSecundario" title="Dominio Secundário"
							sortable="true" />
						<display:column title="URL Painel"
							sortable="true" >
							<a target="_blanck" href="https://${item.urlPainel}" >Painel Controle</a>
						</display:column>
						<display:column title="URL Chatl"
							sortable="true" >
							<a target="_blanck" href="https://${item.urlChat }" >Chat</a>
						</display:column>
						<display:column title="URL Chamado"
							sortable="true" >
							<a target="_blanck" href="https://${item.urlChamado}" >Faturas e Chamado</a>
							</display:column>
						<display:column property="usuarioPainel" title="Usuário Painel"
							sortable="true" />
						<display:column property="usuarioChamado" title="Usuário Chamado"
							sortable="true" />

						<display:column property="status" title="status" sortable="true" />
						<display:column title="Ação" sortable="false">
							<div class="grupobotoes">
								<a
									data-url="configuracao.detalhes.logic?configuracao.id=${item.id}"
									class="btn btn-default btn-icon-notika botao-detalhes"
									data-toggle="tooltip" data-placement="top" title="Detalhes"><i
									class="fas fa-vials"></i></a> <a
									href="configuracao.editar.logic?configuracao.id=${item.id}"
									class="btn btn-default btn-icon-notika" data-toggle="tooltip"
									data-placement="top" title="Alterar"><i
									class="glyphicon glyphicon-edit"></i></a> <a data-id="${item.id}"
									class="btn btn-default btn-icon-notika botao-deletar"
									data-toggle="tooltip" data-placement="top" title="Excluir"><i
									class="glyphicon glyphicon-trash"></i></a>
							</div>
						</display:column>
					</display:table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- dic content nav tab end -->



<%@ include file="../template/modalDetalhes.jsp"%>

<%@ include file="../template/rodapejs.jsp"%>

<script>
	$(document)
			.ready(
					function() {

						$(".botao-detalhes").click(function() {
							var url = $(this).attr("data-url");
							console.log(url);
							$.post(url, function(retorno) {
								$(".modal-body").html(retorno);
							})
							$("#detalhes").modal("show");
						})

						$(".botao-deletar")
								.click(
										function(event) {
											var id = $(this).attr('data-id');
											console.log(id);
											var resultado = window
													.confirm("deseja excluir esse registro");
											if (resultado == true) {
												window.location.href = "configuracao.remover.logic?configuracao.id="
														+ id;
											}
										})

					})
					
					
					$( window ).load(function() {
  						$("input").focus();
					});
	
					

	$(function() { /*LISTAGEM DA TABELA*/
		$('#item').dataTable({
			"bPaginate" : true,
			"bLengthChange" : true,
			"bFilter" : true,
			"lengthMenu" : [ 50, 70, 100 ],
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : false
		});
	});
</script>

<%@ include file="../template/rodapefinal.jsp"%>