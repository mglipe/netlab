 <%@ include file="/template/tags.jsp" %>
 

	<display:table name="listaConfiguracao" id="item" pagesize="100" defaultsort="1" defaultorder="ascending" export="false" requestURI="configuracao.lista.logic" class="table table-striped table-hover table-condensed table-bordered" cellspacing="2" cellpadding="1">
      <display:column property="id" title="ID" sortable="false" headerClass="sortable"/>

      <display:column title="Dt Requisição" sortable="false" headerClass="sortable"> 
      <fmt:formatDate pattern="dd/MM/yyyy" value="${item.datarequisicao}"/> 
	  </display:column> 
	  
      <display:column property="paciente.descricao" title="Paciente" sortable="false" headerClass="sortable"/> 
      <display:column title="Dt. Nascimento" sortable="false" headerClass="sortable"> 
      <fmt:formatDate pattern="dd/MM/yyyy" value="${item.paciente.datanascimento}"/>	
      </display:column>
	  
	  <display:column property="paciente.mae" title="Mãe" sortable="false" headerClass="sortable"/> 
	  <display:column property="qtdeexames" title="Qtde. Exames" sortable="false" headerClass="sortable"/> 
  		    <display:column title="Situação" media="html" headerClass="options-column" class="options-column">
			<span class="label label-success">Aprovado</span>
			</display:column>	
     <display:column property="setor.descricao" title="Posto" sortable="false" headerClass="sortable"/> 		  

		    

			
		    <display:column title="Ações" media="html" sortable="false" headerClass="options-column" class="options-column">
			<c:if test="${ (superUser) }">
			
	
                        <div class="grupobotoes">
                            <a href="requisicao.detalhes.logic?requisicao.id=${item.id}" class="btn btn-default btn-icon-notika" data-toggle="tooltip" data-placement="top" title="Exames"><i class="fas fa-vials"></i></a>                            
                            <button class="btn btn-default btn-icon-notika" data-toggle="tooltip" data-placement="top" title="Comp. de Coleta"><i class="glyphicon glyphicon-print"></i></button>
                            <button id="${item.id}" class="btn btn-default btn-icon-notika view_data" data-toggle="tooltip" data-placement="top" title="Histórico"><i class="fas fa-tasks"></i></button>
                            <button class="btn btn-default btn-icon-notika" data-toggle="tooltip" data-placement="top" title="Etiqueta"><i class="fas fa-barcode"></i></i></button>
                            <button class="btn btn-default btn-icon-notika" data-toggle="tooltip" data-placement="top" title="Alterar"><i class="glyphicon glyphicon-edit"></i></button>
                            <button class="btn btn-default btn-icon-notika" data-toggle="tooltip" data-placement="top" title="Excluir"><i class="glyphicon glyphicon-trash"></i></button>
                        </div>
		  
			</c:if>	
			</display:column>
	      	<display:setProperty name="basic.empty.showtable" value="true"/> <display:setProperty name="export.amount" value="list"/>
      </display:table>
<button class="btn_carregar btn btn-xs btn-success notika-btn-success botoesform">Carregar mais</button>
