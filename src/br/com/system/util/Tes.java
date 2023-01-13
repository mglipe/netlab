package br.com.system.util;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

import com.towel.math.Expression;
  
public class Tes {  
    public static void main(String[] args) throws IOException {
    /*URL yahoo = new URL("http://localhost:8080/netlab/admin.licenca.logic?posto.id=500");  
    BufferedReader in = new BufferedReader(new InputStreamReader(yahoo.openStream()));  
    String chave = in.readLine();
    System.out.println(chave);*/
    	
    System.out.println("18/02/2013".hashCode());
    
    
    Expression exp = new Expression("(15+5)*8+(5-6/(5+5))");
    System.out.println(exp.resolve());;
    System.out.println(org.hibernate.cfg.Environment.VERSION);
    }
}