<%--
Autor: Michael Guamán
fecha: 05/06/2024
Descripcion: Es la parte principal donde seteamos y obtenemos los datos de los jsp
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>javabeans</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
    <h1>Manejo de Java beans</h1>
    <%-- Obtenemos los datos del setter--%>
<a href="setter.jsp">Seteamos los valores del javabeans</a>
<br>
    <%-- Mostramos los datos que se ingreso por teclado--%>
<a href="getter.jsp">Obtenemos los valores del javabeans</a>
</div>
</body>
</html>
