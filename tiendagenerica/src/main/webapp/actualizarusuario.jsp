<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tama?o de la pantalla -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width">
<!-- titulo de la pesta?a -->
<title>Actualizar usuario</title>
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

	<div style="padding-left: 5px">
		<div style="padding-left: 5px">
		<h3 class="card-header">Datos a actualizar del usuario</h3>
		<div class="container">
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al actualizar el usuario, verifique que la cedula y usuario dados sean validos</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Usuario actualizado con exito</div>

			<form id="form1">
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">Cedula</span> <input
						type="text" class="form-control"
						placeholder="Inserte cedula aqui..."
						aria-describedby="basic-addon1" required id="cedula_usuario">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Email</span> <input
						type="text" class="form-control"
						placeholder="Inserte email aqui..."
						aria-describedby="basic-addon2" required id="email_usuario">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Nombre completo</span>
					<input type="text" class="form-control"
						placeholder="Inserte nombre aqui..."
						aria-describedby="basic-addon3" required id="nombre_usuario">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Password</span> <input
						type="text" class="form-control"
						placeholder="Inserte password aqui..."
						aria-describedby="basic-addon4" required id="password">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Usuario</span> <input
						type="text" class="form-control"
						placeholder="Inserte usuario aqui..."
						aria-describedby="basic-addon5" required id="user">
				</div>
			</form>

			<button type="button" class="btn btn-warning" onclick="actualizar()">
				<i class="fas fa-edit"></i> Actualizar usuario
			</button>

			<center>
			<div class="container">
				<div class="row">
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/insertarusuario.jsp'"><h5>Agregar nuevo usuario</h5></a>
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/eliminarusuario.jsp'"><h5>Eliminar usuario</h5></a>
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/actualizarusuario.jsp'"><h5>Actualizar usuario</h5></a>
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/buscarusuario.jsp'"><h5>Buscar un usuario</h5></a>
				<a href="#" class="link" onclick="window.location.href='<%=request.getContextPath()%>/listausuarios.jsp'"><h5>Listar todos los usuarios</h5></a>
				</div>
			</div>
			</center>
		</div>

	</div>
	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="navbar-brand links" href="#">
					Dise?ado y programado por Scrum 4 </a>
			</div>
		</div>
	</nav>
	<script>
		function actualizar() {
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
			
			
			var y = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', baseUrl+'/listarusuarios', false);
			req.send(null);
			var usuarios = null;
			if (req.status == 200)
				usuarios = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			for (i = 0; i < usuarios.length; i++) {
				console.log(usuarios[i].cedula_usuario);
				
				if (usuarios[i].cedula_usuario == y) {
					console.log(usuarios[i].cedula_usuario + " " + y);
					coincidencia = true
					break;
				}
			}
			console.log(coincidencia);

			if (coincidencia != false) {
				var formData = new FormData();
				formData.append("cedula_usuario", document
						.getElementById("cedula_usuario").value);
				formData.append("email_usuario", document
						.getElementById("email_usuario").value);
				formData.append("nombre_usuario", document
						.getElementById("nombre_usuario").value);
				formData.append("password",
						document.getElementById("password").value);
				formData.append("usuario",
						document.getElementById("user").value);
				
				var xhr = new XMLHttpRequest();
				xhr.open("PUT", baseUrl+"/actualizarusuarios");

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
				xhr.send(formData);

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
			}
		}
	</script>

</body>
</html>