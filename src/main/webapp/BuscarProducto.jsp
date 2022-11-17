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
		int cod = Integer.parseInt(request.getParameter("cod"));
		Producto mp = new Producto();
		mp.ConsulEditarProductos(cod);
		%>

		<form action="EditarProductos.jsp?cat=<%= mp.getId_cat()%>" method="post">
			<table>
				<tr>
					<td>Codigo Producto:</td>
					<td><input type="text" name="editarcod" value="<%=cod%>">
					</td>
				</tr>
				<tr>
					<td>Categoria</td>
					<td><output><%=mp.getId_cat()%></output></td>
				</tr>
				<tr>
					<td>Descripcion</td>
					<td><input type="text" name="editardesc"
						value="<%=mp.getNombre_pr()%>" /></td>
				</tr>
				<tr>
					<td>Precio</td>
					<td><input type="text" name="editarprec"
						value="<%=mp.getPrecio_pr()%>" /></td>
				</tr>
				<tr>
					<td>Cantidad</td>
					<td><input type="text" name="editarcant"
						value="<%=mp.getCantidad_pr()%>" /></td>
				</tr>
			</table>
			<br />
			<br /> <input type="submit" name="Actualizar"/>
		</form>
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