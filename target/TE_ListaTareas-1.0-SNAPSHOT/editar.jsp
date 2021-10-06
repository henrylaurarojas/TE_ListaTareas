<%@page import="com.emergentes.modelo.Tareas"%>
<%
    Tareas item = (Tareas) request.getAttribute("miTareas");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EDITAR</title>
    </head>
    <body>
        <h1><%= (item.getId()==0) ? "Nuevo Registro" : "Editar Registro" %></h1>
        <form action="MainController" method="post">
            <table>
                <input type="hidden" name="id" value="<%= item.getId() %>"/>
                <tr>
                    <td>Tarea: </td>
                    <td><input type="text" name="tarea" value="<%= item.getTarea() %>" /></td>
                </tr>
                <tr>
                    <td>Prioridad: </td>
                    <td>
                        <input type="radio" name="prioridad" value="Alta">Alta<br>
                        <input type="radio" name="prioridad" value="Media">Media<br>
                        <input type="radio" name="prioridad" value="Baja">Baja
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ENVIAR"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
