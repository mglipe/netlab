
<%@ include file="/template/cabecalhoLogin.jsp"%>

<c:if test="${msgErro != null }">
	<div class="alert alert-danger alert-dismissible" role="alert">
		${msgErro}
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
</c:if>

<c:if test="${msgSucesso != null}">
	<div class="alert alert-success alert-dismissible" role="alert">
		${msgSucesso}
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
</c:if>

<div class="container2" style="margin: 0 -1em;">
	<form name="form1" method="post" action="admin.efetuaLogin.logic">


		<div class="login-content">
			<!-- Login -->
			<div class="nk-block toggled" id="l-login">
				<div class="nk-form">
					<div class="input-group">
						<span class="input-group-addon nk-ic-st-pro"><i
							class="notika-icon notika-support"></i></span>
						<div class="nk-int-st">
							<input type="text" name="usuario.login" class="form-control"
								placeholder="Username" required>
						</div>
					</div>
					<div class="input-group mg-t-15">
						<span class="input-group-addon nk-ic-st-pro"><i
							class="notika-icon notika-edit"></i></span>
						<div class="nk-int-st">
							<input type="password" name="usuario.senhaForm"
								class="form-control" placeholder="Password" required>
						</div>
					</div>
					<div class="fm-checkbox"></div>
					<button type="submit" class="btn btn-info">Entrar</button>
					<a href="#" data-ma-action="nk-login-switch"
						data-ma-block="#l-register"
						class="btn btn-login btn-success btn-float"><i
						class="notika-icon notika-right-arrow right-arrow-ant"></i></a>
				</div>




				<div class="nk-navigation nk-lg-ic">
					<a href="#" data-ma-action="nk-login-switch"
						data-ma-block="#l-register"><i
						class="notika-icon notika-plus-symbol"></i> <span>Register</span></a>
					<a href="#" data-ma-action="nk-login-switch"
						data-ma-block="#l-forget-password"><i>?</i> <span>Forgot
							Password</span></a>
				</div>
			</div>

			<!-- Register -->
			<div class="nk-block" id="l-register">
				<div class="nk-form">
					<div class="input-group">
						<span class="input-group-addon nk-ic-st-pro"><i
							class="notika-icon notika-support"></i></span>
						<div class="nk-int-st">
							<input type="text" class="form-control" placeholder="Username">
						</div>
					</div>

					<div class="input-group mg-t-15">
						<span class="input-group-addon nk-ic-st-pro"><i
							class="notika-icon notika-mail"></i></span>
						<div class="nk-int-st">
							<input type="text" class="form-control"
								placeholder="Email Address">
						</div>
					</div>

					<div class="input-group mg-t-15">
						<span class="input-group-addon nk-ic-st-pro"><i
							class="notika-icon notika-edit"></i></span>
						<div class="nk-int-st">
							<input type="password" class="form-control"
								placeholder="Password">
						</div>

					</div>


					<a href="#l-login" data-ma-action="nk-login-switch"
						data-ma-block="#l-login"
						class="btn btn-login btn-success btn-float"><i
						class="notika-icon notika-right-arrow"></i></a>
				</div>

				<div class="nk-navigation rg-ic-stl">
					<a href="#" data-ma-action="nk-login-switch"
						data-ma-block="#l-login"><i
						class="notika-icon notika-right-arrow"></i> <span>Sign in</span></a> <a
						href="" data-ma-action="nk-login-switch"
						data-ma-block="#l-forget-password"><i>?</i> <span>Forgot
							Password</span></a>
				</div>
			</div>

			<!-- Forgot Password -->
			<div class="nk-block" id="l-forget-password">
				<div class="nk-form">
					<p class="text-left">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla
						enim feugiat commodo sed ac lacus.</p>

					<div class="input-group">
						<span class="input-group-addon nk-ic-st-pro"><i
							class="notika-icon notika-mail"></i></span>
						<div class="nk-int-st">
							<input type="text" class="form-control"
								placeholder="Email Address">
						</div>
					</div>

					<a href="#l-login" data-ma-action="nk-login-switch"
						data-ma-block="#l-login"
						class="btn btn-login btn-success btn-float"><i
						class="notika-icon notika-right-arrow"></i></a>
				</div>

				<div class="nk-navigation nk-lg-ic rg-ic-stl">
					<a href="" data-ma-action="nk-login-switch"
						data-ma-block="#l-login"><i
						class="notika-icon notika-right-arrow"></i> <span>Sign in</span></a> <a
						href="" data-ma-action="nk-login-switch"
						data-ma-block="#l-register"><i
						class="notika-icon notika-plus-symbol"></i> <span>Register</span></a>
				</div>
			</div>
		</div>



	</form>

</div>
<%@ include file="/template/rodapejs.jsp"%>
<%@ include file="/template/rodapefinal.jsp"%>