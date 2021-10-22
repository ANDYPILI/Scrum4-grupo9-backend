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
<title>Actualizar proveedor</title>
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



</head>


<body background="https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg" opacity=0.8>
	<!-- Navbar-->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
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

	<div style="padding-left: 5px">
		<h3 class="card-header">Datos a actualizar del proveedor</h3>
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al actualizar el proveedor, verifique que el NIT sea valido</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">proveedor actualizado con exito</div>

			<form id="form1">
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">NIT</span> <input
						type="text" class="form-control"
						placeholder="Inserte NIT aqui..."
						aria-describedby="basic-addon1" required id="nit">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Nombre proveedor</span> <input
						type="text" class="form-control"
						placeholder="Inserte nombre aqui..."
						aria-describedby="basic-addon5" required id="nombre_proveedor">
				</div>
				
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Direccion</span>
					<input type="text" class="form-control"
						placeholder="Inserte direcci�n aqui..."
						aria-describedby="basic-addon3" required id="direccion">
				</div>
				
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Telefono</span> <input
						type="text" class="form-control"
						placeholder="Inserte telefono aqui..."
						aria-describedby="basic-addon2" required id="telefono">
				</div>


				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">ciudad</span> <input
						type="text" class="form-control"
						placeholder="Inserte ciudad aqui..."
						aria-describedby="basic-addon4" required id="ciudad">
				</div>

				
			</form>

			<button type="button" class="btn btn-warning" onclick="actualizar()">
				<i class="fas fa-edit"></i> Actualizar proveedor
			</button>

			<center>
			<div class="container">
				<div class="row">
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/insertarproveedor.jsp'"><h5>Agregar proveedor</h5></a>
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/eliminarproveedor.jsp'"><h5>Eliminar proveedor</h5></a>
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/actualizarproveedor.jsp'"><h5>Actualizar proveedor</h5></a>
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/buscarproveedor.jsp'"><h5>Buscar un proveedor</h5></a>
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/listaproveedores.jsp'"><h5>Listar todos los proveedores</h5></a>
				</div>
			</div>
			</center>
		</div>

	</div>
	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="navbar-brand links" href="#">
					Dise�ado y programado por Scrum 4 </a>
			</div>
		</div>
	</nav>
	<script>
		function actualizar() {
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
			
			var y = document.getElementById("nit").value;
			console.log(y);
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'/listarProveedor', false);
			req.send(null);
			var proveedores = null;
			if (req.status == 200)
				proveedores = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < proveedores.length; i++) {
				console.log(proveedores[i].nit);
								
				if (proveedores[i].nit ==y ) {
					console.log(proveedores[i].nit +" "+y);	
					coincidencia =true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var formData = new FormData();
	 			formData.append("nit",
	 					document.getElementById("nit").value);
	 			formData.append("nombre_proveedor",
	 					document.getElementById("nombre_proveedor").value);
	 			formData.append("direccion",
	 					document.getElementById("direccion").value);
	 			formData.append("telefono", 
	 					document.getElementById("telefono").value);
	 			formData.append("ciudad",
	 					document.getElementById("ciudad").value);
	 			
	 			var xhr = new XMLHttpRequest();
	 			xhr.open("PUT", baseUrl+"/actualizarproveedor");

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("nit").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("direccion").value = "";
				document.getElementById("telefono").value = "";
				document.getElementById("ciudad").value = "";
	 			xhr.send(formData);


			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("nit").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("direccion").value = "";
				document.getElementById("telefono").value = "";
				document.getElementById("ciudad").value = "";
				
			}
		}
	</script>

</body>
</html>