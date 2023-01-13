/*
 * Criado em 04/08/2005
 *
 * Para alterar o gabarito para este arquivo gerado vá para
 * Janela&gt;Preferências&gt;Java&gt;Geração de Códigos&gt;Código e Comentários
 */
package br.com.system.util;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;


public class Constante {

	/*
	 * POSTOS
	 */
	public static final Long PATRIMONIO=92l; 
	
	public static final Long POSTO_SEDE=6l;
	
	public static final Long SETOR_SEDE=1l;
	
	
	/*
	 * GRUPO DE USUARIOS
	*/ 
	public static final Long ADMINISTRADOR=1l;
	
	public static final Long BIOQUIMICO=12l;
	
	public static final Long DIGITADOR=13l;
	
	public static final Long RECEPCIONISTA=14l;
	
	public static final Long SUPER_USER=15l;
	
	/*
	 * CARGOS
	 */
	public static final Long CARGO_BIOQUIMICO=11l;
	

	

	/*
	 * STATUS - REQUISIÇÃO
	 */
	//public static final Integer REQ_CANCELADA=0;  // QUANDO TODOS OS EXAMES FOREM DESCARTADOS OU ERRO NO CADASTRO
	
	public static final Integer REQ_CADASTRANDO=1; // CADASTRANDO EXAMENS 
	
	public static final Integer REQ_TRIAGEM=2;// ENVIADA PARA TRIAGEM
	
	public static final Integer REQ_EM_ANALISE=3; // PELO MENOS UM EXAME FOI APROVADO PARA ANALISE	
	
	public static final Integer REQ_FINALIZADA=4; // QUANDO TODOS OS EXAMES QUE FORAM LIBERADOS
	
	public static final Integer REQ_AGUAR_LIBERACAO=5; // QUANDO TODOS OS EXAMES QUE FORAM APROVADOS TIVEREM LIBERADOS
	
	public static final Integer REQ_DESCARTADAS=6; // QUANDO TODOS OS EXAMES QUE FORAM APROVADOS TIVEREM LIBERADOS
	
	
	
 
	/*
	 * STATUS - PESQUISA_AMOSTRA
	 */
	public static final Integer PESQ_AMO_DESCARTADA=0;
	public static final Integer PESQ_AMO_CANCELADA=6;
	

	public static final Integer PESQ_AMO_CADASTRADA=1;
	
	//public static final Integer PESQ_AMO_TRIAGEM=2;
	
	public static final Integer PESQ_AMO_EM_ANALISE=3;
	
	public static final Integer PESQ_AMO_FINALIZADA=4; // aguardando liberação
	
	public static final Integer PESQ_AMO_LIBERADA=5;
	

	
	public static final Long USER_INTERFACE=1l;// usuario para o interfaceamento
	
	
	/*
	 * REGISTRO
	 */
	public static final String REGISTRO="HGV - PI";
	
	//public static final String HD_SERIAL="-2064509555";
	
	//public static final String HD_SERIAL="";
	
	public static ArrayList<String> seriais(){
		ArrayList<String> aux = new ArrayList<String>();
		aux.add("-2004119059"); // hgv
		aux.add("-2012470210"); // castelo - conceição
		aux.add("170381112");// jefferson
		aux.add("170381112");// jefferson		
		aux.add("1256143009");// acer Jefferson
		aux.add("1078024934");// Nara - Ibiapina -CE
		aux.add("-1267935696");// FLORIANO - PI
		aux.add("-1474675488");// ADAUTO
		return aux;
		
		
	}
	
	public static final Long CIDADE_NINFO=10004l;
	
	public static final Long TIPODOC_NINFO=3L;
	
	/*
	 * EXAMES
	 */
	
	public static final Long EXAME_HOMOGRAMA=37l;
	
	public static final Long EXAME_CONTAGEM_PLAQ=19L;
	
	
	public static boolean isWindows(HttpServletRequest request) {
		return !request.getRealPath(request.getContextPath()).contains("/");
	}
	

}

	
