package br.com.system.test;

import java.util.Date;
import java.util.List;

import org.codehaus.jackson.annotate.JsonTypeInfo.Id;

import br.com.system.bo.ConfiguracaoBO;
import br.com.system.bo.HospedagemBO;
import br.com.system.dao.*;
import br.com.system.model.Configuracao;
import br.com.system.model.Hospedagem;

public class Test {
	public static void main(String[] args) throws Exception {
		
		String valor = "1234";
		
		Integer valorHash = valor.hashCode();
		
		System.out.println(valorHash);
		
		String valor2 = "1234";
		
		Integer valor2Hash = valor2.hashCode();
	
		System.out.println(valor2Hash);
	/*
		try {
			Configuracao conf = new Configuracao();
			conf.setCnpj("121222.212");
			conf.setDescricao("qualquer");
			
			ConfiguracaoBO bo = new ConfiguracaoBO(new Dao());
			bo.salvar(conf);
			
			System.out.println("salvo!");
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
			


		Hospedagem h = new Hospedagem();
		h.setDominioPrincipal("exemplo.com");
		h.setDominioSecundario("exemplo2.com");
		h.setIdentificador("saushau");
		h.setMensalidade((double) 12121);
		h.setNomeContato("nome qualquer");
		h.setStatus(1);
		h.setTelefoneContato("2199201");
		h.setDataCriacao(new Date() );
		h.setDataModificacao(new Date());
		h.setIdUsuarioCriador((long) 1);
		h.setIdUsuarioModificador((long) 2);
		HospedagemBO boH = new HospedagemBO(new Dao());
		
		try {
			boH.salvar(h);
			System.out.println("registro Hospedagem salvo com sucesso");
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		*/
		
	}	
}
