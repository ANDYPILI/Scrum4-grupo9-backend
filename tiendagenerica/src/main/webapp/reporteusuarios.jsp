<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tama�o de la pantalla -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width">
<!-- titulo de la pesta�a -->
<title>Reporte usuarios</title>

<!-- bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<!-- Cargando mi hoja de estilo -->
<link href="style.css" rel="stylesheet" type="text/css" />


<script>
	
	function loadusuarios() {
		var getUrl = window.location;
		var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];

		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseUrl+"/listarusuarios", true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var usuarios = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-dark table-striped'><tr><th>Cedula</th><th>Email</th><th>Nombre</th><th>Password</th><th>Usuario</th></tr>";
				var main = "";
				for (i = 0; i < usuarios.length; i++) {
					main += "<tr><td>" + usuarios[i].cedula_usuario
							+ "</td><td>" + usuarios[i].email_usuario
							+ "</td><td>" + usuarios[i].nombre_usuario
							+ "</td><td>" + usuarios[i].password + "</td><td>"
							+ usuarios[i].usuario + "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("usuariosinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadusuarios();
	}
</script>

</head>


<body background="https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg" opacity=0.5>
	<!-- Navbar-->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand links" href="index.html"><i class="fas fa-chalkboard-teacher"></i>Tienda Tecnologica</a>
			<nav class="navbar navbar-dark bg-dark">
		<div class="container">
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='<%=request.getContextPath()%>/listausuarios.jsp'">
			<i class="fas fa-users"></i> Usuarios</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='<%=request.getContextPath()%>/listaclientes.jsp'">
			<i class="fas fa-address-book"></i> Clientes</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='<%=request.getContextPath()%>/listaproveedores.jsp'">
			<i class="fas fa-truck"></i> Proveedores</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='<%=request.getContextPath()%>/listaproductos.jsp'">
			<i class="fas fa-apple-alt"></i> Productos</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='<%=request.getContextPath()%>/listaventas.jsp'">
			<i class="fas fa-money-check-alt"></i> Ventas</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='<%=request.getContextPath()%>/listareportes.jsp'">
			<i class="fas fa-clipboard-list"></i> Reportes</button>
		</div>
	</nav>
		</div>
	</nav>

	<!-- Navbar modulos-->
	
	
	
	<!-- contenido  -->
	
	<div style="padding-left: 5px;">
		<div class="container">
		<h3 class="card-header">Lista de usuarios</h3>
			
			<div class="tabla">
				<div class="row">
					<!--  Aqui es donde se autogenera la tabla basado en el script -->
					<div class="col align-self-center" id="usuariosinfo">
					
					</div>
	
				</div>
			</div>
	</div>

		<center>
			<div class="container">
        
				<div class="row">
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/reporteclientes.jsp'"><h5>lista Clientes</h5></a>
				</div>

        <div class="row">
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/reporteusuarios.jsp'"><h5>lista usuarios</h5></a>
		
				</div>
        <div class="row">
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/reporteventas.jsp'"><h5>lista de ventas por cliente</h5></a>
		
				</div>
			</div>
			</center>
	</div>
	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="navbar-brand links" href="#">
					Diseñado y programado por Scrum 4 </a>
			</div>
		</div>
	</nav>


</body>
</html>