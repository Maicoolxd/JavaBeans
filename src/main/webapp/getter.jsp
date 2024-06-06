<%--
Autor: Michael Guamán
fecha: 05/06/2024
Descripcion: En el getter mostramos los datos que se obtuvieron en el setter
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Obtener los valores de JAvaBeans</title>

    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
    <h1>Calculando el área del rectángulo</h1>
    <jsp:useBean id="rectangulo" class="web.Rectangulo" scope="session"/>
    <p>Valor de la base: <jsp:getProperty name="rectangulo" property="base" /></p>
    <p>Valor de la altura: <jsp:getProperty name="rectangulo" property="altura"/></p>
    <p>El área del rectángulo: <%= rectangulo.getArea() %></p>
    <br>
    <a href="index.jsp">Ir al inicio</a>
</div>
</body>
</html>
