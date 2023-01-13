package br.com.system.util;

public class Util {

	public String[] getForward(String url){
		int pos = 0;
		int tam=0;
		String entidade ="";
		String logica ="";
		String result ="";
		if ((url!=null)&&(!url.equals(""))){
		    tam = url.length();
		    //pega o entidade
		    pos = url.indexOf("."); 
		    entidade = url.substring(0,pos); 
		    url = url.substring(pos+1,tam);
		    // pega o logica
		    tam = url.length();
			pos = url.indexOf(".");
			logica = url.substring(0,pos);
			url = url.substring(pos+1,tam);
			// pega o resultado
			result = url;
		}
		String forward[] = {entidade,logica,result};
				
		return forward;
		}	
	
}
