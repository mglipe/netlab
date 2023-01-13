package br.com.system.model;


import javax.persistence.*;

@Entity
@Table(name="configuracao")
public class Configuracao extends Base{
	

	
	private String razaoSocial;
	private String cnpj;
	private String endereco;
	private String urlPainel;
	private String urlChat;
	private String urlChamado;
	private String usuarioPainel;
	private String usuarioChamado;
	private String dominioPrincipal;
	private String dominioSecundario;
	

	
	public String getDominioSecundario() {
		return dominioSecundario;
	}
	public void setDominioSecundario(String dominioSecundario) {
		this.dominioSecundario = dominioSecundario;
	}
	public String getDominioPrincipal() {
		return dominioPrincipal;
	}
	public void setDominioPrincipal(String dominioPrincipal) {
		this.dominioPrincipal = dominioPrincipal;
	}
	public String getRazaoSocial() {	
		return razaoSocial;
	}
	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}
	public String getCnpj() {
		return cnpj;
	}
	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getUrlPainel() {
		return urlPainel;
	}
	public void setUrlPainel(String urlPainel) {
		this.urlPainel = urlPainel;
	}
	public String getUrlChat() {
		return urlChat;
	}
	public void setUrlChat(String urlChat) {
		this.urlChat = urlChat;
	}
	public String getUrlChamado() {
		return urlChamado;
	}
	public void setUrlChamado(String urlChamado) {
		this.urlChamado = urlChamado;
	}
	public String getUsuarioPainel() {
		return usuarioPainel;
	}
	public void setUsuarioPainel(String usuarioPainel) {
		this.usuarioPainel = usuarioPainel;
	}
	public String getUsuarioChamado() {
		return usuarioChamado;
	}
	public void setUsuarioChamado(String usuarioChamado) {
		this.usuarioChamado = usuarioChamado;
	}
	
	
}
