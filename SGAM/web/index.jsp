
<!DOCTYPE html>
<html>
<head>
	<title>Bienvenido</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="Img/logoCaterpillar.png" >
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
</head>
<body >
<div class="container">
   
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Inicia Sesion</h3>
				
			</div>
			<div class="card-body">
				<form action="UsuarioIniciar" method="POST" autocomplete="OFF">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Documento" name="documento">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="Contraseña" name="contrasenia">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox"> Recuerdame
					</div>
					<div class="form-group">
						<input type="submit" value="Ingresar" class="btn float-right login_btn">
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					¿No estas registrado?<a href="registrarUsuario.jsp">Registrate</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="recuperarContrasenia.jsp">¿Olvidaste tu contraseña?</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>