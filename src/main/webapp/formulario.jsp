<%-- formulario.jsp --%>
<%-- Autor: fecha: 05/06/2024 Descripcion: --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ingresar Valores</title>
</head>
<body>
<h1>Ingresar Valores del Rectángulo</h1>
<form action="setter.jsp" method="post">
    <label for="base">Base:</label>
    <input type="text" id="base" name="base" required>
    <br>
    <label for="altura">Altura:</label>
    <input type="text" id="altura" name="altura" required>
    <br>
    <input type="submit" value="Enviar">
</form>
<br>
<a href="index.jsp">Regresar al inicio</a>
</body>
</html>
