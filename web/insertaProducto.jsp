<%-- 
    Document   : insertaProducto
    Created on : 04-may-2017, 12:23:58
    Author     : Alumno IG
--%>

<%@page import="Almacen.Producto"%>
<%@page import="Almacen.Fichero"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar producto</title>
    </head>
    <%
        
            int id;
            String nombre=request.getParameter("nombre");
            String descripcion=request.getParameter("descripcion");
            double  precio;
            String fechaEntrada=request.getParameter("fechaEntrada");

            //LocalDate fechaEntrada=LocalDate.of(request.getParameter("fechaEntrada").split(7,  4), request.getParameter("fechaEntrada").split(4,  2), request.getParameter("fechaEntrada").split(1,  2));
               
            String respuesta;
            try{
                
                
                
                
                
                Fichero f = new Fichero("almacen.bin","ab");
                 
                if (request.getParameter("id")==null
                        || nombre==null 
                        || descripcion==null
                        || request.getParameter("precio")==null
                        )
                {
                    respuesta="Alguno de los campos quedó sin rellenar";
                }
                else{
                    precio =Double.parseDouble(request.getParameter("precio"));
                    id= Integer.parseUnsignedInt(request.getParameter("id"));  
                    f.escribirObjeto(new  Producto(id,nombre,descripcion,precio,fechaEntrada));
                    respuesta="Se insertó con éxito";
                    
                }
                f.close();
            }catch(NumberFormatException nfe){
                respuesta="Error en los numeros";
            }
            
            
        %>
    <body>
        <%@include file="html/logo.html" %>
        <%@include file="html/nav.html" %>
        <h1>Inserta producto</h1>
        <h2>Formulario</h2>
        <form id ="formulario" action="insertaProducto.jsp" method="POST">
            Id: <input type="number" name="id"><br>
            Nombre:<input type="text" name="nombre"><br>
            Descripción:<input type="text" name="descripcion"><br>
            Precio: <input type="number" name="precio"><br>
            Fecha Entrada:<input type="text" name="fechaEntrada"><br>
            <input type="submit" value="Enviar">
            <input type="reset" value="Reset">
        </form>
        <p><%=respuesta%></p>
              
    </body>
</html>
