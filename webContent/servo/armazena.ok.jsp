 <%@ include file="/template/cabecalhoCadastro.jsp" %>
 
       
 OK
       


<%@ include file="/template/rodapejs.jsp" %>

<script type="text/javascript">

$(document).ready(function () {
/*	var dados = {} // parametros, se houver
	$.post('servo.lista.logic', dados , function(retorna){
		//Subtitui o valor no seletor id="displaytag_lista"
		$("#displaytag_lista").html(retorna);
	});*/

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
		
			$.post('servo.detalhesHistorico.logic?servo.id='+idreq,  function(retorna){
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


