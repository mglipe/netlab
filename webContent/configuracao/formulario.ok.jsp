<%@ include file="../template/cabecalho.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:if test="${msgErro != null }">
	<div class="alert alert-danger alert-dismissible" role="alert">
		${msgErro}
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
</c:if>

<!-- Data Table area Start-->
<div class="data-table-area">
	<div>
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="data-table-list">
					<div class="basic-tb-hd">
						<h4>Formulário de Configuração</h4>


						<form id="form1" method="POST" action="configuracao.salvar.logic">

							<input type="hidden" name="configuracao.id"
								value="${configuracao.id != null ? configuracao.id : 0 }" />
								
							<div class="form-example-int form-horizental ">
								<div class="form-group">
									<div class="row ">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm ">Descrição:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" name="configuracao.descricao"
													class="form-control input-sm" placeholder="Descrição"
													value="${configuracao.descricao}">
											</div>
										</div>
									</div>
								</div>
							</div>
							
								<div class="form-example-int form-horizental ">
								<div class="form-group">
									<div class="row ">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm ">Domínio Principal:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" name="configuracao.dominioPrincipal"
													class="form-control input-sm" placeholder="Domínio Principal"
													value="${configuracao.dominioPrincipal}">
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
								<div class="form-example-int form-horizental ">
								<div class="form-group">
									<div class="row ">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm ">Domínio Secundário:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" name="configuracao.dominioSecundario"
													class="form-control input-sm" placeholder="Domínio Secundário"
													value="${configuracao.dominioSecundario}">
											</div>
										</div>
									</div>
								</div>
							</div>
							
							


							<div class="form-example-int form-horizental ">
								<div class="form-group">
									<div class="row ">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm ">Razão Social:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" name="configuracao.razaoSocial"
													class="form-control input-sm" placeholder="Razão social"
													value="${configuracao.razaoSocial}">
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 tabhead">
											<label class="hrzn-fm ">CNPJ:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" name="configuracao.cnpj"
													value="${configuracao.cnpj}" class="form-control input-sm"
													placeholder="CNPJ">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Endereço:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="configuracao.endereco"
													value="${configuracao.endereco}" placeholder="Endereço">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">URL Painel:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="configuracao.urlPainel" value="${configuracao.urlPainel}"
													placeholder="URL Painel">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">URL Chat:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="configuracao.urlChat" value="${configuracao.urlChat}"
													placeholder="URL Chat">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">URL Chamado:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="configuracao.urlChamado"
													value="${configuracao.urlChamado}" placeholder="URL Chamado">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Usuário Painel:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="configuracao.usuarioPainel"
													value="${configuracao.usuarioPainel}"
													placeholder="Usuário Painel">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Usuário Chamado:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="configuracao.usuarioChamado"
													value="${configuracao.usuarioChamado}"
													placeholder="Usuário Chamado">
											</div>
										</div>
									</div>
								</div>
							</div>
							

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Status:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="number" class="form-control input-sm"
													name="configuracao.status" value="${configuracao.status}"
													placeholder="Status">
											</div>
										</div>
									</div>
								</div>
							</div>



							<div class="form-example-int">
								<div class="row grupobotoes">
									<button type="submit"
										class="btn btn-xs btn-success notika-btn-success botoesform">Salvar</button>

								</div>
							</div>

						</form>


					</div>
					<div class="table-responsive">

						<div id="displaytag_lista"></div>

					</div>

				</div>
				<!-- end data-table-list -->
			</div>
		</div>
	</div>
</div>

</form>
<!-- Data Table area End-->


<%@ include file="../template/rodapejs.jsp"%>

<%@ include file="../template/rodapefinal.jsp"%>
