package br.com.system.model;
/*
 * Autor Prof: Jefferson de Sousa Silva
 */
import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;

@MappedSuperclass
public abstract class ControleSemDes extends BaseSemDes{
	
	private Date dataCriacao;

	private Long idUsuarioCriador;

	private Date dataModificacao;

	private Long idUsuarioModificador;
	
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

	/*
	public void setMacTime(Usuario usuario) {
		this.setMacTime(usuario, 1);
	}
	public void setMacTime(Usuario usuario,int status) {
		if(isNovo()){
			setIdUsuarioCriador(usuario.getId());
			setDataCriacao(new Date());
			setStatus(status);
		}else{
			setIdUsuarioModificador(usuario.getId());
			setDataModificacao(new Date());
		}	
	} 
	*/
 }
