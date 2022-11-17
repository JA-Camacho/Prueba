<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.Producto"%>
<html>
<head>
<title>Asaderos JC</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
</head>
<body>
	<main>
		<header>
			<h1>Asaderos ""JC"</h1>
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
		Producto producto = new Producto();
		out.print(producto.consultarTodo());
		%>

		<section class="contenedor">
			<div class="caja">
				<h3>PARRILLADA</h3>
				<img class="producto" alt="Parrillada" src="imagenes/parrillada.jpg">
				<p class="precio">$ 14.99</p>
			</div>
			<div class="caja">
				<h3>FILETE DE CARNE</h3>
				<img class="producto" alt="Filete de Carne"
					src="imagenes/filete_carne.png">
				<p class="precio">$ 6.99</p>
			</div>
			<div class="caja">
				<h3>LOMO SALTEADO</h3>
				<img class="producto" alt="Lomo Salteado"
					src="imagenes/lomo_salteado.jpg">
				<p class="precio">$ 5.99</p>
			</div>
			<div class="caja">
				<h3>PICAÑA</h3>
				<img class="producto" alt="Picana" src="imagenes/picana.jpg">
				<p class="precio">$ 10.99</p>
			</div>
			<div class="caja">
				<h3>POLLO BROASTER</h3>
				<img class="producto" alt="Pollo Broaster"
					src="imagenes/pollo_broaster.jpg">
				<p class="precio">$ 4.99</p>
			</div>
			<div class="caja">
				<h3>TOMAHAWK</h3>
				<img class="producto" alt="Tomahawk" src="imagenes/Tomahawk.jpg">
				<p class="precio">$ 11.99</p>
			</div>
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