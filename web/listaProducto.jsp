<%-- 
    Document   : listaAlumno
    Created on : 02-may-2017, 23:16:50
    Author     : Mario
--%>

<%@page import="Almacen.Fichero"%>
<%@page import="java.io.EOFException"%>
<%@page import="java.io.*"%>
<%@page import="Almacen.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Productos</title>
    </head>
    <body>
        <%@include file="html/logo.html" %>
        <%@include file="html/nav.html" %>
        <h1>Lista Productos</h1>
        <table>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>Precio</th>
                <th>FechaEntrada</th>
            </tr>
        <%
            ObjectInputStream ois;
            String respuesta="";
            
           
                Fichero f = new Fichero("almacen.bin","rb");
                Producto aux = (Producto) f.leerObjeto();
                while(aux!=null){
                    
                    respuesta+="<tr>\n"
                            + "<td>"+aux.getId()+"</td>\n"
                            + "<td>"+aux.getNombre()+"</td>\n"
                            + "<td>"+aux.getDescripcion()+"</td>\n"
                            + "<td>"+aux.getPrecio()+"</td>\n"
                             + "<td>"+aux.getFechaEntrada()+"</td>\n"
                            + "</tr>\n";
                    //respuesta+=aux.toString();
                   
                    
                    aux = (Producto ) f.leerObjeto();
                }
            
            f.close();
        %>
        <%=respuesta%>
       </table>
        
    </body>
</html>
