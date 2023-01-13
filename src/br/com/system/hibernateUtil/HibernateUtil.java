package br.com.system.hibernateUtil;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static SessionFactory factory;
	 
	static {
		try {
			Configuration conf = new AnnotationConfiguration();
			conf.configure();
			factory = conf.buildSessionFactory();
		} catch (Exception e) {
			// TODO: handle exception
		}
		//conf.getProperties().se

	}
	
	public static Session getSession(){
		Session sessao = null;
		try{
			sessao = factory.openSession();

		}catch (Exception e) { 
			System.out.println("Erro ao conectar o banco: "+ e.getMessage());
		} 
		return sessao;
		
	}
	
}