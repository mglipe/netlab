<%@ include file="tags.jsp"%>
<c:if test="${msg!=null}">
	<tr align="center" bgcolor="#FFFFFF">
		<td>
			<div id="msgerro">
				<table width="100%" cellpadding="3" cellspacing="0">
					<tbody>
						<tr>
							<td width="30" align="center" valign="middle"><img
								src="img/bt_excluir.gif" width="20" height="20" border="0">
							</td>
							<td align="center"><font color="#FF0000" size="2"
								face="Verdana, Geneva, Arial, Helvetica, sans-serif"><strong>${msg}</strong></font>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</td>
	</tr>
</c:if>


<c:if test="${!empty(mensagensErro)}">
	<tr align="center" bgcolor="#FFFFFF">
		<td>
			<div id="msgerro">
				<table width="100%" cellpadding="3" cellspacing="0">
					<tbody>
						<tr>
							<td width="30" align="center" valign="middle"><img
								src="img/bt_excluir.gif" width="20" height="20" border="0">
							</td>
							<td align="center"><c:forEach var="msg"
									items="${mensagensErro}">
									<font color="#FF0000" size="2"
										face="Verdana, Geneva, Arial, Helvetica, sans-serif"><strong>${msg}</strong></font>
								</c:forEach></td>
						</tr>
					</tbody>
				</table>
			</div>
		</td>
	</tr>
</c:if>

<c:if test="${!empty(mensagensSucesso)}">
	<tr align="center" bgcolor="#FFFFFF">
		<td>
			<div id="msgsucesso">
				<table width="100%" cellpadding="3" cellspacing="0">
					<tbody>
						<tr>
							<td width="30" align="center" valign="middle"><img
								src="img/bt_alterar.gif" width="20" height="20" border="0">
							</td>
							<td align="center"><c:forEach var="msg"
									items="${mensagensSucesso}">
									<font color="#009900" size="2"
										face="Verdana, Geneva, Arial, Helvetica, sans-serif"><strong>${msg}</strong></font>
								</c:forEach></td>
						</tr>
					</tbody>
				</table>
			</div>
		</td>
	</tr>
</c:if>


