<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="javax.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Consoft - Portale Fornitori</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/my-style.css">
<link rel="icon" href="/resources/img/favicon.ico">
</head>
<body>

	<section>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<!-- Nav container -->
			<div class="container">
				<%-- <%
					String msg = request.getParameter("error");
				%> --%>
				<!-- Logo -->
				<div class="brand">
					<img src="/resources/img/logo2.png" alt="Alternate Text" /> <a
						href="#">Portale Fornitori</a>
				</div>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Menu link -->
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li class="nav-item active"><a class="nav-link" href="#">Home<span
								class="sr-only">(current)</span></a></li>
						<li class="nav-item"><a class="nav-link" href="#">Il
								portale</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Servizi </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">I vantaggi
									dell'autenticazione</a> <a class="dropdown-item" href="#">Requisiti
									minimi</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Partner</a>
							</div></li>
					</ul>
				</div>

				<div class="collapse navbar-collapse" id="navbarContacts">
					<ul class="navbar-nav">
						<li class="nav-item"><i class="material-icons">phone</i> <a
							class="nav-link" href="#">+39 0113161571<span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item"><i class="material-icons">email</i> <a
							class="nav-link" href="mailto:info@gruppoconsoft.com">info@gruppoconsoft.it</a>
						</li>
					</ul>
				</div>

			</div>
		</nav>
	</section>

	<div class="row main-section">

		<!-- Inizio  Docs Area -->
		<div class="col-lg-8 col-md-7 col-ms-6 col-xs-12 docs-area">
			<h1>Diventare fornitore accreditato</h1>
			<div class="row">
				<div class="nav flex-column nav-pills col-lg-3 col-md-12 mb-4"
					id="v-pills-tab" role="tablist" aria-orientation="vertical">
					<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill"
						href="#v-pills-home" role="tab" aria-controls="v-pills-home"
						aria-selected="true">Perchè accreditarsi</a> <a class="nav-link"
						id="v-pills-profile-tab" data-toggle="pill"
						href="#v-pills-profile" role="tab" aria-controls="v-pills-profile"
						aria-selected="false">Documentazione</a>
				</div>
				<div class="tab-content col-lg-8 col-md-12 mb-4"
					id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="v-pills-home"
						role="tabpanel" aria-labelledby="v-pills-home-tab">Accreditarsi
						presso il portale garantisci uno snellimento del processo
						obbligatorio per la trasmissione della documentazione elettronica
						obbligatoria ai fini della legislazione italiana</div>
					<div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
						aria-labelledby="v-pills-profile-tab">
						<ul>
							<li><i class="material-icons">attach_file</i><a href="#">Modulo
									di registrazione ed accreditamento</a></li>
							<li><i class="material-icons">attach_file</i><a href="#">Normativa
									n. 27/2016</a></li>
							<li><i class="material-icons">attach_file</i><a href="#">Modulo
									A9056 - Accreditamento per privati</a></li>
							<li><i class="material-icons">attach_file</i><a href="#">Normativa
									sulla privacy ed il trattamento dei dati personali</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- Fine  Docs Area -->

			<!-- Inizio Login Area -->
		</div>
		<div class="col-lg-4 col-md-5 col-ms-6 col-xs-12 login-area">
			<form:form modelAttribute="dati_validazione" action="loginProcess.htm"
				method="post">
				<div class="login-title">
					<i class="material-icons">lock_outline</i>
					<h2>Area Login</h2>
				</div>
				<div class="form-group">
				<form:input path="p_Iva" placeholder="Immetti numero partita Iva" name="txtPIVA"/>
					<!-- <input class="form-control" name="txtPIVA"
						placeholder="Immetti numero partita Iva"> -->
				</div>
				<div class="form-group text-center">
					<!-- <input type="password" class="form-control" placeholder="Password"> -->
					<form:input path="passw" placeholder="Inserire la password" name="txtPassw"/>
					<%-- <span class=" badge badge-dark"> <%
				 	String msg2 = "";
				 		if (msg != null) {
				 			msg2 = "Inserire un numero di partita Iva valido !";
				 		} else {
				 			msg2 = "Benvenuto sul Portale";
				 		}
				 %>
				 <%=msg2%>
					</span> --%>
				</div>
				<form:button class="btn btn-dark">ACCEDI</form:button>
				<!-- <input type="hidden" value="showAdminprovider" name="action">
				<button type="submit" class="btn btn-primary">Accedi</button> -->
			</form:form>
			<hr>
			<div class="login-help">
				<p>Ti serve un aiuto?</p>
				<ul class="login-tips">
					<li><a href="Control?action=showRegister">Registrazione
							come fornitore accreditato</a></li>
					<li><a href="Control?action=showForgot">Recupero
							credenziali di accesso</a></li>
				</ul>
			</div>
		</div>
		<!-- Fine Login Area -->
	</div>
	<!-- Footer -->
	<footer id="sp-footer">
		<div class="container">
			<div class="row">
				<div id="sp-footer1" class="col-sm-12 col-md-12">
					<div class="sp-column ">
						<span class="sp-copyright">© 2017 Consoft Sistemi S.p.A. -
							All Rights Reserved - via Pio VII, 127 - 10127 Torino - Partita
							IVA 05035220010 - R.E.A. 678159 Cap. Sociale € 2.700.000 int.
							vers.</span>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="/resources/svg-with-js/js/fontawesome-all.js"></script>
</body>
</html>