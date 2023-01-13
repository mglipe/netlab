package br.com.system.model;
/*
 * Autor Prof: Jefferson de Sousa Silva
 */
import static javax.persistence.GenerationType.IDENTITY;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;

import br.com.system.util.Merge;

@MappedSuperclass
public class BaseSemDes {
	
	protected Long id;
	
	protected Integer status;
	
	@Transient
	protected int pesquisar;
	
	public BaseSemDes() {
		//this.status=1;
	}
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	@Transient
	public boolean isNovo() {
		return (this.id==null || this.id.intValue()==0);
	}
	

	public boolean equals(Object obj) {
		if (obj == null)
			return false;
		try {
			Long idaux = (Long) Merge.pegaValorId(obj);
			if (idaux == null)
				return false;
			return this.id.intValue() == idaux.intValue();
		} catch (IllegalAccessException e) {
			return false;
		} catch (InvocationTargetException e) {
			return false;
		}

	}
	
	@Transient
	public boolean isPesquisar() {
		return pesquisar==1;
	}
	@Transient
	public void setPesquisar(int pesquisar) {
		this.pesquisar = pesquisar;
	}
	
	@Transient
	public int getPesquisar() {
		return pesquisar;
	}

	
	
	
	
 }
