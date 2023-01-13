<%@ include file="../template/cabecalho.jsp"%>
<%@	page import ="java.sql.*" %>
<%@	page import = "br.com.system.bo.*"%>
<%@	page import = "br.com.system.dao.*"%>
<%@	page import = "br.com.system.model.*"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>
<%

/* lista de resultset de cada banco*/
Object obj=(Object)session.getAttribute("listaResultSet");
ArrayList<ResultSet> lista = null;
if(obj!=null)
	lista=(ArrayList<ResultSet>)obj;
%>

<form action="hospedagem.resultSQL.logic" method="post" class="">
	<div class="container-resultset">
		<div class="col-lg-3 col-md-7 col-sm-7 col-xs-12">
			<div class="nk-int-st">
				<label class="hrzn-fm">ResultSet:</label>
				<textarea rows="5" cols="130" 
					name="hospedagem.resultset">${hospedagem.resultset}</textarea>
			</div>
			<button style="margin-left: 1em;" type="submit"
			class="btn btn-success notika-btn-success waves-effect">Pesquisar</button>
		</div>
	</div>
</form>



<% if(lista!=null){ %>
		<table id="item1" cellpadding="1" class="table table-striped table-hover table-condensed table-bordered" cellspacing="2">
		<thead>
		<tr>
	<%boolean theadOk=false;

	for (ResultSet rs : lista) {
		ResultSetMetaData metaData = rs.getMetaData();
		int numeroDeColunas = metaData.getColumnCount();
		/*if(!theadOk){*/
	    for (int coluna = 1; coluna <= numeroDeColunas; coluna++) { %>
	        <th class="sorted order2"><%=metaData.getColumnName(coluna)%></th>
	    <%}%>
         </tr></thead><tbody>
         <%/* theadOk=true; }*/%>


         
        <%rs.beforeFirst(); while (rs.next()) { %>
        <tr>
        <%
	            for (int coluna = 1; coluna <= numeroDeColunas; coluna++) { %>
	                
	                <td class="sorted order2"><%=rs.getObject(coluna)%></td>
	            <%}%>
	            
	        <%}%>
         </tr>
         
	<%}%>
	</tbody></table>
<%}%>


<%@ include file="../template/rodapejs.jsp"%>
<script>
	$(document)
			.ready(
					function() {

						$(window)
								.load(
										function() {
											$(".laboratorio")
													.each(
															function(index) {
																var contexto = $(
																		this)
																		.attr(
																				"data-contexto");
																var urlContexto = "http://"
																		+ contexto
																		+ ".sistemanetlab.med.br/lis/dados.jsp";
																var urlServidor = "http://"
																		+ contexto
																		+ ".sistemanetlab.med.br/index.jsp";
																var laboratorio = $(this);

																$
																		.ajax(
																				{
																					url : urlContexto,
																					method : 'get',

																				})
																		.done(
																				function(
																						data) {
																					if ($
																							.isEmptyObject(data) == false) {
																						laboratorio
																								.addClass("glyphicon glyphicon-ok");
																						$(
																								".c-loader")
																								.removeClass(
																										"c-loader");

																					}
																				})
																		.fail(
																				function() {
																					laboratorio
																							.addClass("glyphicon glyphicon-alert");
																					$(
																							".c-loader")
																							.removeClass(
																									"c-loader");
																				})

															})

											$("input").focus();

										});

						$('.tabela').hover(function() {
							$("input").focus();
						});

						$(".botao-detalhes").click(function() {
							var url = $(this).attr("data-url");
							console.log(url);
							$.post(url, function(retorno) {
								$(".modal-body").html(retorno);

							})
							$("#detalhes").modal("show");
						})

						$(".botao-deletar")
								.click(
										function(event) {
											var id = $(this).attr('data-id');

											var resultado = window
													.confirm("deseja excluir esse registro");
											if (resultado == true) {
												window.location.href = "configuracao.remover.logic?configuracao.id="
														+ id;
											}
										})

					})

	$(function() { /*LISTAGEM DA TABELA*/

		$('#item1').dataTable({
			"bPaginate" : true,
			"bLengthChange" : true,
			"lengthMenu" : [ 50, 70, 100 ],
			"bFilter" : true,
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : false,
			order: [[1, 'asc']],
		});

		$('#item2').dataTable({
			"bPaginate" : true,
			"bLengthChange" : true,
			"lengthMenu" : [ 50, 70, 100 ],
			"bFilter" : true,
			"bSort" : true,
			"bInfo" : true,
			"bAutoWidth" : false,
			order: [[1, 'asc']],
		});
	});
</script>
<%@ include file="../template/rodapefinal.jsp"%>