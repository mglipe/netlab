<%@ include file="../template/cabecalhomodal.jsp"%>

<!-- Data Table area Start-->

<div class="panel panel-collapse notika-accrodion-cus">
	<div class="panel-heading" role="tab">
		<h4 class="panel-title">
			<a data-toggle="collapse" data-parent="#accordionGreen"
				href="#accordionGreen-one" aria-expanded="false" class="collapsed"
				id="credetial-BD">Credenciais do Banco</a>
		</h4>
	</div>
	<div id="accordionGreen-one" class="collapse" role="tabpanel"
		aria-expanded="false" style="height: 0px;">
		<div class="panel-body" id="content-credential-BD">
			<div class="form-example-int form-horizental">
				<div class="form-group">
					<div class="row">
						<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
							<label class="hrzn-fm">User Name:</label>
						</div>
						<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
							<div class="nk-int-st">
								<label>${hospedagem.userBd}</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="form-example-int form-horizental">
				<div class="form-group">
					<div class="row">
						<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
							<label class="hrzn-fm">Password:</label>
						</div>
						<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
							<div class="nk-int-st">
								<label>${hospedagem.senhaBd}</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="form-example-int form-horizental">
				<div class="form-group">
					<div class="row">
						<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
							<label class="hrzn-fm">URL:</label>
						</div>
						<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
							<div class="nk-int-st">
								<label>${hospedagem.hostBd}</label>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<div class="panel panel-collapse notika-accrodion-cus">
	<div class="panel-heading" role="tab">
		<h4 class="panel-title">
			<a class="collapsed" data-toggle="collapse"
				data-parent="#accordionGreen" href="#accordionGreen-two"
				aria-expanded="false" id="credential-FTP"> Credenciais do FTP </a>
		</h4>
	</div>
	<div id="accordionGreen-two" class="collapse" role="tabpanel"
		aria-expanded="false" style="height: 0px;">
		<div class="panel-body" id="content-credetial-FTP">
			<div class="form-example-int form-horizental">
				<div class="form-group">
					<div class="row">
						<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
							<label class="hrzn-fm">Host FTP:</label>
						</div>
						<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
							<div class="nk-int-st">
								<label><a href="ftp://${hospedagem.hostFtp}">${hospedagem.hostFtp}</a></label>
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
								<label>${hospedagem.userFtp}</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="form-example-int form-horizental">
				<div class="form-group">
					<div class="row">
						<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
							<label class="hrzn-fm">Password FTP:</label>
						</div>
						<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
							<div class="nk-int-st">
								<label>${hospedagem.senhaFtp}</label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- ------- -->

<div class="panel panel-collapse notika-accrodion-cus">
	<div class="panel-heading" role="tab">
		<h4 class="panel-title">
			<a class="collapsed" data-toggle="collapse"
				data-parent="#accordionGreen" href="#accordionGreen-pobre"
				aria-expanded="false" id="credential-probe"> Credenciais do
				Probe </a>
		</h4>
	</div>
	<div id="accordionGreen-pobre" class="collapse" role="tabpanel"
		aria-expanded="false" style="height: 0px;">
		<div class="panel-body" id="content-credetial-probe">
			<div class="form-example-int form-horizental">
				<div class="form-group">
					<div class="row">
						<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
							<label class="hrzn-fm">Username:</label>
						</div>
						<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
							<div class="nk-int-st">
								<label>netlab</label>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="form-example-int form-horizental">
				<div class="form-group">
					<div class="row">
						<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
							<label class="hrzn-fm">Password:</label>
						</div>
						<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
							<div class="nk-int-st">
								<label>25Ymrmf13#</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="form-example-int form-horizental">
				<div class="form-group">
					<div class="row">
						<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
							<label class="hrzn-fm">Pobre3:</label>
						</div>
						<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
							<div class="nk-int-st">
								<a href="http://${hospedagem.dominioPrincipal}/probe3/logs/download?logType=log4j&webapp=%2flis&root=true&logIndex=file">Acessar</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- ---- -->
<div class="panel panel-collapse notika-accrodion-cus">
	<div class="panel-heading" role="tab">
		<h4 class="panel-title">
			<a class="collapsed" data-toggle="collapse"
				data-parent="#accordionGreen" href="#accordionGreen-three"
				aria-expanded="false" id="credetial-details"> Detalhes </a>
		</h4>
	</div>
	<div id="accordionGreen-three" class="collapse" role="tabpanel"
		aria-expanded="false" style="height: 0px;">
		<div class="panel-body" id="content-credential-details">


			<!-- content Credential Details -->


			<div class="data-table-area">
				<div>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="data-table-list">
								<div class="basic-tb-hd">


									<div class="form-example-int form-horizental">
										<div class="form-group">
											<div class="row">
												<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 tabhead">
													<label class="hrzn-fm ">Contrato:</label>
												</div>
												<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
													<div class="nk-int-st">
														<label>${hospedagem.tipoContrato}</label>

													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="form-example-int form-horizental">
										<div class="form-group">
											<div class="row">
												<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
													<label class="hrzn-fm">Domínio Secundário:</label>
												</div>
												<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
													<div class="nk-int-st">
														<label>${hospedagem.dominioSecundario}</label>
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
														<label><fmt:formatNumber pattern="#,##0.00" value="${hospedagem.mensalidade}"/></label>
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
														<label>${hospedagem.nomeContato}</label>
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
														<label>${hospedagem.telefoneContato}</label>
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
														<label>${hospedagem.descricao}</label>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="form-example-int form-horizental">
										<div class="form-group">
											<div class="row">
												<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
													<label class="hrzn-fm">Cadastrado em:</label>
												</div>
												<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
													<div class="nk-int-st">
														<label><fmt:formatDate pattern="dd/MM/yyyy HH:mm"
																value="${hospedagem.dataCriacao}" /></label>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="form-example-int form-horizental">
										<div class="form-group">
											<div class="row">
												<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
													<label class="hrzn-fm">Modificado em:</label>
												</div>
												<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
													<div class="nk-int-st">
														<label><fmt:formatDate pattern="dd/MM/yyyy HH:mm"
																value="${hospedagem.dataModificacao}" /></label>
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
												<div class="col-lg-10 col-md-7 col-sm-7 col-xs-12">
													<label> ${hospedagem.status}</label>

												</div>
											</div>
										</div>
									</div>

									<div class="form-example-int form-horizental">
										<div class="form-group">
											<div class="row">
												<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
													<label class="hrzn-fm">Id Usuário Criador:</label>
												</div>
												<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
													<div class="nk-int-st">
														<label>${hospedagem.idUsuarioCriador}</label>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="form-example-int form-horizental">
										<div class="form-group">
											<div class="row">
												<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
													<label class="hrzn-fm">Id Usuário Modificador:</label>
												</div>
												<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
													<div class="nk-int-st">
														<label>${hospedagem.idUsuarioModificador}</label>
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
												<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
													<div class="nk-int-st">
														<label>${hospedagem.dataAdesao}</label>
													</div>
												</div>
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
														<label>${hospedagem.mesRenovacao}</label>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="form-example-int form-horizental">
										<div class="form-group">
											<div class="row">
												<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
													<label class="hrzn-fm">Faturamento:</label>
												</div>
												<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
													<div class="nk-int-st">
														<label>${hospedagem.tipoMensalidade}</label>
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
														<label>${hospedagem.cidade}</label>
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
														<label>${hospedagem.versao}</label>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="form-example-int form-horizental">
										<div class="form-group">
											<div class="row">
												<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
													<label class="hrzn-fm">Laboratório:</label>
												</div>
												<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
													<div class="nk-int-st">
														<label>${hospedagem.nomeLab}</label>
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
														<label>${hospedagem.cnpj}</label>
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
														<label>${hospedagem.cnes}</label>
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
														<label>${hospedagem.email}</label>
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
														<label>${hospedagem.insta}</label>
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
														<label>${hospedagem.ip}</label>
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
														<label>${hospedagem.senhaFtp}</label>
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
														<label>${hospedagem.senhaBd}</label>
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
														<label>${hospedagem.capacidadeBd}</label>
													</div>
												</div>
											</div>
										</div>
									</div>



								</div>
								<div class="table-responsive">
									<span id="displaytag_lista"></span>
								</div>
							</div>

							<!-- end data-table-list -->


						</div>
					</div>
				</div>
			</div>
			<!-- Data Table area End-->

		</div>
	</div>
</div>


