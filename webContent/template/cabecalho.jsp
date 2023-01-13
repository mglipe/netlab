<%@ include file="/template/tags.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">

<head>
<%@ include file="/template/head.jsp"%>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- Start Header Top Area -->
	<div class="header-top-area">
		<div class="container2">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="logo-area">
						<a href="main.home.logic"><font size="4" color="#FFFFFF"><strong><font
									size="6" face="Verdana, Arial, Helvetica, sans-serif"
									color="#FF6600">::</font><font size="6"
									face="Verdana, Arial, Helvetica, sans-serif" color="#FFFFFF">Net</font><font
									size="6" face="Verdana, Arial, Helvetica, sans-serif"
									color="#FF6600">Lab</font><font size="6" color="#FFFFFF">::</font></strong></font>
						</a>
					</div>
				</div>
				<!--  -->

				<!--  -->

				<!--  -->
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="header-top-menu">
						<ul class="nav navbar-nav notika-top-nav">
							<li class="nav-item"><div class="dropdown-trig-sgn"
									id="usuarioSessao">
									<a class=" triger-fadeIn waves-effect" data-toggle="dropdown"
										aria-expanded="false" id="perfil"><span><i
											class="glyphicon glyphicon-user"></i>${sessionScope.logado.descricao}</span>
										<span><i class="glyphicon glyphicon-chevron-down"></i></span>
									</a>
									<ul class="dropdown-menu triger-fadeIn-dp animated fadeIn">
										<li><a href="admin.logout.logic">Logout</a></li>

									</ul>
								</div>
						</ul>
					</div>
				</div>
				<!-- - -->
			</div>
		</div>
	</div>
	<!-- End Header Top Area -->

	<%@ include file="/template/menu.jsp"%>