<%-- 
    Document   : index
    Created on : 04-may-2017, 11:50:18
    Author     : Alumno IG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/style.css" type="text/css"></link>
        <title>Leroy Merlin</title>
    </head>
    <body>
        <%@include file="html/logo.html" %>
        <h1>Almacén</h1>
        <h2>Opciones disponibles</h2>
        <ul>
            <li><a href="insertaProducto.jsp">Añadir producto</a></li>
            <li><a href="listaProducto.jsp">Listado de productos</a></li>
        </ul>
    </body>
</html>
