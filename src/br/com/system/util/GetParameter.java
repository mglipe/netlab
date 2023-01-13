/*
 * Criado em 08/11/2006
 *
 * Para alterar o gabarito para este arquivo gerado vá para
 * Janela&gt;Preferências&gt;Java&gt;Geração de Códigos&gt;Código e Comentários
 */
package br.com.system.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

/**
 * @author postgres
 *
 * Para alterar o gabarito para este comentário do tipo gerado vá para
 * Janela&gt;Preferências&gt;Java&gt;Geração de Códigos&gt;Código e Comentários
 */
public class GetParameter {
	public HttpServletRequest request;
	
	public GetParameter(HttpServletRequest request){
			this.request=request;
	};
		public int getInt(String parametro){
			 return getInt(parametro,0);
		}

		public int getInt(String parametro,int Default){
			 String par = request.getParameter(parametro);
			 int i=Default;
			 if(par!=null&&!par.equals(""))i=Integer.parseInt(par);
			 return i;
		}
		
		public boolean getBoolean(String parametro){
			return getBoolean(parametro, false);
		}
		
		public boolean getBoolean(String parametro,boolean Default){
			 String par = request.getParameter(parametro);
			 boolean i=Default;
			 int k=0;
			 if(par!=null&&!par.equals("")){
				 k=Integer.parseInt(par);
				 if(k==1)i=true;else if(k==0)i=false;
			 }
			 return i;
		}

		
		
		public Long getLong(String parametro){
			 String par = request.getParameter(parametro);
			 Long i=Long.valueOf(0);
			 if(par!=null&&!par.equals(""))i=Long.valueOf(par);
			 return i;
		}

		public String getString(String parametro){
			 return getString(parametro,"");
		}

		public String getString(String parametro,String Default){
			 String s=request.getParameter(parametro);
			 if(s==null||s.equals(""))s=Default;
			 return s;
		}
		
		public float getFloat(String parametro){
			 String par = request.getParameter(parametro);
			 float i=0;
			 if(par!=null&&!par.equals(""))i=Float.parseFloat(par);
			 return i;
		}

		public Date getDate(String parametro){
			Date data = null;
			String dataTexto=null;
			String par = request.getParameter(parametro);
			if(par!=null && !par.equals("")){
				dataTexto = new String(par);
				SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
				format.setLenient(false);
				try {
					data = format.parse(dataTexto);
				} catch (Exception e) {
					// TODO Bloco de captura gerado automaticamente
					e.printStackTrace();
				}
			}
			 return data;
		}
		public HttpServletRequest getRequest() {
			return request;
		}
		public void setRequest(HttpServletRequest request) {
			this.request = request;
		}
		
};

