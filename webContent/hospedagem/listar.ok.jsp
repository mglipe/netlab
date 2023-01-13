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


<!-- form -->
<form method="POST" action="hospedagem.listar.logic"
	class="form-default">
	<div class="container-flex">
		<div>
			<label class="hrzn-fm">Descrição:</label>
		</div>
		<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
			<div class="nk-int-st">
				<input type="text" class="form-control input-sm"
					name="hospedagem.descricao" value="${hospedagem.descricao}"
					placeholder="Descrição" />
			</div>
		</div>
	</div>

	<div class="container-flex">
		<div>
			<label class="hrzn-fm">Status:</label>
		</div>
		<div class="form-check form-check-inline" id="container-radio">
			<label class="form-check-label" for="inlineRadio1"><input
				class="form-check-input" type="radio" name="hospedagem.status"
				id="inlineRadio1" value="1"
				${hospedagem.status == 1 ? 'checked': '' } checked> Ativos </label>
			<label class="form-check-label" for="inlineRadio2"><input
				class="form-check-input" type="radio" name="hospedagem.status"
				id="inlineRadio2" value="0"
				${hospedagem.status == 0 ? 'checked': '' }> Inativos</label>
		</div>
	</div>
	<div class="container-buttons">
		<button type="submit"
			class="btn btn-success notika-btn-success waves-effect">Pesquisar</button>
		<button type="button"
			class="btn btn-success notika-btn-success waves-effect"
			onClick="location='hospedagem.listar.logic'">Recarregar</button>
		<button type="reset"
			class="btn btn-success notika-btn-success waves-effect">Limpar</button>
		<div class="form-example-int">
			<div class="row grupobotoes">
				<a href="hospedagem.formulario.logic"
					class="btn btn-xs btn-success notika-btn-success botoesform">Inserir
					Novo</a>

			</div>
		</div>
	</div>
</form>
<!-- end form -->



<div class="widget-tabs-list">

	<!-- nav tab start -->
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#tabela01"
			aria-expanded="true" class="tabela">Tabela 01</a></li>
		<li><a data-toggle="tab" href="#tabela02" aria-expanded="false"
			class="tabela">Tabela 02</a></li>
	</ul>

	<!-- nav tab end -->

	<!-- formulario 
	<div id="container-form">
		<div class="form-example-int" style="margin-top: 1em;">
		
		</div>

		<a href="hospedagem.conexao.logic">buscar por componentes</a>
	</div>-->
	<!-- content nav tab start -->
	<!-- tab 01 start -->
	<div class="tab-content tab-custom-st">
		<div id="tabela01" class="tab-pane fade active in">
			<div class="tab-ctn">
				<div class="ms-5 me-5 mt-5">
					<display:table name="${listaHospedagem}" id="item1" pagesize="100"
						class="table table-striped table-hover table-condensed table-bordered"
						cellspacing="2" cellpadding="1" defaultsort="2"
						defaultorder="descending" export="true"
						requestURI="hospedagem.listar.logic">
						<display:column property="id" title="ID" sortable="false" />

						<display:column title="Descrição" sortable="false">
							<div id="info-laboratorio" class="laboratorio"
								data-contexto=${item1.descricao }>
								<div class="c-loader"></div>
								<a id="base" target="_blank" style="margin-left: .5em;"
									href="http://${item1.dominioPrincipal}">${item1.descricao }</a>
							</div>
						</display:column>

						<display:column title="Logo" sortable="false">
							<div class="grupobotoes">
								<img src="http://${item1.dominioPrincipal}/csscliente/logo.png"
									style="max-height: 30px;">


							</div>
						</display:column>

						<display:column title="Painéis" sortable="false">
							<div class="grupobotoes">
								<a target="_blank"
									href="https://painel.hospedagemelastica.com.br/services/${item1.identificador}">Painel
									${item1.descricao}</i>

								</a>

							</div>
						</display:column>

						<display:column property="cidade" title="Cidade" media="html"
							sortable="false" />
						<display:column property="nomeLab" title="Nome Laboratório"
							sortable="false" />
						<display:column property="memoria" title="Memória"
							sortable="false" />
						<display:column property="tipoContrato" title="Contrato"
							sortable="false" />

						<display:column title="Ação" sortable="false">
							<div class="grupobotoes">

								<a
									data-url="hospedagem.detalhes.logic?hospedagem.id=${item1.id}"
									class="btn btn-default btn-icon-notika botao-detalhes"
									data-toggle="tooltip" data-placement="top" title="Detalhes"><i
									class="fas fa-vials"></i></a> <a target="_blank"
									href="http://${item1.dominioPrincipal}/probe3/logs/download?logType=log4j&webapp=%2flis&root=true&logIndex=file"
									class="btn btn-default btn-icon-notika" data-toggle="tooltip"
									data-placement="top" title="Log"><i
									class="glyphicon glyphicon-list"></i></a> <a target="_blank"
									href="http://${item1.dominioPrincipal}/probe3"
									class="btn btn-default btn-icon-notika" data-toggle="tooltip"
									data-placement="top" title="Probe3"><i
									class="glyphicon glyphicon-cog"></i></a>
							</div>
						</display:column>
					</display:table>
				</div>
			</div>
		</div>

		<!-- tab 01 end -->

		<!-- tab 02 start -->
		<div id="tabela02" class="tab-pane fade">
			<div class="tab-ctn">
				<div class="ms-5 me-5 mt-5">
					<display:table name="${listaHospedagem}" id="item2" pagesize="100"
						class="table table-striped table-hover table-condensed table-bordered"
						cellspacing="2" cellpadding="1" defaultsort="2"
						defaultorder="descending" export="true"
						requestURI="hospedagem.listar.logic">
						<display:column property="id" title="ID" sortable="false" />

						<display:column title="Descrição" sortable="false">
							<div id="info-laboratorio" class="laboratorio"
								data-contexto=${item2.descricao }>
								<div class="c-loader"></div>
								<a target="_blank" href="http://${item2.dominioPrincipal}"
									style="margin-left: .5em;">${item2.descricao}</i></a>

							</div>
						</display:column>

						<display:column title="Logo" sortable="false">
							<div class="grupobotoes">
								<img src="http://${item2.dominioPrincipal}/csscliente/logo.png"
									style="max-height: 30px;">


							</div>
						</display:column>
						<display:column property="hostFtp" title="Host FTP" media="html"
							sortable="false" />
						<display:column property="userFtp" title="Usuário FTP"
							sortable="false" />
						<display:column property="hostBd" title="Host BD" sortable="false" />
						<display:column property="bancoBd" title="Banco BD"
							sortable="false" />
						<display:column property="userBd" title="Usuário BD"
							sortable="false" />

						<display:column property="configuracao.descricao"
							title="Configuração" sortable="false" />

						<display:column title="Ação" sortable="false">
							<div class="grupobotoes">
								<a href="hospedagem.editar.logic?hospedagem.id=${item2.id}"
									class="btn btn-default btn-icon-notika" data-toggle="tooltip"
									data-placement="top" title="Alterar"><i
									class="glyphicon glyphicon-edit"></i></a> <a data-id="${item2.id}"
									class="btn btn-default btn-icon-notika botao-deletar"
									data-toggle="tooltip" data-placement="top" title="Excluir"><i
									class="glyphicon glyphicon-trash"></i></a>

							</div>
						</display:column>
					</display:table>
				</div>

				<!-- tab 02 end -->
			</div>
		</div>

	</div>
</div>
<!-- content nav tab end -->
<%@ include file="../template/modalDetalhes.jsp"%>
<%@ include file="../template/rodapejs.jsp"%>
<script>
	$(document)
			.ready(
					function() {

						$(window)
								.load(
										function() {
											$(".laboratorio")
													.each(
															function(index) {
																var contexto = $(
																		this)
																		.attr(
																				"data-contexto");
																var urlContexto = "http://"
																		+ contexto
																		+ ".sistemanetlab.med.br/lis/dados.jsp";
																var urlServidor = "http://"
																		+ contexto
																		+ ".sistemanetlab.med.br/index.jsp";
																var laboratorio = $(this);

																$
																		.ajax(
																				{
																					url : urlContexto,
																					method : 'get',

																				})
																		.done(
																				function(
																						data) {
																					if ($
																							.isEmptyObject(data) == false) {
																						laboratorio
																								.addClass("glyphicon glyphicon-ok");
																						$(
																								".c-loader")
																								.removeClass(
																										"c-loader");

																					}
																				})
																		.fail(
																				function() {
																					laboratorio
																							.addClass("glyphicon glyphicon-alert");
																					$(
																							".c-loader")
																							.removeClass(
																									"c-loader");
																				})

															})

											$("input").focus();

										});

						$('.tabela').hover(function() {
							$("input").focus();
						});

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

											var resultado = window
													.confirm("deseja excluir esse registro");
											if (resultado == true) {
												window.location.href = "configuracao.remover.logic?configuracao.id="
														+ id;
											}
										})

					})

	$(function() { /*LISTAGEM DA TABELA*/

		$('#item1').dataTable({
			"bPaginate" : true,
			"bLengthChange" : true,
			"lengthMenu" : [ 50, 70, 100 ],
			"bFilter" : true,
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : false,
			order : [ [ 1, 'asc' ] ],
		});

		$('#item2').dataTable({
			"bPaginate" : true,
			"bLengthChange" : true,
			"lengthMenu" : [ 50, 70, 100 ],
			"bFilter" : true,
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : false,
			order : [ [ 1, 'asc' ] ],
		});
	});
</script>
<%@ include file="../template/rodapefinal.jsp"%>