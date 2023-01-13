package br.com.system.test;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class conexaoBanco {
	public static void main(String[] args) {
		Configuration conf = new AnnotationConfiguration();
		conf.configure();
		SessionFactory sessao = conf.buildSessionFactory();
		sessao.openSession();
	}
}
