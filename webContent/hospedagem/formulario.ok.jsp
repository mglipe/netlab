<%@ include file="../template/cabecalho.jsp"%>
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
						<h4>Formulário de Hospedagem</h4>


						<form id="form1" method="POST" action="hospedagem.salvar.logic">

							<input type="hidden" name="hospedagem.id"
								value="${hospedagem.id != null ? hospedagem.id : 0 }" />


							<div class="form-example-int form-horizental ">
								<div class="form-group">
									<div class="row ">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm ">Configuração:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<select name="hospedagem.configuracao.id">
													<option value="0">Selecione</option>
													<c:forEach var="item" items="${listaConf}">
														<option value="${item.id}"
															${hospedagem.configuracao.id == item.id ? 'selected' : ''}>${item.descricao}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
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
								</div>
							</div>
							
								<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Identificador:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.identificador" value="${hospedagem.identificador}"
													placeholder="Identificador" />
											</div>
										</div>
									</div>
								</div>
							</div>
							


							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Mensalidade:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="number" class="form-control input-sm"
													name="hospedagem.mensalidade" placeholder="mensalidade" value="${hospedagem.mensalidade }">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Nome Contato:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.nomeContato"
													value="${hospedagem.nomeContato}"
													placeholder="Nome Contato">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Telefone Contato:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.telefoneContato"
													value="${hospedagem.telefoneContato}"
													placeholder="Telefone Contato">
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
													name="hospedagem.status" value="${hospedagem.status}"
													placeholder="Status">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Data Adesão:</label>
										</div>

										<!--  -->
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
											<div class="form-group nk-datapk-ctm form-elet-mg"
												id="data_1">
												<div class="input-group date nk-int-st">
													<span class="input-group-addon"></span> <input type="text"
														class="form-control" name="hospedagem.dataAdesao"
														value="<fmt:formatDate pattern="dd/MM/yyyy" value="${hospedagem.dataAdesao}"/>">
												</div>
											</div>
										</div>
										<!--  -->


									</div>
								</div>
							</div>
							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Mês Renovação:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.mesRenovacao"
													value="${hospedagem.mesRenovacao}"
													placeholder="Mês Renovação">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Tipo Mensalidade:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.tipoMensalidade"
													value="${hospedagem.tipoMensalidade}"
													placeholder="Tipo Mensalidade">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Tipo Contrato:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.tipoContrato"
													value="${hospedagem.tipoContrato}"
													placeholder="Tipo Contrato">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Cidade:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.cidade" value="${hospedagem.cidade}"
													placeholder="Cidade">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Versão:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="number" class="form-control input-sm"
													name="hospedagem.versao" value="${hospedagem.versao}"
													placeholder="Versão">
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Nome Laboratório:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.nomeLab" value="${hospedagem.nomeLab}"
													placeholder="Nome Laboratório">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">CNPJ:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.cnpj" value="${hospedagem.cnpj}"
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
											<label class="hrzn-fm">CNES:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.cnes" value="${hospedagem.cnes}"
													placeholder="CNES">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">E-mail:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="email" class="form-control input-sm"
													name="hospedagem.email" value="${hospedagem.email}"
													placeholder="E-mail">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Instagram:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.insta" value="${hospedagem.insta}"
													placeholder="Instagram">
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">IP:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.ip" value="${hospedagem.ip}"
													placeholder="IP">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Host FTP:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.hostFtp" value="${hospedagem.hostFtp}"
													placeholder="Host FTP">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">User FTP:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.userFtp" value="${hospedagem.userFtp}"
													placeholder="User FTP">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Senha FTP:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.senhaFtp" value="${hospedagem.senhaFtp}"
													placeholder="Senha FTP">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Host BD:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.HostBd" value="${hospedagem.hostBd}"
													placeholder="Host BD">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Banco BD:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.bancoBd" value="${hospedagem.bancoBd}"
													placeholder="Banco BD">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">User BD:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.userBd" value="${hospedagem.userBd}"
													placeholder="User BD">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Senha BD:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.senhaBd" value="${hospedagem.senhaBd}"
													placeholder="Senha BD">
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Capacidade DB:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="number" class="form-control input-sm"
													name="hospedagem.capacidadeBd"
													value="${hospedagem.capacidadeBd}"
													placeholder="Capacidade DB">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Memória:</label>
										</div>
										<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
											<div class="nk-int-st">
												<input type="text" class="form-control input-sm"
													name="hospedagem.memoria" value="${hospedagem.memoria}"
													placeholder="Memória">
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



