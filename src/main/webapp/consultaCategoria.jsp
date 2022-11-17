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
		<a href="index.jsp"> Inicio </a> 
			<a class="active" href="todos.jsp">Ver Productos</a> 
			<a href="consultaCategoria.jsp">Buscar Por Categoria</a> 
			<a href="nuevoProducto.jsp">Registrar Productos</a> 
			<a href="nuevoUsuario.jsp">Registrar Usuario</a>
			<a href="venta.jsp">Venta</a>
	</nav>
	<form action="resultado.jsp" method="post">
	Escoje una Categoria
		<%
		Categoria categoria = new Categoria();
		String combo = categoria.mostrarCategoria();
		out.print(combo);
		%>
		<input type="submit" value="Enviar Consulta" /> 
		<input type="reset" value="Restablecer">
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