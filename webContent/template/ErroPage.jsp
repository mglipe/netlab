<%@ include file="head.jsp"%>
<%@ page isErrorPage="true"%>
<BR>
<table class="tabela" width="75%" border="0" align="center"
	cellspacing="1">
	<tr>
		<td colspan="2" class="caption1">Erro</td>
	</tr>
	<tr>
		<td width="91%" class="erro">
			<div align="left">
				<p align="center">
					<font color="#FF6600">Ocorreu o seguinte erro ao processar
						essa ação:</font>
				</p>
				<p>${pageContext.exception}</p>
				<p><%@ include file="MsgErro.jsp"%></p>
			</div>
		</td>
	</tr>
	<tr>
		<td class="erro"><div align="center">
				<font color="#FF6600">Imprima essa mensagem e comunique ao
					Administrador do Sistema:</font>
			</div></td>
	</tr>
	<tr>
		<td colspan="2" class="erro"><div align="center">
				<input name="btvoltar" type="button" class="Botoes" value="voltar"
					onclick="location='javascript:history.go(-1)'"> <input
					name="btvoltar2" type="button" class="Botoes" value="Imprimir"
					onclick="location='javascript:print()'">
			</div></td>
	</tr>
</table>
