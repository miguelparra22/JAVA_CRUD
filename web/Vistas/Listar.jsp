<%-- 
    Document   : Listar
    Created on : 27/10/2020, 08:16:24 AM
    Author     : dell
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
     
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1 class="text-center">PERSONAS</h1>
            <div class="p-5">
                   <a class="btn btn-block btn-success" href="Controlador?accion=add">Agregar Nuevo</a>
            </div>
         
        </div>
        <div class="p-5">
             <table class="table table-bordered">
            <thead>
            <th>ID</th>
            <th>Nombre</th>
            <th>Correo</th>
            <th>Acciones</th>
        </thead>
        <tbody>
        <%
            PersonaDAO dao = new PersonaDAO();
            List<Persona> list = dao.listar();
            Iterator<Persona> iter = list.iterator();
            Persona per = null;

            while (iter.hasNext()) {
                per = iter.next();

        %>
        
            <tr>
                <td><%= per.getId()%></td>
                <td><%= per.getNombre()%></td>
                <td><%= per.getCorreo()%></td>
                <td>
                    <a class="btn btn-warning" href="Controlador?accion=editar&id=<%= per.getId()%>">Editar</a>
                    <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%= per.getId()%>">Remove</a>
                </td>
            </tr>

        </tbody>
        <%}%>
    </table>
        </div>
       

</body>
</html>
