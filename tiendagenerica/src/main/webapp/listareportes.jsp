<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tamaño de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pestaña -->
<title>Lista de ventas</title>
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
	var baseurl = "http://localhost:8080/listardetalleventas";
	function loaddetalleventas() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var detalleventa = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-dark table-striped'><tr><th>codigo_detalle_venta</th><th>cantidad_producto</th><th>codigo_producto</th><th>codigo_venta</th><th>valoriva</th><th>total_venta</th><th>valor_venta</th></tr>";
				var main = "";
				for (i = 0; i < detalleventas.length; i++) {
					main += "<tr><td>" + detalleventas[i].codigo_detalle_venta
							+ "</td><td>" + detalleventas[i].cantidad_producto          
							+ "</td><td>" + detalleventas[i].codigo_producto
							+ "<tr><td>" + ventas[i].codigo_venta
							+ "</td><td>" + detalleventas[i].valoriva
							+ "</td><td>" + detalleventas[i].total_venta + "</td><td>"
							+ detalleventas[i].valor_venta + "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("detalleventainfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loaddetalleventas();
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
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listausuarios.jsp'">
			<i class="fas fa-users"></i> Usuarios</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listaclientes.jsp'">
			<i class="fas fa-address-book"></i> Clientes</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listaproveedores.jsp'">
			<i class="fas fa-truck"></i> Proveedores</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listaproductos.jsp'">
			<i class="fas fa-apple-alt"></i> Productos</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listaventas.jsp'">
			<i class="fas fa-money-check-alt"></i> Ventas</button>
			<button type="button" class="btn btn-outline-primary" onclick="window.location.href='/listareportes.jsp'">
			<i class="fas fa-clipboard-list"></i> Reportes</button>
		</div>
	</nav>
		</div>
	</nav>
	
	
	<!-- contenido  -->
	
	<div style="padding-left: 5px;">
	
		<div style="padding-left: 5px">
		<h3 class="card-header">Tabla detalle ventas</h3>
		<div class="container">
			<div class="container">
				<div class="row">
					<!--  Aqui es donde se autogenera la tabla basado en el script -->
					<div class="col align-self-center" id="detalleventainfo">
					
					</div>
	
				</div>
			</div>
	
		<center>
			<div class="container">
        
				<div class="row">
				<a href="#" class="link" onclick="window.location.href='/reporteclientes.jsp'"><h5>lista Clientes</h5></a>
				</div>

        <div class="row">
				<a href="#" class="link" onclick="window.location.href='/reporteusuarios.jsp'"><h5>lista usuarios</h5></a>
		
				</div>
        <div class="row">
				<a href="#" class="link" onclick="window.location.href='/reporteventas.jsp'"><h5>lista de ventas por cliente</h5></a>
		
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