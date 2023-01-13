package br.com.system.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Set;

import br.com.system.dao.Dao;


public class Merge {
	
	public static final Object atualiza(Object dto,Dao dao) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
	    Class classeBase = dto.getClass();
	    Object dtoBanco = dto;
	    if(!isNovo(dto)){
	    	dtoBanco = dao.procura((Long)pegaValorId(dto), classeBase);
	    	Method metodoGet =null;
	    	Object valorRaptor=null;
	    	Object valorBanco=null;
	    	boolean iguais = true;
	    	Object[] parametroGet  = {};
	    	Object[] parametroSet = {null};
	    	for(Class classe = classeBase; classe != null; classe = classe.getSuperclass()) // varre todos os atributos da classe
	    		for(Field atributo : classe.getDeclaredFields()){
	    			iguais = false;
	    			metodoGet = getMetodo(classeBase, atributo.getName(), "get"); //pega o metodo get do atributo
	    			// 	valorRaptor é o valor que veio da visão
	    			valorRaptor = metodoGet.invoke(dto, parametroGet); //invoca o metodo get do atributo e pega seu valor
	    			// valorBanco é o valor que está no Banco de Dados
	    			valorBanco = metodoGet.invoke(dtoBanco, parametroGet); //invoca o metodo get do atributo e pega seu valor
	    			if(valorBanco!=null)// valorBanco pode ser nulo no Banco de Dados
	    				iguais = valorBanco.equals(valorRaptor);
	    			// Se o valorRaptor for nulo significa que o campo desse atributo não estava no formulário então ele
	    			// 	é um campo de controle ou seja é atualizado internamente pelo proprio sistema
	    			// Atributos do tipo Set não não podem ser atualizados pois esses não vão para a visão
	    			// E só atualizaremos os atributos com valores diferentes 
//	    			if( ( valorRaptor!=null || atributo.getName().contains("valor") || atributo.getName().contains("texto") ) && atributo.getType()!= Set.class && !iguais ){
    				if( ( valorRaptor!=null  ) && atributo.getType()!= Set.class && !iguais ){	    				
	    				parametroSet[0] = valorRaptor;
	    				// 	invoca o metodo set do atributo persistente(banco) passando o valor do atributo transiente(visão) 
	    				Method metodo = getMetodo(classeBase, atributo.getName(), "set");
	    				if(metodo!=null)
	    					metodo.invoke(dtoBanco, parametroSet);
	    			}	
	    		}
	     }
	    return dtoBanco;
	  }

	public Method[] getMetodos(Class classe,String tipo){
		Method[] metodos;
		ArrayList<Method> arraymetodo = new ArrayList<Method>();
		int i=0;
		for(Method metodo : classe.getMethods()){
			if(metodo.getName().substring(0,3).equals(tipo)&& !metodo.getName().equals("getClass"))
				arraymetodo.add(metodo);
		}
		metodos = new Method[arraymetodo.size()];
		for(Method metodo : arraymetodo)
			metodos[i++]=metodo;
		return metodos;
	}
	
	public Method[] getModificadores(Class classe,String atributo){
		Method[] metodos;
		ArrayList<Method> arraymetodo = new ArrayList<Method>();
		int i=0;
		for(Method metodo : classe.getMethods()){
			if(metodo.getName().substring(0).toLowerCase().contains(atributo.toLowerCase()))
				arraymetodo.add(metodo);
		}
		metodos = new Method[arraymetodo.size()];
		for(Method metodo : arraymetodo)
			metodos[i++]=metodo;
		return metodos;
	}

	public static Method getMetodo(Class classe,String atributo,String tipo){
		Method m = null;
		for(Method metodo : classe.getMethods()){
			if(metodo.getName().substring(3).toLowerCase().equals(atributo.toLowerCase())
			 && ( (metodo.getName().substring(0,3).equals(tipo) || (metodo.getName().substring(0,2).equals("is")) )  
			 && !metodo.getName().equals("getClass"))){
				m = metodo;
				break;
			 }	
		}
		return m;
	}

	public static void setNovo(Object dto,boolean novo)throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
	    Class classeBase = dto.getClass();
	    Method metodoSet = getMetodo(classeBase, "novo", "set");
	    Object[] parametroSet = {novo};
	    if (metodoSet!=null)
	    	metodoSet.invoke(dto, parametroSet);
	}
	
	public static boolean isNovo(Object dto)throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
	    Object valor = pegaValorId(dto);
	    return valor==null || ((Long)valor).intValue()==0; 
	}
	
	public static boolean notNull(Object dto)throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
	    if(dto==null)
	    	return false;
	    Object valor = pegaValorId(dto);
	    return valor!=null && ((Long)valor).intValue()!=0; 
	}

	public static boolean isNull(Object dto)throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
	    if(dto==null)
	    	return true;
	    Object valor = pegaValorId(dto);
	    return valor == null || ((Long)valor).intValue()==0; 
	}

	
	public static Object pegaValorId(Object dto) throws IllegalAccessException, InvocationTargetException {
		Class classeBase = dto.getClass();
	    Object[] parametroGet  = {};
	    Method metodoGet = getMetodo(classeBase, "id", "get");
	    Object valor = null;
	    if (metodoGet!=null)
	    	valor = metodoGet.invoke(dto, parametroGet);
		return valor;
	}
	
	public static void setValor(Object dto,String campo,Object valor) throws IllegalAccessException, InvocationTargetException {
		Class classeBase = dto.getClass();
		Object[] parametroSet = {valor};
	    Method metodoSet = getMetodo(classeBase, campo, "set");
	    if (metodoSet!=null)
	    	metodoSet.invoke(dto, parametroSet);
	}
	
	public static Object pegaValor(Object dto,String campo) throws IllegalAccessException, InvocationTargetException {
		Class classeBase = dto.getClass();
	    Object[] parametroGet  = {};
	    Method metodoGet = getMetodo(classeBase, campo, "get");
	    Object valor = null;
	    if (metodoGet!=null)
	    	valor = metodoGet.invoke(dto, parametroGet);
		return valor;
	}

}
 

	