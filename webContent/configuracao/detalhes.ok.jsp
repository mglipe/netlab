<%@ include file="../template/cabecalhomodal.jsp"%>





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
                                        <label class="hrzn-fm ">ID Configuração:</label>
                                    </div>
                                    <div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <label >${configuracao.id}</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 tabhead">
                                        <label class="hrzn-fm ">Razão Social:</label>
                                    </div>
                                    <div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                             <label >${configuracao.razaoSocial}</label>
                                           
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
                                             <label >${configuracao.cnpj}</label>
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
                                             <label >${configuracao.endereco}</label>
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
                                             <label >${hospedagem.urlPainel}</label>
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
                                             <label >${hospedagem.urlChat}</label>
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
                                             <label >${hospedagem.urlChamado}</label>
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
                                             <label >${hospedagem.usuarioChamado}</label>
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
                                             <label >${hospedagem.usuarioPainel}</label>
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
                                        <label class="hrzn-fm">Status:</label>
                                    </div>
                                    <div class="col-lg-10 col-md-7 col-sm-7 col-xs-12">
                                    <label > ${configuracao.status}</label>
                                
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

<%@ include file="../template/rodapejs.jsp"%>

<%@ include file="../template/rodapefinal.jsp"%>

