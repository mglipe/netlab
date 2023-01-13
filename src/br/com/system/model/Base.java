package br.com.system.model;
/*
 * Autor Prof: Jefferson de Sousa Silva
 */
import static javax.persistence.GenerationType.IDENTITY;

import java.lang.reflect.InvocationTargetException;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;

import br.com.system.util.Merge;

@MappedSuperclass
public class Base extends BaseSemDes {
	
	protected String descricao;

	@Column(name = "descricao", unique = true)
	public String getDescricao() {
		return this.descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = (descricao != null ? descricao.trim() : descricao );
	}

	
 }
