<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Carta a los ReyesMagos</title>

<!-- Bootstrap Core CSS y Jquery CSS -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="dist/css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css">
<link href="dist/css/jquery.alerts.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="dist/css/jquery-ui.css" rel="stylesheet" type="text/css">
<link rel='stylesheet' href='dist/css/estilos.css'>

<!-- Bootstrap JS y Jquery JS-->
<script src="dist/js/jquery-latest.min.js"></script>
<script src="dist/js/responsive.js"></script>
<script src="dist/js/bootstrap.min.js"></script>
<script src="dist/js/jquery.js"></script>
<script src="dist/js/jquery-1.11.js"></script>
<script src="dist/js/jquery-ui.js"></script>
<script src="dist/js/jquery-1.4.2.min.js"></script>
<script src='dist/js/funciones.js'></script>

</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<img src="img/11818262-navidad-reyes-magos.jpg"></img>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<span class="glyphicon glyphicon-lock"></span> Acceso al sistema
					</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form"
							action="${pageContext.request.contextPath}/Action" method="post">

							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label">
									Email</label>
								<div class="col-sm-9">
									<input type="email" class="form-control" id="inputEmail"
										required="required" name="inputEmail" placeholder="Email"
										required>
								</div>
							</div>
							<div class="form-group"
								style="margin-top: 18px; margin-bottom: 18px;">
								<label for="inputPassword3" class="col-sm-3 control-label">
									Password</label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="inputPassword"
										name="inputPassword" placeholder="Password" required>
								</div>
							</div>

							<div class="form-group last">
								<div class="col-sm-offset-3 col-sm-9">

									<input type="hidden" name="action" value="UsuarioLogin">
									<button name="boton" id="boton" type="submit"
										class="btn btn-success btn-sm">Entrar</button>
									<a class="btn btn-primary btn-sm" data-toggle="modal"
										data-target="#largeModal">¿Olvidó su clave?</a>

								</div>
							</div>
						</form>
					</div>
					<div class="panel-footer">
						<span class="glyphicon glyphicon-erase"></span> App ReyesMagos
					</div>
				</div>
			</div>
		</div>
		<!-- largeModal -->
	</div>


	<!-- Ventana modal de confirmación de errores/mensajes -->
	<%
		String info = "";

		if (request.getParameter("message") != null) {
			info = request.getParameter("message");
		} else {
			if (request.getParameter("error") != null) {
				info = request.getParameter("error");
			}
		}
	%>

	<%
		if (!info.equals("") && info != null) {
	%>
	<div class="alert alert-warning alert-dismissable"
		style="width: 35%; margin: 0 auto;">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<span class="glyphicon glyphicon-bell"
			style="float: left; margin: 0 10px 50px 0;"></span>
		<%=info%>
	</div>
	<%
		info = "";
		}
	%>

</body>
</html>