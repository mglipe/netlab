

<!-- Mobile Menu start -->
<div class="mobile-menu-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="mobile-menu">
					<nav id="dropdown">
						<ul class="mobile-menu-nav">
							<li><a data-toggle="collapse" data-target="#Charts"
								href="main.home.logic">Home</a></li>
							<li><a data-toggle="collapse" data-target="#demoevent"
								href="#">Cadastros</a>
								<ul id="demoevent" class="collapse dropdown-header-top">
									<li><a href="configuracao.listar.logic">Configuração</a></li>
									<li><a href="hospedagem.listar.logic">Hospedagem</a></li>
									<li><a href="hospedagem.listar.logic?hospedagem.destino=1">Imagens</a></li>
									<li><a href="admin.lista.logic">Usuário</a></li>
								</ul></li>
							<li><a data-toggle="collapse" data-target="#event" href="#">Consulta
									SQL</a>
								<ul id="event" class="collapse dropdown-header-top">
									<li><a href="hospedagem.buscacomponente.logic">Componentes</a></li>
									<li><a href="hospedagem.resultset.logic">Result Set</a></li>
								</ul></li>
							<li><a data-toggle="collapse" data-target="#links" href="#">Links</a>
								<ul id="event" class="collapse dropdown-header-top">
									<li><a
										href="https://gde.diagnosticosdobrasil.com.br/GDE_Home/">DB</a></li>
									<li><a href="https://aol.alvaroapoio.com.br/exames/">Álvaro</a></li>
								</ul></li>
							<li><a data-toggle="collapse" data-target="#Charts"
								href="admin.logout.logic">Logout</a></li>

						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Mobile Menu end -->


<!-- Main Menu area start-->
<div class="main-menu-area mg-t-10">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
				style="margin-left: -1.5em;">
				<ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
					<li class=""><a href="main.home.logic"><i
							class="notika-icon notika-house"></i> Home</a></li>
					<li class=""><a data-toggle="tab" href="#cadastros"
						aria-expanded="false"><i class="notika-icon notika-form"></i>
							Cadastros</a></li>
					<li class=""><a data-toggle="tab" href="#consultaSQL"
						aria-expanded="false"><i class="notika-icon notika-edit"></i>
							Consultas SQL</a></li>
					<li class=""><a data-toggle="tab" href="#Links"
						aria-expanded="false"><i class="glyphicon glyphicon-link"></i>
							Links</a></li>
				</ul>
				<!-- content cadastro -->
				<div class="tab-content custom-menu-content">
					<div id="cadastros"
						class="tab-pane in notika-tab-menu-bg animated flipInX">
						<ul class="notika-main-menu-dropdown">
							<li class="nav-drop"><a href="configuracao.listar.logic">Configuração</a></li>
							<li class="nav-drop"><a href="hospedagem.listar.logic">Hospedagem</a></li>
							<li class="nav-drop"><a
								href="hospedagem.listar.logic?hospedagem.destino=1">Imagens</a>
							</li>
							<li class="nav-drop"><a href="admin.lista.logic">Usuários</a></li>
						</ul>
					</div>
					<div id="consultaSQL"
						class="tab-pane in notika-tab-menu-bg animated flipInX">
						<ul class="notika-main-menu-dropdown">
							<li class="nav-drop"><a
								href="hospedagem.buscacomponente.logic">Componentes</a></li>
							<li class="nav-drop"><a href="hospedagem.resultset.logic">Result
									SET</a></li>
						</ul>
					</div>
					<div id="Links"
						class="tab-pane in notika-tab-menu-bg animated flipInX">
						<ul class="notika-main-menu-dropdown">
							<li class="nav-drop"><a
								href="https://gde.diagnosticosdobrasil.com.br/GDE_Home/">DB</a></li>
							<li class="nav-drop"><a href="https://aol.alvaroapoio.com.br/exames/">Álvaro</a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
<!-- Main Menu area End-->





