<%-- 
    Document   : Agregar
    Created on : 27/10/2020, 08:16:34 AM
    Author     : dell
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <h1 class="text-center">Editar Persona</h1>
        <%
            PersonaDAO dao = new PersonaDAO();
            int id = Integer.parseInt((String) request.getAttribute("idper"));
            Persona p = (Persona) dao.list(id);
        %>
        <div class="container p-5">
            <form action="Controlador">
                <label>Id</label>
                <input type="text" name="txtNombre" value="<%= p.getNombre()%>" class="form-control">
                <label>Correo</label>
                <input type="text" name="txtCorreo" value="<%=p.getCorreo()%>" class="form-control">

                <input type="hidden" name="txtId" value="<%=p.getId()%>">
                <div class="p-5">
                     <input type="submit" name="accion" value="Actualizar" class="btn btn-warning btn-block">
                </div>
               
                
                <div class="text-center">
                    <a href="Controlador?accion=listar">Regresar</a>
                </div>
                
            </form>
        </div>


    </body>
</html>
