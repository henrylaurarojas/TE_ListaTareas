<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Tareas"%>
<%
    ArrayList<Tareas> lista = (ArrayList<Tareas>)session.getAttribute("listareas");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INDEX</title>
    </head>
    <body>
        <h1>Lista de Tareas</h1>
        <a href="MainController?op=nuevo">NUEVA TAREA</a>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>TAREA</th>
                <th>PRIORIDAD</th>
                <th>COMPLETADO</th>
            </tr>
            <%
                if(lista != null){
                    for(Tareas item: lista){
            %>
            <tr>
                <th><%= item.getId() %></th>
                <th><%= item.getTarea() %></th>
                <th><%= item.getPrioridad() %></th>
                <th><input type="checkbox" ></th>
                <th><a href="MainController?op=editar&id=<%= item.getId() %>">EDITAR</a></th>
                <th><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                       onClick="return confirm('¿Está seguro de eliminar la Tarea?')">ELIMINAR</a></th>
            </tr>
            <%
                }
                }   
            %>
        </table>
    </body>
</html>
