package br.com.system.util;

import java.util.Date;

import br.com.system.model.Controle;

public class MacTime {
	public void setControle(Object dto, Long idUser) {
		if(((Controle) dto).getId()== null){
			((Controle) dto).setIdUsuarioCriador(idUser);
			((Controle) dto).setDataCriacao(new Date());
			((Controle) dto).setStatus(1);
		}else{
			((Controle) dto).setIdUsuarioModificador(idUser);
			((Controle) dto).setDataModificacao(new Date());
		}			
	}
}
