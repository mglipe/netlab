package br.com.system.model;
/*
 * Autor Prof: Jefferson de Sousa Silva
 */
import static javax.persistence.GenerationType.IDENTITY;

import java.lang.reflect.InvocationTargetException;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;

import br.com.system.dao.Dao;
import br.com.system.util.Merge;

@MappedSuperclass
public abstract class Controle extends Base{
	
	private Date dataCriacao;

	private Long idUsuarioCriador;

	private Date dataModificacao;

	private Long idUsuarioModificador;
	
	private String identificador;
	
	@Column(name = "dataCriacao", length = 19)
	public Date getDataCriacao() {
		return this.dataCriacao;
	}

	public void setDataCriacao(Date dataCriacao) {
		this.dataCriacao = dataCriacao;
	}

	@Column(name = "idUsuarioCriador")
	public Long getIdUsuarioCriador() {
		return this.idUsuarioCriador;
	}

	public void setIdUsuarioCriador(Long idUsuarioCriador) {
		this.idUsuarioCriador = idUsuarioCriador;
	}

	@Column(name = "dataModificacao", length = 19)
	public Date getDataModificacao() {
		return this.dataModificacao;
	}

	public void setDataModificacao(Date dataModificacao) {
		this.dataModificacao = dataModificacao;
	}

	@Column(name = "idUsuarioModificador")
	public Long getIdUsuarioModificador() {
		return this.idUsuarioModificador;
	}

	public void setIdUsuarioModificador(Long idUsuarioModificador) {
		this.idUsuarioModificador = idUsuarioModificador;
	}
	
	@Column(name="identificador")
	public String getIdentificador() {
		return this.identificador;
	}
	
	public void setIdentificador(String identificador) {
		this.identificador = identificador;
	}

/*	public void setMacTime(Usuario usuario) {
		if(isNovo()){
			setIdUsuarioCriador(usuario.getId());
			setDataCriacao(new Date());
			if(this.status==null)
				setStatus(1);
		}else{
			setIdUsuarioModificador(usuario.getId());
			setDataModificacao(new Date());
		}	
	} 
	
	@Transient
	public Usuario getUsuarioCriador() {
		return (Usuario)new Dao().procura(this.idUsuarioCriador, Usuario.class);
	}
*/
 }
