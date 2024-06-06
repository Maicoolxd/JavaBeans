<%--
Autor: Michael Guamán
fecha: 05/06/2024
Descripcion: En el setter obtenemos los datos ingresados por teclado
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Seteando el javabeans</title>
    <%-- Obtenemos los estilos --%>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
    <h1>Seteamos el javabeans</h1>
    <%--Seteamos los parametros y obtenemos acceso al JavaBeans--%>
    <jsp:useBean id="rectangulo" class="web.Rectangulo" scope="session"/>

    <%--Creamos el formulario para el ingreso de los datos --%>
    <form action="setter.jsp" method="post">
        <label for="base">Ingrese la base:</label>
        <%-- Obtenemos los datos del getBase --%>
        <input type="text" name="base" id="base" value="<%=rectangulo.getBase()%>"/>
        <br>
        <label for="altura">Ingrese la altura:</label>
        <%-- Obtenemos los datos del setAltura --%>
        <input type="text" name="altura" id="altura" value="<%=rectangulo.getAltura()%>"/>
        <br>
        <%-- Creamos el botón de calcular --%>
        <input type="submit" value="Calcular">
    </form>

    <%
        // Realizamos una condición para el ingreso de los datos
        if (request.getMethod().equalsIgnoreCase("POST")) {
            // Obtener los valores ingresados por teclado
            String baseStr = request.getParameter("base");
            String alturaStr = request.getParameter("altura");

            // Realizamos otra condición en caso de que los valores sean nulos
            if (baseStr != null && alturaStr != null && !baseStr.isEmpty() && !alturaStr.isEmpty()) {
                try {
                    // Convertir los valores a números de punto flotante
                    double base = Double.parseDouble(baseStr);
                    double altura = Double.parseDouble(alturaStr);

                    // Realizamos una condición en el caso de que los valores sean menores que 0
                    if (base > 0 && altura > 0) {
                        // Establecemos los valores en el JavaBean
                        rectangulo.setBase(base);
                        rectangulo.setAltura(altura);
                    } else {
                        // Colocamos mensajes de error en caso de que no cumplan las condiciones
                        out.println("<p class='error'>Ingrese valores mayores a 0</p>");
                    }
                } catch (NumberFormatException e) {
                    out.println("<p class='error'>Ingrese números válidos</p>");
                }
            } else {
                out.println("<p class='error'>Los campos se encuentran vacíos</p>");
            }
        }
    %>

    <%
        // Mostrar los resultados una vez que se haya ingresado los valores mediante una condición
        if (rectangulo.getBase() > 0 && rectangulo.getAltura() > 0) {
    %>
    <h2>Resultados</h2>
    <%-- Obtenemos los valores ingresados --%>
    <p>Valor de la base: <%= rectangulo.getBase() %></p>
    <p>Valor de la altura: <%= rectangulo.getAltura() %></p>
    <p>El área del rectángulo: <%= rectangulo.getArea() %></p>
    <%
        }
    %>

    <br>
    <%-- Regresamos al index --%>
    <a href="index.jsp">Ingresar otros valores</a>
</div>
</body>
</html>
