package br.com.system.model;

import java.sql.Connection;
import java.util.Date;
import java.util.List;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;

import javax.persistence.*;

@Entity
@Table(name = "hospedagem")
public class Hospedagem extends Controle {

	private String dominioSecundario;
	private Double mensalidade;
	private String nomeContato;
	private String telefoneContato;
	private Date dataAdesao;
	private String mesRenovacao;
	private String tipoMensalidade;
	private String tipoContrato;
	private String cidade;
	private String versao;
	private String nomeLab;
	private String cnpj;
	private String cnes;
	private String email;
	private String insta;
	private String ip;
	private String hostFtp;
	private String userFtp;
	private String senhaFtp;
	private String hostBd;
	private String userBd;
	private Integer capacidadeBd;
	private Integer memoria;
	private String senhaBd;
	private String bancoBd;

	private Configuracao configuracao;
	@Transient
	private String resultset;

	@Transient
	public String getResultset() {
		return resultset;
	}

	@Transient
	public void setResultset(String resultSet) {
		this.resultset = resultSet;
	}

	@Transient
	private Integer destino;

	@Transient
	private String componente;

	@Transient
	public String getDominioPrincipal() {
		return this.descricao + "." + this.configuracao.getDominioPrincipal();
	}

	@Transient
	public String getDominioSecundario() {
		return dominioSecundario;
	}

	public void setDominioSecundario(String dominioSecundario) {
		this.dominioSecundario = dominioSecundario;
	}

	public Double getMensalidade() {
		return mensalidade;
	}

	public void setMensalidade(Double mensalidade) {
		this.mensalidade = mensalidade;
	}

	public String getNomeContato() {
		return nomeContato;
	}

	public void setNomeContato(String nomeContato) {
		this.nomeContato = nomeContato;
	}

	public String getTelefoneContato() {
		return telefoneContato;
	}

	public void setTelefoneContato(String telefoneContato) {
		this.telefoneContato = telefoneContato;
	}

	public Date getDataAdesao() {
		return dataAdesao;
	}

	public void setDataAdesao(Date dataAdesao) {
		this.dataAdesao = dataAdesao;
	}

	public String getMesRenovacao() {
		return mesRenovacao;
	}

	public void setMesRenovacao(String mesRenovacao) {
		this.mesRenovacao = mesRenovacao;
	}

	public String getTipoMensalidade() {
		return tipoMensalidade;
	}

	public void setTipoMensalidade(String tipoMensalidade) {
		this.tipoMensalidade = tipoMensalidade;
	}

	public String getTipoContrato() {
		return tipoContrato;
	}

	public void setTipoContrato(String tipoContrato) {
		this.tipoContrato = tipoContrato;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getVersao() {
		return versao;
	}

	public void setVersao(String versao) {
		this.versao = versao;
	}

	public String getNomeLab() {
		return nomeLab;
	}

	public void setNomeLab(String nomeLab) {
		this.nomeLab = nomeLab;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getCnes() {
		return cnes;
	}

	public void setCnes(String cnes) {
		this.cnes = cnes;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getInsta() {
		return insta;
	}

	public void setInsta(String insta) {
		this.insta = insta;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getHostFtp() {
		return hostFtp;
	}

	public void setHostFtp(String hostFtp) {
		this.hostFtp = hostFtp;
	}

	public String getUserFtp() {
		return userFtp;
	}

	public void setUserFtp(String userFtp) {
		this.userFtp = userFtp;
	}

	public String getSenhaFtp() {
		return senhaFtp;
	}

	public void setSenhaFtp(String senhaFtp) {
		this.senhaFtp = senhaFtp;
	}

	public String getHostBd() {
		return hostBd;
	}

	public void setHostBd(String hostBD) {
		this.hostBd = hostBD;
	}

	public String getUserBd() {
		return userBd;
	}

	public void setUserBd(String userBd) {
		this.userBd = userBd;
	}

	public Integer getCapacidadeBd() {
		return capacidadeBd;
	}

	public void setCapacidadeBd(Integer capacidadeBd) {
		this.capacidadeBd = capacidadeBd;
	}

	public Integer getMemoria() {
		return memoria;
	}

	public void setMemoria(Integer memoria) {
		this.memoria = memoria;
	}

	public String getSenhaBd() {
		return senhaBd;
	}

	public void setSenhaBd(String senhaBd) {
		this.senhaBd = senhaBd;
	}

	public String getBancoBd() {
		return bancoBd;
	}

	public void setBancoBd(String bancoBd) {
		this.bancoBd = bancoBd;
	}

	@Transient
	public Integer getDestino() {
		return this.destino;
	}

	@Transient
	public void setDestino(Integer destino) {
		this.destino = destino;
	}

	@ManyToOne(cascade = {}, fetch = FetchType.LAZY)
	@JoinColumn(name = "idconfiguracao", nullable = false)
	public Configuracao getConfiguracao() {
		return configuracao;
	}

	public void setConfiguracao(Configuracao configuracao) {
		this.configuracao = configuracao;
	}

	@Transient
	public String getComponente() {
		return this.componente;

	}

	@Transient
	public void setComponente(String componente) {
		this.componente = componente;
	}

	public ArrayList<Hospedagem> pegaComponente(String componente) {

		ArrayList<Hospedagem> lista = new ArrayList<Hospedagem>();

		try {

			String connectionURL = "jdbc:mysql://" + this.hostBd + ":3306/" + this.bancoBd
					+ "?verifyServerCertificate=false" + "&useSSL=false" + "&requireSSL=false";
			Connection connection = null;
			Statement statement = null;
			ResultSet rs = null;

			connection = DriverManager.getConnection(connectionURL, this.userBd, this.senhaBd);
			statement = connection.createStatement();
			String SQLQuery = "select grupocomponente.idtipolaudo,posto.descricao posto,tipolaudo.descricao nomelaudo from componentelaudo "
					+ "join grupocomponente on grupocomponente.id=componentelaudo.idgrupocomponente "
					+ "join tipolaudo on tipolaudo.id=grupocomponente.idtipolaudo " + "join posto "
					+ "where componentelaudo.descricao like '%" + componente + "%' "
					+ "or grupocomponente.descricao like '%" + componente + "%' "
					+ "or componentelaudo.descricao like '%" + componente + "%' "
					+ "or grupocomponente.descricao like '%" + componente + "%'";

			rs = statement.executeQuery(SQLQuery);

			while (rs.next()) {
				long id = rs.getLong("idtipolaudo");
				String posto = rs.getString("posto");
				String nomelaudo = rs.getString("nomelaudo");
				String base = this.descricao;
				Hospedagem h = new Hospedagem();
				h.setId(id);
				h.setDescricao(posto);
				h.setCidade(nomelaudo);
				h.setNomeLab(base);
				lista.add(h);
			}

			statement.close();
			connection.close();

		} catch (Exception e) {
			System.out.println("SQLException caught: " + e.getMessage());
		}

		return lista;
	}

	public ResultSet resultset(String command) throws Exception { 
			
		String connectionURL = "jdbc:mysql://" + this.hostBd + ":3306/" + this.bancoBd
				+ "?verifyServerCertificate=false" + "&useSSL=false" + "&requireSSL=false";
		Connection connection = null;
		Statement statement = null;
		ResultSet rs = null;
		connection = DriverManager.getConnection(connectionURL, this.userBd, this.senhaBd);
		statement = connection.createStatement();
		String SQLQuery = command;

		rs = statement.executeQuery(SQLQuery);
		
		/*while(rs.next()) {
			Hospedagem h = new Hospedagem();
			//pegar o comando SQL 
			String sql = rs.getString(command);
			h.setResultset(sql);
			System.out.println(h.getResultset());
		}*/
		
		//statement.close();
		//connection.close();
		
		return rs;
	}

}
