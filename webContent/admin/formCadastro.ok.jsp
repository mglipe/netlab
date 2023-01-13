
<%@ include file="/template/cabecalhoCadastro.jsp"%>

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

<!-- Data Table area Start-->
<div class="data-table-area">
	<div>
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="data-table-list">
					<div class="basic-tb-hd">
						<h4>Cadastro</h4>


						<form action="admin.salvar.logic" method="POST">



							<div class="form-group">
								<label for="exampleInputEmail1">Descri��o:</label> <input
									type="text" name="usuario.descricao"
									value="${usuario.descricao}" required class="form-control"
									id="descricao" aria-describedby="descricaoHelp">
							</div>

							<div class="form-group">
								<label for="login">Login:</label> <input type="text"
									name="usuario.login" value="${usuario.login}" required
									class="form-control" id="login" aria-describedby="loginlHelp">
							</div>

							<div class="form-group">
								<label for="senha">Senha:</label> <input type="password"
									name="usuario.senhaForm" value="${usuario.senhaForm}" required
									class="form-control" id="senha" aria-describedby="senhaHelp">
							</div>

							<div class="form-group">
								<label for="senha">Confirmar Senha:</label> <input
									type="password" name="usuario.confirmaSenha"
									value="${usuario.confirmaSenha}" required class="form-control"
									id="senha" aria-describedby="senhaHelp">
							</div>

							<div class="form-group" style="margin-top: 1em;">
								<select name="usuario.status" id="cargo.status">
									<option value="1" ${usuario.status == 1 ? 'selected' : ''}>Ativo</option>
									<option value="0" ${usuario.status == 0 ? 'selected' : ''}>Inativo</option>
								</select>
							</div>

							<button type="submit" class="btn btn-primary"
								style="margin-top: 1em;">Enviar</button>


						</form>
						<!--
 
		<div class="form-group">
		    <label for="exampleFormControlSelect1">Tipo</label>
		    
		<div class="form-check form-check-inline">
		
		  <input class="form-check-input" type="radio" required name="servo.tipop" id="inlineRadio1" value="1">
		  <label for="inlineRadio1">Casal</label>
		  
		  <input class="form-check-input" type="radio" required name="servo.tipop" id="inlineRadio2" value="2">
		  <label for="inlineRadio2">Jovem</label>
		  
		</div>
		  </div>
		  
		  
		  
		 <div class="form-group">
		    <label for="exampleFormControlSelect1">Equipe</label>
		    <select required class="form-control" id="exampleFormControlSelect1">
				<option >SELECIONE A EQUIPE</option>
				<option value="SECRETARIA">SECRETARIA</option>
				<option value="MINIMERCADO">MINIMERCADO</option>
		    </select>
		</div>		  

		<div class="form-group">
		    <label for="exampleFormControlSelect1">Participação</label>
		<div class="form-check form-check-inline">
		  
		  <input class="form-check-input" required type="radio" name="servo.tipo" id="inlinePart1" value="SERVO">
		  <label for="inlinePart1">SERVO</label>
		  <br>
		  <input class="form-check-input" required type="radio" name="servo.tipo" id="inlinePart2" value="APOIO">
		  <label class="form-check-label" for="inlinePart2">APOIO</label>
		  <br>
		  <input class="form-check-input"  required type="radio" name="servo.tipo" id="inlinePart3" value="COORDENAÇÃO">
		  <label class="form-check-label" for="inlinePart3">COORDENAÇÃO</label>
		</div>
		  </div>

	  <div class="form-group">
	    <label for="nome">Nome Completo</label>
	    <input type="text" name="servo.descricao" required value="${servo.descricao}" class="form-control" id="nome" aria-describedby="nomeh" >
	    <small id="nomeh" class="form-text text-muted">(para casal coloque Nome dele e Nome dela)</small>
	  </div>


	  <div class="form-group">
	    <label for="nome">Data Nascimento/Casamento</label>
	    <input type="date" name="servo.dataregistro" required value="${servo.descricao}" class="form-control" id="nome" aria-describedby="nomeh" >
	    <small id="nomeh" class="form-text text-muted">(para casal coloque a data do casamento)</small>
	  </div>


  <button type="submit" class="btn btn-primary">Enviar</button>
</form>
-->





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
<!-- Data Table area End-->

<!-- 
		<div id="visulUsuarioModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="visulUsuarioModalLabel">Detalhes do Usuário</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<span id="visul_usuario"></span>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-success notika-btn-success botoesform" data-dismiss="modal">Fechar</button>
					</div>
				</div>
			</div>
		</div>
 -->


<%@ include file="/template/rodapejs.jsp"%>



<%@ include file="/template/rodapefinal.jsp"%>


