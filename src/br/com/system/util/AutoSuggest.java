package br.com.system.util;

public class AutoSuggest {
	private char asp  ='"';
	String script = "";
	  public String getScript(String opcao,String classe){
		  
		  String random = asp+"+ Math.ceil(Math.random() * 100000) +"+asp;
		  script ="<script type="+asp+"text/javascript"+asp+">"+"\r\n";
		  script = script.concat("	var "+opcao+" = {"+"\r\n");
		  script = script.concat("		script:"+asp+"ajax.buscaAjax.logic?"+random+"&classe="+classe+"&json=true&"+asp+","+"\r\n");
		  script = script.concat("		varname:"+asp+"input"+asp+","+"\r\n");
		  script = script.concat("		json:true,"+"\r\n");
		  script = script.concat("		callback: function (obj) { document.getElementById('id"+classe+"').value = obj.id; }"+"\r\n");
		  script = script.concat("	};"+"\r\n");
		  script = script.concat("	var as_json = new AutoSuggest('desc"+classe+"', "+opcao+");"+"\r\n");
		  script = script.concat("</script>"+"\r\n");
		  return script;
	  }
	  
	  public String getScript(String opcao){
		  script = script.concat("<script type="+asp+"text/javascript"+asp+">\r\n");
		  script = script.concat("	_editor_url = "+asp+"javascripts/htmlarea/"+asp+";\r\n");
		  script = script.concat("	_editor_lang = "+asp+"en"+asp+";\r\n");
		  script = script.concat("</script>"+"\r\n");
		  script = script.concat("<script type="+asp+"text/javascript"+asp+" src="+asp+"javascripts/htmlarea/htmlarea.js"+asp+"></script>"+"\r\n");
		  script = script.concat("<script type="+asp+"text/javascript"+asp+">"+"\r\n");
		  script = script.concat("var "+opcao+" = null;"+"\r\n");
		  script = script.concat("function initEditor() {"+"\r\n");
		  script = script.concat("	"+opcao+" = new HTMLArea("+asp+""+opcao+""+asp+");"+"\r\n");
		  script = script.concat("	"+opcao+".generate();"+"\r\n");
		  script = script.concat("	return false;"+"\r\n");
		  script = script.concat("}"+"\r\n");
		  script = script.concat("	HTMLArea.onload = initEditor;"+"\r\n");
		  script = script.concat("	HTMLArea.init();"+"\r\n");
		  script = script.concat("</script>"+"\r\n");
		
		  return script;
	  }
}
