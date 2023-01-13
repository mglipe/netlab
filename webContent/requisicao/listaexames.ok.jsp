 <%@ include file="/template/tags.jsp" %>
 
  <display:table name="${requisicao.pesquisarequisicaos}" id="item" pagesize="100" defaultsort="1" defaultorder="ascending" export="false" requestURI="requisicao.detalhes.logic" class="table table-striped table-hover table-condensed table-bordered" cellspacing="2" cellpadding="1"> 
                  <display:column property="id" title="ID" sortable="false" headerClass="sortable"/> 
                  <display:column property="pesquisa.sigla" title="Cód" sortable="false" headerClass="sortable"/> 
                  <display:column property="pesquisa.descricao" title="Exame" sortable="false" headerClass="sortable"/> 
                  <display:column property="materialbiologico.descricao" title="Material" sortable="false" headerClass="sortable"/>	
                  <display:column title="Dt. Coleta" media="html" headerClass="options-column" class="options-column"> 
                          <fmt:formatDate pattern="dd/MM/yyyy" value="${item.datacoleta}"/> 
						  <!--
						  <input name="datacoleta${item.id}"  id="datacoleta${item.id}" onKeyUp="consist_date(this);" type="text" class="input" value='<fmt:formatDate pattern="dd/MM/yyyy" value="${item.datacoleta}"/>'  size="12" maxlength="10"> 
                          <img src="img/calendario.gif" id="fdatacoleta${item.id}" alt="Calendário" border="0"> 
                          <script type="text/javascript">var campo="datacoleta${item.id}"; new Calendar({inputField: campo,dateFormat: "%d/%m/%Y",trigger: "f"+campo,bottomBar: false,onSelect: function() {this.hide();}});</script>
						  -->
						  
                  </display:column>
                   <display:column title="Coletada" media="html" headerClass="options-column" class="options-column"> 
                  <c:if test="${item.status != 5}"> 
                  <input name="pesquisa${item.id}" type="checkbox"  ${item.coletada == 1 ? 'checked' : ''} value="${item.id}" onChange="javascript:recebeAmostra(${item.id})">
                  </c:if>
				  </display:column> 
				  <display:column title="Valor (R$)" sortable="false" headerClass="sortable"> 
                  R$ <fmt:formatNumber value="${item.preco}" pattern="#,##0.00"/> 
                  </display:column>
				  
				  
				  
				  <display:column property="situacao" title="Situação" sortable="false" headerClass="sortable"/> 
  				  
				  
			
				  
                  <c:if test="${!requisicao.bloqueada || 1==1}">
<display:column title="Ações" media="html" headerClass="options-column" class="options-column"> 
                  <a href="javascript:abrir('relatorio.imprimirEtiquetasPorExame.logic?base.id=${item.id}',330,300,0)">Etiquetas</a>	
                  <c:if test="${item.status < 5 || item.pesquisa.grupoexame.id==11 }"> 
                  <a href="javascript:abrir('requisicao.formapoio.logic?labpesquisa.pesquisarequisicao.id=${item.id}',1000,300)">Lab. 
                  Apoio</a> </c:if> <c:if test="${logado.adm || item.status != 5}"> 
                  <a href="javascript:excluiItem('requisicao.removePesquisa.logic?pesquisarequisicao.id=${item.id}&pesquisarequisicao.requisicao.id=${requisicao.id}&#exames')">Excluir</a> 
                  </c:if>
                   </display:column> 
                   </c:if> 
                  <display:setProperty name="basic.empty.showtable" value="true"/> 
                  <display:setProperty name="export.amount" value="list"/> 
                  </display:table> 

