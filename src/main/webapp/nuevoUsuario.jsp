<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Asaderos JC</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<main>
		<header>
			<h1>Asaderos "JC"</h1>
			<h2 class="destacado">Carnes a la Brasa</h2>
			<h4 id="favorito">Carnes y embutidos al gusto de tu paladar!</h4>
		</header>
		<nav>
			<a href="index.jsp"> Inicio </a> 
			<a class="active" href="todos.jsp">Ver Productos</a> 
			<a href="consultaCategoria.jsp">Buscar Por Categoria</a> 
			<a href="nuevoProducto.jsp">Registrar Productos</a> 
			<a href="nuevoUsuario.jsp">Registrar Usuario</a>
			<a href="venta.jsp">Venta</a>
		</nav>
		<section>
			<form action="resultadoUser.jsp" method="post">
		<table border="0">
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="txtNombre" required/>*</td>
			</tr>
			<tr>
				<td>Contraseña</td>
				<td><input type="password" name="txtClave" minlength="5" required/>*</td>
			<tr>
				<td>Cedula</td>
				<td><input type="text" name="txtCedula" maxlength="10" required/></td>
			</tr>
			<tr>
				<td>Estado Civil</td>
				<td><select name="cmbECivil">
						<option value="Soltero">Soltero</option>
						<option value="Casado">Casado</option>
						<option value="Divorciado">Divorciado</option>
						<option value="Viudo">Viudo</option>
				</select></td>
			</tr>
			<tr>

				<td>Lugar residencia</td>
				<td><input type="radio" name="rdResidencia" value="Sur" checked="checked"/>Sur
					<input type="radio" name="rdResidencia" value="Norte" />Norte 
					<input type="radio" name="rdResidencia" value="Centro" />Centro</td>
			</tr>
			<tr>
				<td>Mes y año de nacimiento</td>
				<td><input type="date" name="fecha" required/></td>
			</tr>
			<tr>
				<td>Color Favorito</td>
				<td><input type="color" name="colorFavorito"/></td>
			</tr>

			<tr>
				<td>Correo Electronico</td>
				<td><input type="email" name="email" required/></td>
			</tr>

			<tr>
				<td><input type="submit" value="REGISTRAR" /></td>
				<td><input type="reset" value="BORRAR"></td>
			</tr>
		</table>
	</form>
		</section>
		<footer>
			<ul>
				<li><a href="https://www.facebook.com/camachinJ">Facebook</a></li>
				<li><a href="https://www.instagram.com/jandresito1948/">Instagram</a></li>
				<li><a href="https://github.com/thehaterr">Twitter</a></li>
			</ul>
		</footer>
	</main>
</body>
</html>