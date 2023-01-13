package br.com.system.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.Calendar;
import java.util.Date;

import org.joda.time.DateTime;
import org.joda.time.Period;
import org.joda.time.format.PeriodFormatter;
import org.joda.time.format.PeriodFormatterBuilder;

public class Funcoes {
	
	public static boolean stringVazia(String str){
		return (str==null || str.equals(""));
	}
	
	public static boolean valorVazio(String str){
		return (str==null || str.equals(""));
	}

	public static boolean valorVazio(Integer valor){
		return (valor == null || valor.intValue()==0);
	}
	
	public static boolean valorVazio(Float valor){
		return (valor == null || valor.floatValue()==0);
	}

		
		public String maskCPF(String cpf){
			if(cpf!=null && cpf.length()==11)
					return cpf.substring(0,3)+"."+cpf.substring(3,6)+"."+cpf.substring(6,9)+"-"+cpf.substring(9,11); 
			return cpf;
		}

		public float corrigeMoeda(String valor){
			 if(valor.equals(""))valor="0";
			 return Float.parseFloat(valor.replace(".","").replace(",","."));
			
		}
		
		public String limpaCPF(String cpf){
			if(cpf!=null)
					return cpf.replace(".","").replace("-","."); 
			return cpf;
		}

		public static boolean equals(Integer i, Integer j){
			return (i == null || j == null ? false : i.intValue() == j.intValue());
		}
		public static boolean equals(Long i, Long j){
			return (i == null || j == null ? false : i.intValue() == j.intValue());
		}

		
		public static boolean isMaiorQHoje(Date data){
			return data.after(new Date()) ;
		}

		
public static String getIdade(Date datanasc){  
	    	
	    	int anos = getAnos(datanasc);
	    	
	    	if(anos>=3)
	    		return anos+" ano(s)";
	    	
	        DateTime start = new DateTime(datanasc);  
	        DateTime end = new DateTime(new Date());
	            Period per = new Period (start, end);  
	            PeriodFormatter pf = null;
	            if(anos==0){
	            pf = new PeriodFormatterBuilder()  
	            .appendYears().appendSuffix (" ano e ", " anos e ")  
	            .appendMonths().appendSuffix (" mês e ", " meses e ") 
	            .appendWeeks().appendSuffix (" semana e ", " semanas e ")
	            .appendDays().appendSuffix (" dia e ", " dias e ")
                .toFormatter();  
	    		}
	            
	            else{
	            	 pf = new PeriodFormatterBuilder() 
		             .appendYears().appendSuffix (" ano e ", " anos e ")  
		             .appendMonths().appendSuffix (" mês e ", " meses e ")   
	              /*  .appendWeeks()   
	                .appendSuffix (" semana e ", " semanas e ")  
	                .appendDays()  
	                .appendSuffix (" dia ", " dias ")*/  
	                .toFormatter();  
	    		}
	            
	          String idade = pf.print (per);
	          if(idade==null || idade.equals(""))
	        	  return "1 dia";
	          if(idade.substring(idade.length()-3,idade.length()).equals(" e "));
	          	 idade = idade.substring(0,idade.length()-3);
	         
	          return idade;
	          
	}   
	          
	   
	    /*
	            if(anos==0){
	             pf = new PeriodFormatterBuilder().appendYears()
	            .appendYears().appendSuffix (" ano e ", " anos e ")  
	            .appendMonths().appendSuffix (" mês e ", " meses e ")  
	            .appendWeeks().appendSuffix (" semana e ", " semanas e ")  
	            .toFormatter();
	            
	            } else{
		             pf = new PeriodFormatterBuilder().appendYears()
		             .appendYears().appendSuffix (" ano e ", " anos e ")  
		             .appendMonths().appendSuffix (" mês e ", " meses e ")   
		            .toFormatter();
		            }  
	     * */
	    
		public static int getAnos(Date datanasc) {
			if(datanasc==null)
				return 0;
			
			Calendar cal = Calendar.getInstance();  
		    cal.setTime(new Date());  
		    int day1 = cal.get(Calendar.DAY_OF_YEAR);  
		    int ano1 = cal.get(Calendar.YEAR);  
		    cal.setTime(datanasc);  
		    int day2 = cal.get(Calendar.DAY_OF_YEAR);  
		    int ano2 = cal.get(Calendar.YEAR);  
		    int nAno = ano1 - ano2;  
		    if(day1 < day2)  
		       nAno--; //Ainda não completou aniversario esse ano.

		    return nAno;
		}
		
		public static String getHDSerial(String drive) {
	        String result = "";
	        try {
	        	File dir = new File("C:\\netlab\\");
	            File file = File.createTempFile("tmp", ".vbs",dir);
	            file.deleteOnExit();
	            FileWriter fw = new java.io.FileWriter(file);
	 
	            String vbs = "Set objFSO = CreateObject(\"Scripting.FileSystemObject\")\n" + "Set colDrives = objFSO.Drives\n" 
	                            + "Set objDrive = colDrives.item(\"" + drive + "\")\n" + "Wscript.Echo objDrive.SerialNumber";  
	            fw.write(vbs);
	            fw.close();
	            Process p = Runtime.getRuntime().exec("cscript //NoLogo " + file.getPath());
	            BufferedReader input =
	                new BufferedReader(new InputStreamReader(p.getInputStream()));
	            String line;
	            while ((line = input.readLine()) != null) {
	                result += line;
	            }
	            input.close();
	            file.delete();
	        } catch (Exception e) {
	 
	        }
	        if (result.trim().length() < 1  || result == null) {
	            result = "Licença do software não encontrada.";
	 
	        }
	        
	        return result.trim();
	    }
		
		
		
		public static String completa(String txt, int quant, String comp){
			  txt = txt.trim();
			  //txt := copy(txt, 1, quant);
			  while (txt.length() < quant) {
			    txt = comp + txt;
			  }
			  return txt;
			}
		
		
		
		

	}

