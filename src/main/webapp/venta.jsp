<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Asaderos JC</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
</head>
<body>
	<header>
		<h1>Asaderos "JC"</h1>
		<h2 class="destacado">Carnes a la Brasa</h2>
		<h4 id="favorito">Carnes y embutidos al gusto de tu paladar!</h4>
	</header>
	<nav>
		<a href="index.jsp"> Inicio </a> <a class="active" href="todos.jsp">Ver
			Productos</a> <a href="consultaCategoria.jsp">Buscar Por Categoria</a> <a
			href="nuevoProducto.jsp">Registrar Productos</a> <a
			href="nuevoUsuario.jsp">Registrar Usuario</a> <a href="venta.jsp">Venta</a>
	</nav>
	<form action="TarjetaCredito.jsp" method="post">
		<table>
			<tr>
				<td>Escoja un Usuario</td>
				<td>
					<%
					Usuario user = new Usuario();
					String combo = user.mostrarUsuario();
					out.print(combo);
					%>
				</td>
			</tr>
			<tr>
				<td>Escoja un Producto</td>
				<td>
					<%
					Producto prod = new Producto();
					String combo2 = prod.mostrarProducto();
					out.print(combo2);
					%>
				</td>
			</tr>
			<tr>
						<td>Cantidad</td>
						<td><input type="number" name="txtCantidad" required /></td>
					</tr>
			<tr>
				<td><input type="submit" value="Enviar" /></td>
				<td><input type="reset" value="Restablecer"></td>
			</tr>
		</table>
	</form>
	<footer>
		<ul>
			<li><a href="https://www.facebook.com/camachinJ">Facebook</a></li>
			<li><a href="https://www.instagram.com/jandresito1948/">Instagram</a></li>
			<li><a href="https://github.com/thehaterr">Twitter</a></li>
		</ul>
	</footer>
</body>
</html>