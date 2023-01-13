package br.com.system.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="usuario")
public class Usuario extends Base {
	
	@Column
	private String login;
	
	@Column
	private Integer senha;
	
	@Transient
	private String SenhaForm;
	
	
	@Transient
	private String confirmaSenha;

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public Integer getSenha() {
		return senha;
	}

	public void setSenha(Integer senha) {
		this.senha = senha;
	}
	@Transient
	public String getSenhaForm() {
		return SenhaForm;
	}

	public void setSenhaForm(String senhaForm) {
		SenhaForm = senhaForm;
	}
	
	@Transient
	public String getConfirmaSenha() {
		return this.confirmaSenha;
	}
	
	
	public void setConfirmaSenha(String confirmacao) {
		this.confirmaSenha = confirmacao;
	}
	
	
	
}
