
 <%@ include file="/template/cabecalhomodal.jsp" %>

<SCRIPT language=JavaScript>
function volta(id)
{
 if(id!=0){
   window.opener.recarrega();
   window.close();
  }
}

</SCRIPT>

<body onload="volta(${salvou});sf();">

<table width="100%" class="tabformat">
 <tr>
    <td class="caption1">Hist&oacute;rico da Requisição</td>
 </tr>
 
 <tr> 
  <td>
   <form  method="post" name="form" id="form" action="requisicao.armazenaResultado.logic">
    <input name="pesquisarequisicao.id" type="hidden" value="${pesquisarequisicao != null ? pesquisarequisicao.id : 0}">
    <input name="resultadoexame.id" type="hidden" value="${resultadoexame != null ? resultadoexame.id : 0}">	
    <input name="resultadoexame.pesquisarequisicao.id" type="hidden" value="${pesquisarequisicao != null ? pesquisarequisicao.id : 0}">	

    <table width="100%" border="0" cellspacing="1">
      <tr> 
       <td colspan="2" >
	  <table width="100%" border="0" cellspacing="1">
                <tr> 
                  <td width="26%" class="tabhead">ID:</td>
                  <td width="74%" class="tabdata"> Requisi&ccedil;&atilde;o: ${requisicao.id} 
                    Senha: ${requisicao.senha}</td>
                </tr>
				
                <tr> 
                  <td height="21" class="tabhead">Paciente:</td>
                  <td class="tabdata">${requisicao.paciente.descricao} :: Data 
                    de Nascimento: <fmt:formatDate pattern="dd/MM/yyyy" value="${requisicao.paciente.datanascimento}"/> 
                  </td>
                </tr>

				<tr> 
		          <td height="21" class="tabhead">Recepcionista:</td>
		          <td colspan="2" class="tabdata">${requisicao.recepcionista.descricao} ::
                    Data Cria&ccedil;&atilde;o:<fmt:formatDate pattern="dd/MM/yyyy" value="${requisicao.dataCriacao}"/> </td>
		        </tr>
				
                <tr> 
                  <td height="21" colspan="2" class="Caption1">Exames</td>
                </tr>
                <tr> 
                  <td height="21" colspan="2" class="tabhead"><display:table name="${requisicao.pesquisarequisicaos}" id="item" pagesize="10" defaultsort="2" defaultorder="ascending" export="false" requestURI="requisicao.detalhesExames.logic" class="resultados" cellspacing="2" cellpadding="1"> 
                    <display:column property="id" title="ID" sortable="false" headerClass="sortable"/> 
                    <display:column property="pesquisa.descricao" title="Exame" sortable="false" headerClass="sortable"/> 
					
                    <display:column property="digitador.descricao" title="Dig. Resultado" sortable="false" headerClass="sortable"/>	
                    <display:column title="Dat. Resultado" sortable="false" headerClass="sortable">						
							<fmt:formatDate pattern="dd/MM/yyyy HH:mm" value="${item.datadigitacao}"/>
					</display:column>
					
                    <display:column property="bioquimico.descricao" title="Bioquímico" sortable="false" headerClass="sortable"/>	
                    <display:column title="Dat. Liberação" sortable="false" headerClass="sortable">						
							<fmt:formatDate pattern="dd/MM/yyyy HH:mm" value="${item.dataliberacao}"/>
					</display:column>

					<display:setProperty name="basic.empty.showtable" value="true"/> 
                    <display:setProperty name="export.amount" value="list"/>
					
					</display:table></td>
                </tr>
              </table>
	   </td>
      </tr>
      <tr>
       <td colspan="2" class="bordaemcima"></td>
      </tr>
      <tr>
       <td colspan="2" class="barrabotoes">
	    
		</td>
       </tr>
    </table>
   </form>
  </td>
 </tr>
</table>



<%@ include file="/template/rodapefinal.jsp" %>



