/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-09-21 13:02:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class logout_ok_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(7);
    _jspx_dependants.put("/template/rodapejs.jsp", Long.valueOf(1661787364034L));
    _jspx_dependants.put("/template/cabecalhoLogin.jsp", Long.valueOf(1661614668289L));
    _jspx_dependants.put("/admin/login.ok.jsp", Long.valueOf(1663254488428L));
    _jspx_dependants.put("jar:file:/C:/temp/workspace/NetLab/webContent/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098721890000L));
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1659649837984L));
    _jspx_dependants.put("/template/rodapefinal.jsp", Long.valueOf(1661614718354L));
    _jspx_dependants.put("/template/head.jsp", Long.valueOf(1661986211649L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write(' ');
      out.write('\r');
      out.write('\n');
      out.write("<!doctype html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html class=\"no-js\" lang=\"\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("<title>NetLab - Administração</title>\n");
      out.write("<meta name=\"description\" content=\"\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<!-- normalize -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/normalize.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- favicon\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\"\n");
      out.write("	href=\"http://www.sistemanetlab.com.br/site/imagens/favicon.png\">\n");
      out.write("<!-- Google Fonts\n");
      out.write("		============================================ -->\n");
      out.write("<link\n");
      out.write("	href=\"https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900\"\n");
      out.write("	rel=\"stylesheet\">\n");
      out.write("<!-- Bootstrap CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- load css -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/load.css\">\n");
      out.write("\n");
      out.write("<!-- media css -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/media.css\">\n");
      out.write("\n");
      out.write("<!-- font awesome CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/font-awesome.min.css\">\n");
      out.write("<!-- owl.carousel CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/owl.carousel.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/owl.theme.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/owl.transitions.css\">\n");
      out.write("<!-- meanmenu CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/meanmenu/meanmenu.min.css\">\n");
      out.write("<!-- animate CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/animate.css\">\n");
      out.write("<!-- summernote CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/summernote/summernote.css\">\n");
      out.write("<!-- Range Slider CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/themesaller-forms.css\">\n");
      out.write("<!-- normalize CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/normalize.css\">\n");
      out.write("<!-- mCustomScrollbar CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("	href=\"template/css/scrollbar/jquery.mCustomScrollbar.min.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- jvectormap CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("	href=\"template/css/jvectormap/jquery-jvectormap-2.0.3.css\">\n");
      out.write("\n");
      out.write("<!-- Notika icon CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/notika-custom-icon.css\">\n");
      out.write("<!-- bootstrap select CSS\n");
      out.write("		============================================ -->\n");
      out.write("\n");
      out.write("<!-- datapicker CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/datapicker/datepicker3.css\">\n");
      out.write("<!-- Color Picker CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/color-picker/farbtastic.css\">\n");
      out.write("<!-- main CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/chosen/chosen.css\">\n");
      out.write("<!-- notification CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/notification/notification.css\">\n");
      out.write("<!-- dropzone CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/dropzone/dropzone.css\">\n");
      out.write("<!-- wave CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/wave/waves.min.css\">\n");
      out.write("\n");
      out.write("<!-- dialog CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/dialog/sweetalert2.min.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/dialog/dialog.css\">\n");
      out.write("\n");
      out.write("<!-- main CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/main.css\">\n");
      out.write("<!-- style CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/style.css?xx\">\n");
      out.write("<!-- responsive CSS\n");
      out.write("		============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/responsive.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Data Table JS\n");
      out.write("        ============================================ -->\n");
      out.write("<link rel=\"stylesheet\" href=\"template/css/jquery.dataTables.min.css\">\n");
      out.write("<!-- update \n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/DataTables/datatables.css\">-->\n");
      out.write(" \n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- modernizr JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/vendor/modernizr-2.8.3.min.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"https://kit.fontawesome.com/729fc1114d.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("	<!--[if lt IE 8]>\n");
      out.write("            <p class=\"browserupgrade\">You are using an <strong>outdated</strong> browser. Please <a href=\"http://browsehappy.com/\">upgrade your browser</a> to improve your experience.</p>\n");
      out.write("        <![endif]-->\n");
      out.write("	<!-- Start Header Top Area -->\n");
      out.write("	<div class=\"header-top-area\">\n");
      out.write("		<div class=\"container2\">\n");
      out.write("			<div class=\"row\">\n");
      out.write("				<div class=\"col-md-6\">\n");
      out.write("					<div class=\"logo-area \">\n");
      out.write("						<a href=\"#\"><font size=\"4\" color=\"#FFFFFF\"><strong><font\n");
      out.write("									size=\"6\" face=\"Verdana, Arial, Helvetica, sans-serif\"\n");
      out.write("									color=\"#FF6600\">::</font><font size=\"6\"\n");
      out.write("									face=\"Verdana, Arial, Helvetica, sans-serif\" color=\"#FFFFFF\">Net</font><font\n");
      out.write("									size=\"6\" face=\"Verdana, Arial, Helvetica, sans-serif\"\n");
      out.write("									color=\"#FF6600\">Lab</font><font size=\"6\" color=\"#FFFFFF\">::</font></strong></font>\n");
      out.write("						</a>\n");
      out.write("					</div>\n");
      out.write("\n");
      out.write("				</div>\n");
      out.write("\n");
      out.write("				<div class=\"col-md-6 \">\n");
      out.write("\n");
      out.write("					<nav class=\"navbar navbar-expand-md bg-dark navbar-dark\">\n");
      out.write("						<a class=\"navbar-brand\" href=\"#\"></a>\n");
      out.write("						<div style=\"background-color: #005b88\"\n");
      out.write("							class=\"navbar-toggler botaonav\" type=\"button\"\n");
      out.write("							data-toggle=\"collapse\" data-target=\"#collapsibleNavbar\">\n");
      out.write("\n");
      out.write("							<i style=\"color: #0077b0; font-size: 32pt;\"\n");
      out.write("								class=\"fas fa-users-cog fright\"></i>\n");
      out.write("\n");
      out.write("						</div>\n");
      out.write("					</nav>\n");
      out.write("\n");
      out.write("				</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("	<!-- End Header Top Area -->");
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container2\" style=\"margin: 0 -1em;\">\r\n");
      out.write("	<form name=\"form1\" method=\"post\" action=\"admin.efetuaLogin.logic\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		<div class=\"login-content\">\r\n");
      out.write("			<!-- Login -->\r\n");
      out.write("			<div class=\"nk-block toggled\" id=\"l-login\">\r\n");
      out.write("				<div class=\"nk-form\">\r\n");
      out.write("					<div class=\"input-group\">\r\n");
      out.write("						<span class=\"input-group-addon nk-ic-st-pro\"><i\r\n");
      out.write("							class=\"notika-icon notika-support\"></i></span>\r\n");
      out.write("						<div class=\"nk-int-st\">\r\n");
      out.write("							<input type=\"text\" name=\"usuario.login\" class=\"form-control\"\r\n");
      out.write("								placeholder=\"Username\" required>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"input-group mg-t-15\">\r\n");
      out.write("						<span class=\"input-group-addon nk-ic-st-pro\"><i\r\n");
      out.write("							class=\"notika-icon notika-edit\"></i></span>\r\n");
      out.write("						<div class=\"nk-int-st\">\r\n");
      out.write("							<input type=\"password\" name=\"usuario.senhaForm\"\r\n");
      out.write("								class=\"form-control\" placeholder=\"Password\" required>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"fm-checkbox\"></div>\r\n");
      out.write("					<button type=\"submit\" class=\"btn btn-info\">Entrar</button>\r\n");
      out.write("					<a href=\"#\" data-ma-action=\"nk-login-switch\"\r\n");
      out.write("						data-ma-block=\"#l-register\"\r\n");
      out.write("						class=\"btn btn-login btn-success btn-float\"><i\r\n");
      out.write("						class=\"notika-icon notika-right-arrow right-arrow-ant\"></i></a>\r\n");
      out.write("				</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("				<div class=\"nk-navigation nk-lg-ic\">\r\n");
      out.write("					<a href=\"#\" data-ma-action=\"nk-login-switch\"\r\n");
      out.write("						data-ma-block=\"#l-register\"><i\r\n");
      out.write("						class=\"notika-icon notika-plus-symbol\"></i> <span>Register</span></a>\r\n");
      out.write("					<a href=\"#\" data-ma-action=\"nk-login-switch\"\r\n");
      out.write("						data-ma-block=\"#l-forget-password\"><i>?</i> <span>Forgot\r\n");
      out.write("							Password</span></a>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("\r\n");
      out.write("			<!-- Register -->\r\n");
      out.write("			<div class=\"nk-block\" id=\"l-register\">\r\n");
      out.write("				<div class=\"nk-form\">\r\n");
      out.write("					<div class=\"input-group\">\r\n");
      out.write("						<span class=\"input-group-addon nk-ic-st-pro\"><i\r\n");
      out.write("							class=\"notika-icon notika-support\"></i></span>\r\n");
      out.write("						<div class=\"nk-int-st\">\r\n");
      out.write("							<input type=\"text\" class=\"form-control\" placeholder=\"Username\">\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("\r\n");
      out.write("					<div class=\"input-group mg-t-15\">\r\n");
      out.write("						<span class=\"input-group-addon nk-ic-st-pro\"><i\r\n");
      out.write("							class=\"notika-icon notika-mail\"></i></span>\r\n");
      out.write("						<div class=\"nk-int-st\">\r\n");
      out.write("							<input type=\"text\" class=\"form-control\"\r\n");
      out.write("								placeholder=\"Email Address\">\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("\r\n");
      out.write("					<div class=\"input-group mg-t-15\">\r\n");
      out.write("						<span class=\"input-group-addon nk-ic-st-pro\"><i\r\n");
      out.write("							class=\"notika-icon notika-edit\"></i></span>\r\n");
      out.write("						<div class=\"nk-int-st\">\r\n");
      out.write("							<input type=\"password\" class=\"form-control\"\r\n");
      out.write("								placeholder=\"Password\">\r\n");
      out.write("						</div>\r\n");
      out.write("\r\n");
      out.write("					</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("					<a href=\"#l-login\" data-ma-action=\"nk-login-switch\"\r\n");
      out.write("						data-ma-block=\"#l-login\"\r\n");
      out.write("						class=\"btn btn-login btn-success btn-float\"><i\r\n");
      out.write("						class=\"notika-icon notika-right-arrow\"></i></a>\r\n");
      out.write("				</div>\r\n");
      out.write("\r\n");
      out.write("				<div class=\"nk-navigation rg-ic-stl\">\r\n");
      out.write("					<a href=\"#\" data-ma-action=\"nk-login-switch\"\r\n");
      out.write("						data-ma-block=\"#l-login\"><i\r\n");
      out.write("						class=\"notika-icon notika-right-arrow\"></i> <span>Sign in</span></a> <a\r\n");
      out.write("						href=\"\" data-ma-action=\"nk-login-switch\"\r\n");
      out.write("						data-ma-block=\"#l-forget-password\"><i>?</i> <span>Forgot\r\n");
      out.write("							Password</span></a>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("\r\n");
      out.write("			<!-- Forgot Password -->\r\n");
      out.write("			<div class=\"nk-block\" id=\"l-forget-password\">\r\n");
      out.write("				<div class=\"nk-form\">\r\n");
      out.write("					<p class=\"text-left\">Lorem ipsum dolor sit amet, consectetur\r\n");
      out.write("						adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla\r\n");
      out.write("						enim feugiat commodo sed ac lacus.</p>\r\n");
      out.write("\r\n");
      out.write("					<div class=\"input-group\">\r\n");
      out.write("						<span class=\"input-group-addon nk-ic-st-pro\"><i\r\n");
      out.write("							class=\"notika-icon notika-mail\"></i></span>\r\n");
      out.write("						<div class=\"nk-int-st\">\r\n");
      out.write("							<input type=\"text\" class=\"form-control\"\r\n");
      out.write("								placeholder=\"Email Address\">\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("\r\n");
      out.write("					<a href=\"#l-login\" data-ma-action=\"nk-login-switch\"\r\n");
      out.write("						data-ma-block=\"#l-login\"\r\n");
      out.write("						class=\"btn btn-login btn-success btn-float\"><i\r\n");
      out.write("						class=\"notika-icon notika-right-arrow\"></i></a>\r\n");
      out.write("				</div>\r\n");
      out.write("\r\n");
      out.write("				<div class=\"nk-navigation nk-lg-ic rg-ic-stl\">\r\n");
      out.write("					<a href=\"\" data-ma-action=\"nk-login-switch\"\r\n");
      out.write("						data-ma-block=\"#l-login\"><i\r\n");
      out.write("						class=\"notika-icon notika-right-arrow\"></i> <span>Sign in</span></a> <a\r\n");
      out.write("						href=\"\" data-ma-action=\"nk-login-switch\"\r\n");
      out.write("						data-ma-block=\"#l-register\"><i\r\n");
      out.write("						class=\"notika-icon notika-plus-symbol\"></i> <span>Register</span></a>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	</form>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<!-- end conteinet2-->\n");
      out.write("\n");
      out.write("<!-- Start Footer area-->\n");
      out.write("<div class=\"footer-copyright-area1\">\n");
      out.write("	<div>\n");
      out.write("		<div class=\"row\">\n");
      out.write("			<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("				<div class=\"footer-copy-right\">\n");
      out.write("					<p>\n");
      out.write("						Copyright Â© 2012. Todos os direitos reservados. Template by <a\n");
      out.write("							href=\"https://colorlib.com\">Colorlib</a>.\n");
      out.write("					</p>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("</div>\n");
      out.write("<!-- End Footer area-->\n");
      out.write("<!-- jquery\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/vendor/jquery-1.12.4.min.js\"></script>\n");
      out.write("<!-- bootstrap JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/bootstrap.min.js\"></script>\n");
      out.write("<!-- wow JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/wow.min.js\"></script>\n");
      out.write("<!-- price-slider JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/jquery-price-slider.js\"></script>\n");
      out.write("<!-- owl.carousel JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/owl.carousel.min.js\"></script>\n");
      out.write("<!-- scrollUp JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/jquery.scrollUp.min.js\"></script>\n");
      out.write("<!-- meanmenu JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/meanmenu/jquery.meanmenu.js\"></script>\n");
      out.write("<!-- counterup JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/counterup/jquery.counterup.min.js\"></script>\n");
      out.write("<script src=\"template/js/counterup/waypoints.min.js\"></script>\n");
      out.write("<script src=\"template/js/counterup/counterup-active.js\"></script>\n");
      out.write("<!-- mCustomScrollbar JS\n");
      out.write("		============================================ -->\n");
      out.write("<script\n");
      out.write("	src=\"template/js/scrollbar/jquery.mCustomScrollbar.concat.min.js\"></script>\n");
      out.write("<!-- sparkline JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/sparkline/jquery.sparkline.min.js\"></script>\n");
      out.write("<script src=\"template/js/sparkline/sparkline-active.js\"></script>\n");
      out.write("<!-- flot JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/flot/jquery.flot.js\"></script>\n");
      out.write("<script src=\"template/js/flot/jquery.flot.resize.js\"></script>\n");
      out.write("<script src=\"template/js/flot/curvedLines.js\"></script>\n");
      out.write("<script src=\"template/js/flot/flot-active.js\"></script>\n");
      out.write("<!-- knob JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/knob/jquery.knob.js\"></script>\n");
      out.write("<script src=\"template/js/knob/jquery.appear.js\"></script>\n");
      out.write("<script src=\"template/js/knob/knob-active.js\"></script>\n");
      out.write("<!-- Input Mask JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/jasny-bootstrap.min.js\"></script>\n");
      out.write("<!-- icheck JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/icheck/icheck.min.js\"></script>\n");
      out.write("<script src=\"template/js/icheck/icheck-active.js\"></script>\n");
      out.write("<!-- rangle-slider JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/rangle-slider/jquery-ui-1.10.4.custom.min.js\"></script>\n");
      out.write("<script src=\"template/js/rangle-slider/jquery-ui-touch-punch.min.js\"></script>\n");
      out.write("<script src=\"template/js/rangle-slider/rangle-active.js\"></script>\n");
      out.write("<!-- datapicker JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/datapicker/bootstrap-datepicker.js\"></script>\n");
      out.write("<script src=\"template/js/datapicker/datepicker-active.js\"></script>\n");
      out.write("<!-- bootstrap select JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/bootstrap-select/bootstrap-select.js\"></script>\n");
      out.write("<!--  color-picker JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/color-picker/farbtastic.min.js\"></script>\n");
      out.write("<script src=\"template/js/color-picker/color-picker.js\"></script>\n");
      out.write("<!--  notification JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/notification/bootstrap-growl.min.js\"></script>\n");
      out.write("<script src=\"template/js/notification/notification-active.js\"></script>\n");
      out.write("<!--  summernote JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/summernote/summernote-updated.min.js\"></script>\n");
      out.write("<script src=\"template/js/summernote/summernote-active.js\"></script>\n");
      out.write("<!-- dropzone JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/dropzone/dropzone.js\"></script>\n");
      out.write("<!--  wave JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/wave/waves.min.js\"></script>\n");
      out.write("<script src=\"template/js/wave/wave-active.js\"></script>\n");
      out.write("<!--  chosen JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/chosen/chosen.jquery.js\"></script>\n");
      out.write("<!--  Chat JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/chat/jquery.chat.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"template/js/dialog/sweetalert2.min.js\"></script>\n");
      out.write("<script src=\"template/js/dialog/dialog-active.js\"></script>\n");
      out.write("\n");
      out.write("<!--  todo JS ============================================ -->\n");
      out.write("\n");
      out.write("<script src=\"template/js/todo/jquery.todo.js\"></script>\n");
      out.write("<!-- plugins JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/plugins.js\"></script>\n");
      out.write("<!-- main JS\n");
      out.write("		============================================ -->\n");
      out.write("<script src=\"template/js/main.js\"></script>\n");
      out.write("<!-- tawk chat JS\n");
      out.write("		============================================ -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Data Table JS\n");
      out.write("        ============================================ -->\n");
      out.write("<script src=\"template/js/data-table/jquery.dataTables.min.js\"></script>\n");
      out.write("<script src=\"template/js/data-table/data-table-act.js\"></script>\n");
      out.write("<script src=\"admin.sistemanetlab.med.br_netlab_template_js_data-table_jquery.dataTables.min.js\"></script>\n");
      out.write("<!--  update \n");
      out.write("<script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js\"></script>\n");
      out.write("<script type=\"text/javascript\" charset=\"utf8\" src=\"/DataTables/datatables.js\"></script>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- jvectormap JS\n");
      out.write("        ============================================ -->\n");
      out.write("<script src=\"template/js/jvectormap/jquery-jvectormap-2.0.2.min.js\"></script>\n");
      out.write("<script src=\"template/js/jvectormap/jquery-jvectormap-world-mill-en.js\"></script>\n");
      out.write("<script src=\"template/js/jvectormap/jvectormap-active.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\r');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f0_reused = false;
    try {
      _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f0.setParent(null);
      // /admin/login.ok.jsp(4,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${msgErro != null }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("	<div class=\"alert alert-danger alert-dismissible\" role=\"alert\">\r\n");
          out.write("		");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${msgErro}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("		<button type=\"button\" class=\"close\" data-dismiss=\"alert\"\r\n");
          out.write("			aria-label=\"Close\">\r\n");
          out.write("			<span aria-hidden=\"true\">&times;</span>\r\n");
          out.write("		</button>\r\n");
          out.write("	</div>\r\n");
          int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      _jspx_th_c_005fif_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f1_reused = false;
    try {
      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f1.setParent(null);
      // /admin/login.ok.jsp(14,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${msgSucesso != null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("	<div class=\"alert alert-success alert-dismissible\" role=\"alert\">\r\n");
          out.write("		");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${msgSucesso}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("		<button type=\"button\" class=\"close\" data-dismiss=\"alert\"\r\n");
          out.write("			aria-label=\"Close\">\r\n");
          out.write("			<span aria-hidden=\"true\">&times;</span>\r\n");
          out.write("		</button>\r\n");
          out.write("	</div>\r\n");
          int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      _jspx_th_c_005fif_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
    }
    return false;
  }
}
