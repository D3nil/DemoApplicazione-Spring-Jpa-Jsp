<%@page import="java.text.DateFormatSymbols"%>
<%@page import="java.text.Format"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	/*  response.setHeader("Cache-Control","no-cache no-store, must-revalidate");   
	   String sess = "";    
	  
	sess = (String) session.getAttribute("session");
	   if (sess == null) 
	   {
	response.sendRedirect("index.jsp");
	   }	     	 */
%>
<!DOCTYPE html >
<html lang="it">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/my-style.css">
<title>Fornitori</title>
</head>
<body>

	<nav class="navbar navbar-expand-sm color ">
		<div class="container">
			<a href="index.jsp"> <img
				src="/resources/img/Consoft-Sistemi-2017-310x175.png" width="140"
				height="auto">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto txt-w">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Communicazioni</a>
					</li>

					<li class="nav-item"><a class="nav-link"
						href="Control?action=exit"> <i class="fas fa-sign-out-alt"></i>esci
					</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- form card login with validation feedback -->
	<div>
		<div class="card card-outline-secondary">
			<div class="card-header">

				<%-- <c:forEach items="${requestScope.lista}" var="l">                         
                        	<c:out value="${l.id}"></c:out>
                        	<c:out value="${l.company}"></c:out>
                        	<c:out value="${l.companyName_No_}"></c:out>
                        	<c:out value="${l.name}"></c:out>
                        	<c:out value="${l.name2}"></c:out>
                        	<c:out value="${l.address}"></c:out>
                        	<c:out value="${l.address2}"></c:out>
                        	<c:out value="${l.city}"></c:out>
                        	<c:out value="${l.postCode}"></c:out>
                        	<c:out value="${l.countryRegion_code}"></c:out>
                        	<c:out value="${l.e_mail}"></c:out>
                        	<c:out value="${l.phoneNo_}"></c:out>
                        	<c:out value="${l.FaxNo_}"></c:out>
                        	<c:out value="${l.vatRegistrationNo_}"></c:out>
                        	<c:out value="${l.blockedQualification}"></c:out>
                        	<c:out value="${l.qualificationNotes}"></c:out>                        	
                         </c:forEach> --%>


				<h3 class="mb-3 text-primary text-center ">
					Benvenuto
					<c:forEach items="${requestScope.lista}" var="fornitore">
						<c:out value="${fornitore.name}">
						</c:out>
					</c:forEach>
				</h3>

			</div>
			<div class="card-body border-dark form-body ">
				<form action="#" class="fornitore-card">
					<div class="panel panel-default">
						<div class="panel-heading">

							<div class="row ">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<span class="help-block text-muted small-font"> 
									Partita Iva numero:
										</span> 
										<input type="text" class="form-control"
										value="<c:forEach items="${requestScope.lista}" 
                                                 var="fornitore">
	                                                 <c:out value="${fornitore.vatNumber}">
	                                                 </c:out>
                                                 </c:forEach>"
										disabled />
								</div>
							</div>
							<div class="row ">
								<div class="col-md-6 col-sm-6 col-xs-6">
									<span class="help-block text-muted small-font"> Stato</span> <input
										type="text" class="form-control" disabled placeholder="Aperto"
										disabled />
								</div>
								<div class="col-md-6 col-sm-6 col-xs-6">
									<span class="help-block text-muted small-font"> Data
										fattura</span>
									<%
										String data_scad = "";
									%>
									<input type="date" class="form-control" value="" />
								</div>
							</div>
							<div class="row ">
								<div class="col-md-6 col-sm-6 col-xs-6">
									<span class="help-block text-muted small-font"> Importo
										fattura</span> <input type="text" class="form-control" />
								</div>
								<div class="col-md-6 col-sm-6 col-xs-6">
									<span class="help-block text-muted small-font">Mese
										Fattura</span>
									<%
										DateFormatSymbols dfs = new DateFormatSymbols(Locale.ITALY);
										String[] itaMonths = dfs.getMonths();
										LocalDate localDate = LocalDate.now();
										int mese = localDate.getMonth().getValue();
										int n = mese - 1;
										String nome = "";
										nome += (n >= 0 && n <= 11) ? itaMonths[n] : "wrong number";
									%>
									<input type="text" class="form-control" value="<%=nome%>"
										disabled />
								</div>
							</div>
							<div class="row ">
								<div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
									<span class="help-block text-muted small-font">Numero
										Fattura</span> <input type="text" class="form-control"
										placeholder="Inserire il numero della fattura" />
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
									<label> <span class="help-block text-muted small-font">
											Data scadenza</span> <input type="date" class="form-control"
										disabled>
									</label>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
									<label> <span class="help-block text-muted small-font">
											Anno fattura</span> <%
 	Calendar calendar = Calendar.getInstance();
 	int prec = 0;
 	prec = (calendar.get(Calendar.YEAR)) - 1;
 	String data = "";
 	data = prec + "-" + calendar.get(Calendar.YEAR);
 %> <input type="text" class="form-control" value="<%=data%>" disabled>
									</label>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!--/card-body-->
	</div>
	<!-- /form card login -->
	<div>
		<h3>
			<c:forEach items="${requestScope.lista}" var="fornitore">
				<c:out value="${fornitore.vatNumber}">
				</c:out>
			</c:forEach>
		</h3>

	</div>

	<div id="footer-body" class=" bg-inverse"></div>
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
</body>
</html>