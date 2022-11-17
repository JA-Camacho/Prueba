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
			<a href="index.jsp"> Inicio </a> <a class="active" href="todos.jsp">Ver
				Productos</a> <a href="consultaCategoria.jsp">Buscar Por Categoria</a> <a
				href="nuevoProducto.jsp">Registrar Productos</a> <a
				href="nuevoUsuario.jsp">Registrar Usuario</a> <a href="venta.jsp">Venta</a>
		</nav>
		<%
		String cedula = request.getParameter("cmbCedula");
		Usuario user = new Usuario();
		user.ConsulUsuario(cedula);
		int cod = Integer.parseInt(request.getParameter("cmbProducto"));
		Producto prod = new Producto();
		prod.ConsulEditarProductos(cod);
		double monto = prod.getPrecio_pr();
		float cantidad = Float.parseFloat(request.getParameter("txtCantidad"));
		monto = monto * cantidad;
		%>

		<form action="resultadoVenta.jsp"
			method="post">
			<table>
				<tr>
					<td>Cliente:</td>
					<td><output><%=user.getNombre()%></output>
					</td>
				</tr>
				<tr>
					<td>Monto</td>
					<td><output><%=monto%></output></td>
				</tr>
				<tr>
					<td>Titular</td>
					<td><input type="text" name="titular_tar" required
						 /></td>
				</tr>
				<tr>
					<td>Tarjeta</td>
					<td><input type="text" name="numero_tar" minlength="16" required
						 /></td>
				</tr>
				<tr>
					<td>Fecha</td>
					<td><input type="text" name="fecha_tar" required/></td>
				</tr>
				<tr>
					<td>CVV</td>
					<td><input type="text" name="cvv_tar" required
						 /></td>
				</tr>
			</table>
			<br /> <br /> <input type="submit" name="Actualizar" />
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