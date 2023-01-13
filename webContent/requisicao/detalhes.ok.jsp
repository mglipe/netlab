 <%@ include file="/template/cabecalho.jsp" %>
 
       
 
 	  <!-- Data Table area Start-->
    <div class="data-table-area">
        <div >
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                            <h4 >Detalhes da Requisição</h4>
                      
                      
                      
                         <form id="form1"method="POST" action="requisicao.lista.logic">   
                         <input name="requisicao.pesquisar" type="hidden" value="1">
                         
                        <div class="form-example-int form-horizental ">
                            <div class="form-group">
                                <div class="row ">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm ">ID Requisição:</label>
                                    </div>
                                    <div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <label >${requisicao.id}</label>
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
                                             <label >${requisicao.paciente.descricao}</label>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">Setor/Convênio:</label>
                                    </div>
                                    <div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                             <label >${requisicao.setor.descricao} :: ${requisicao.convenio.descricao}</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">Recepcionista:</label>
                                    </div>
                                    <div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                             <label >${requisicao.recepcionista.descricao}</label>
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
                                             <label ><fmt:formatDate pattern="dd/MM/yyyy HH:mm" value="${requisicao.dataCriacao}"/></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">Sequência:</label>
                                    </div>
                                    <div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                             <label >001.030919.006</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>                        


                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">Situação:</label>
                                    </div>
                                    <div class="col-lg-10 col-md-7 col-sm-7 col-xs-12">
                                    <label > ${requisicao.situacao}</label>
                                
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
								<span id="displaytag_lista"></span>
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

$(document).ready(function () {
	var dados = {} // parametros, se houver
	$.post('requisicao.listaexames.logic?requisicao.id=${requisicao.id}', dados , function(retorna){
		//Subtitui o valor no seletor id="displaytag_lista"
		$("#displaytag_lista").html(retorna);
	});

});
    

$("#form1").submit(function(e) {
	  var data = $(this).serialize();
	  var url = $(this).attr("action");
	  var form = $(this); // Add this line
	 // $("#displaytag_lista").fadeOut("slow");
	  $("#displaytag_lista").animate({"opacity":"0.6"}, 100);
	  $.post(url, data, function(retorno) { 
	    try {
	    	$("#displaytag_lista").html(retorno);
      	    $("#displaytag_lista").animate({"opacity":"1"}, 50);
	    } catch (e) {
	        console.log("json encoding failed");
	        return false;
	    }
	});
	  return false;
	});
    
$(document).ready(function(){
	$(document).on('click','.view_data', function(){
		var idreq = $(this).attr("id");
		
			$.post('requisicao.detalhesHistorico.logic?requisicao.id='+idreq,  function(retorna){
				//Carregar o conteúdo para o usuário
				$("#visul_usuario").html(retorna);
				$('#visulUsuarioModal').modal('show'); 
			});
		
		
		$('#visulUsuarioModal').modal('show'); 
		
	});
})


    
      $(function () {  /*LISTAGEM DA TABELA*/
        $("#item").dataTable();
        $('#example1').dataTable({
          "bPaginate": true,
          "bLengthChange": false,
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false
        });
      });
      
   
      
</script>

<%@ include file="/template/rodapefinal.jsp" %>

