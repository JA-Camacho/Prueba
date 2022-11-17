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
		<%
		String numero_tar = request.getParameter("numero_tar");
		String titular_tar = request.getParameter("titular_tar");
		String fechaVencimiento = request.getParameter("fecha_tar");
		String cvv_tar = request.getParameter("cvv_tar");
		Tarjeta tarj = new Tarjeta();
		out.println(tarj.ingresarTarjeta(numero_tar, titular_tar, fechaVencimiento, cvv_tar));
		%>
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