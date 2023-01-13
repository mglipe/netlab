 <%@ include file="/template/cabecalho.jsp" %>
 

<style>
/*
#displaytag_lista{
    height:365px;
    overflow-y:auto;
    border-bottom: 1px solid gray;
}
*/
</style>       
 
 	  <!-- Data Table area Start-->
    <div class="data-table-area">
        <div >
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                            <h4 >Consulta de Requisição</h4>
                      
                      
                         <form id="form1"method="POST" action="requisicao.lista.logic">   
                         <input name="requisicao.pesquisar" type="hidden" value="1">
                          <input id="offset" name="requisicao.idUsuarioCriador" type="hidden" value="0">
                         
                        <div class="form-example-int form-horizental ">
                            <div class="form-group">
                                <div class="row ">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm ">ID Requisição:</label>
                                    </div>
                                    <div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <input type="text" name="requisicao.id" class="form-control input-sm" placeholder="ID">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 tabhead">
                                        <label class="hrzn-fm ">Paciente:</label>
                                    </div>
                                    <div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <input type="text" name="requisicao.paciente.descricao" value="${requisicao.paciente.descricao}" class="form-control input-sm" placeholder="Nome do Paciente">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">Setor:</label>
                                    </div>
                                    <div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <input type="text" class="form-control input-sm" placeholder="Setor">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

							<div class="form-example-int form-horizental">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
											<label class="hrzn-fm">Período:</label>
										</div>
										
										<div class="col-lg-1 col-md-2 col-sm-2 col-xs-6">
											<div class="form-group nk-datapk-ctm form-elet-mg" id="data_1">
												<div class="input-group date nk-int-st">
													<span class="input-group-addon"></span>
													
													<input name="requisicao.dataCriacao" placeholder="Data inicial"  id="dataCriacao" onKeyUp="consist_date(this);pulaCampo(this,'dataModificacao');" type="text" class="form-control" value="<fmt:formatDate pattern="dd/MM/yyyy" value="${requisicao.dataCriacao}"/>"  >
													
												</div>
											</div>
										</div>
										
										<div class="col-lg-1 col-md-2 col-sm-2 col-xs-6">
											<div class="form-group nk-datapk-ctm form-elet-mg" id="data_1">
												<div class="input-group date nk-int-st">
													<span class="input-group-addon"></span>
													<input name="requisicao.dataModificacao" placeholder="Data final" id="dataModificacao" onKeyUp="consist_date(this);" type="text" class="form-control" value="<fmt:formatDate pattern="dd/MM/yyyy" value="${requisicao.dataModificacao}"/>"  >
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>


                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">Setor</label>
                                    </div>
                                    <div class="col-lg-10 col-md-7 col-sm-7 col-xs-12">
                                 <div class="fm-checkbox">
                                    <label><input class="i-checks" name="requisicao.status" type="radio" value="3" ${requisicao.status == 3 ? 'checked' : ''}><i></i>Em An&aacute;lise</label> 
			  						<label><input class="i-checks" name="requisicao.status" type="radio" value="5" ${requisicao.status == 5 ? 'checked' : ''}><i></i>Aguardando Libera&ccedil;&atilde;o</label> 			  			  			  			  
			  						<label><input class="i-checks" name="requisicao.status" type="radio" value="4" ${requisicao.status == 4 ? 'checked' : ''}><i></i>Finalizada</label> 			  			  			  			  			  
              						<label><input class="i-checks" name="requisicao.status" type="radio" value="" ${requisicao.status == null ? 'checked' : ''}><i></i>Todos</label>
                                    
                                    
                                </div>
                                    </div>
                                </div>
                            </div>
                        </div>



							<div class="form-example-int">
                            <div class="row grupobotoes">
                                 <button class="btn btn-xs btn-success notika-btn-success botoesform">Pesquisar</button>
                                 <a class="btn btn-xs  btn-success notika-btn-success botoesform" href="requisicao.formlista.logic">Recarregar</a>
                                 
                            </div>
                        </div>
                      
                      </form>
                      
                            
                  </div>
						 <div class="table-responsive"> 
						 		
								<div id="displaytag_lista"></div>
								
						</div>
						
                    </div> <!-- end data-table-list -->
                </div>
            </div>
        </div>
    </div>
    <!-- Data Table area End-->

 	
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



<%@ include file="/template/rodapejs.jsp" %>

<script type="text/javascript">
let offset = 0;
$(document).ready(function () {
	var dados = {} // parametros, se houver
	$.post('requisicao.lista.logic', dados , function(retorna){
		//Subtitui o valor no seletor id="displaytag_lista"
		$("#displaytag_lista").html(retorna);
	});
	
	$(document).on('click','.btn_carregar',function() {
		var data = $("#form1").serialize();
		var url = $("#form1").attr("action");
		$.post(url, data, function(retorna) {
			$("#displaytag_lista").append(retorna);
		});
	});

});
    
$("#displaytag_lista").scroll(function() {
    if ($(this).scrollTop() + $(this).height() >= ($(this).get(0).scrollHeight * 0.99)  ) {
	  	var data = $("#form1").serialize();
		var url =  $("#form1").attr("action");
		$.post(url, data, function(retorna) {
			$("#displaytag_lista").append(retorna);
		});
      
    } // fim do if
  }); // fim scroll
  
  $(window).scroll(function() {
	    
	    if ($(window).scrollTop() == $(document).height() - $(window).height() )  {
	    	offset = offset + 50;
	    	$("#offset").val(offset);
	    	$("#qtde").val(12568);
		  	var data = $("#form1").serialize();
			var url =  $("#form1").attr("action");
			$.post(url, data, function(retorna) {
				$("#displaytag_lista").append(retorna);
			});
	      
	    } // fim do if
	  }); // fim scroll


	$("#form1").submit(function(e) {
		var data = $(this).serialize();
		var url = $(this).attr("action");
		var form = $(this); // Add this line
		// $("#displaytag_lista").fadeOut("slow");
		$("#displaytag_lista").animate({
			"opacity" : "0.6"
		}, 100);
		$.post(url, data, function(retorno) {
			try {
				$("#displaytag_lista").html(retorno);
				$("#displaytag_lista").animate({
					"opacity" : "1"
				}, 50);
			} catch (e) {
				console.log("json encoding failed");
				return false;
			}
		});
		return false;
	});

	$(document).ready(
			function() {
				$(document).on('click','.view_data',function() {
							var idreq = $(this).attr("id");

							$.post(
									'requisicao.detalhesHistorico.logic?requisicao.id='
											+ idreq, function(retorna) {
										//Carregar o conteúdo para o usuário
										$("#visul_usuario").html(retorna);
										$('#visulUsuarioModal').modal('show');
									});

							$('#visulUsuarioModal').modal('show');

						});
			})

	$(function() { /*LISTAGEM DA TABELA*/
		$("#item").dataTable();
		$('#example1').dataTable({
			"bPaginate" : true,
			"bLengthChange" : false,
			"bFilter" : false,
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : false
		});
	});
</script>

<%@ include file="/template/rodapefinal.jsp" %>


