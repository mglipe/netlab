<%@ page contentType="text/html;" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.io.BufferedReader"%> 
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.MalformedURLException"%>
<%@page import="java.net.URL"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="br.com.system.test.LocalShell" %>
<%


try {

	URL url = new URL("http://demo.sistemanetlab.med.br/lis/rest/requisicao/");
	HttpURLConnection con = (HttpURLConnection) url.openConnection();
	con.setRequestMethod("GET");

	if (con.getResponseCode() != 200) {
		throw new RuntimeException("HTTP error code : "+ con.getResponseCode());
	}

	BufferedReader input = new BufferedReader(new InputStreamReader((con.getInputStream()),"ISO-8859-1"));
	
	
	String resp = IOUtils.toString(con.getInputStream(), "ISO-8859-1");
	
//	String result = CharStreams.toString(new InputStreamReader(inputStream, Charsets.UTF_8));
	
	out.println(resp);
	


} catch (MalformedURLException e) {
	e.printStackTrace();
} catch (IOException e) {
	e.printStackTrace();
}

LocalShell shell = new LocalShell();
shell.executeCommand("dir");

%>

