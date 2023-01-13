package br.com.system.util;

public class PreparaSQL {
 private String sql;
 private String tabela;

  public PreparaSQL(String tabela,String tabelapai) {
	 	this.tabela=tabela;
		this.sql = "SELECT "+tabela+".*";
		this.setCampo(tabelapai+".descricao AS descricao"+tabelapai);
		this.fechaSelect();
		this.innerJoin(tabelapai);
	}
/*
 * Prepara uma Clausula Select completa se "semjoin" for true
 */
 public PreparaSQL(String tabela,boolean semJoin) {
		this.tabela=tabela;
		this.sql = "SELECT "+tabela+".*";
		if(semJoin){
	 		this.fechaSelect();
	 		this.orderBy(tabela+".descricao");
	 	}
	 		
	 		
	}
 
 public String getSql() {
	return sql;
}

 public void setCampo(String campo) {
	 sql = sql.concat(","+campo);
	} 
 
 public void setSql(String sql) {
	this.sql = sql;
}

public void fechaSelect() {
	sql = sql.concat(" FROM "+tabela);
}

public void and(String campo,Long valor,String Opereador){
	sql = sql.concat(" AND "+campo+Opereador+valor);
}

public void and(String campo,int valor,String Opereador){
	sql = sql.concat(" AND "+campo+Opereador+valor);
}

public void and(String campo,String valor,String Opereador){
	sql = sql.concat(" AND "+campo+Opereador+"'"+valor+"'");
}

public void andData(String campo,String valor,String Opereador){
	sql = sql.concat(" AND "+"(SELECT DATE("+campo+")) "+Opereador+" '"+valor+"'");
}

public void orData(String campo,String valor,String Opereador){
	sql = sql.concat(" OR "+"(SELECT DATE("+campo+")) "+Opereador+" '"+valor+"'");
}

public void or(String campo,int valor,String Opereador){
	sql = sql.concat(" OR "+campo+Opereador+valor);
}
public void or(String campo,String valor,String Opereador){
	sql = sql.concat(" OR "+campo+Opereador+"'"+valor+"'");
}

public void innerJoin(String tabelapai){
	sql = sql.concat(" INNER JOIN "+tabelapai+" ON "+tabelapai+".id = "+tabela+".id"+tabelapai);
}

public void orderBy(String campo){
	sql = sql.concat(" ORDER BY "+campo);
}

public void andLike(String campo,String valor){
	sql = sql.concat(" AND " +campo+" like '%"+valor+"%'");
}
public void orLike(String campo,String valor){
	sql = sql.concat(" OR " +campo+" like '%"+valor+"%'");
}

public void addCondicao(String condicao){
	sql = sql.concat(" "+condicao+" ");
}

}
