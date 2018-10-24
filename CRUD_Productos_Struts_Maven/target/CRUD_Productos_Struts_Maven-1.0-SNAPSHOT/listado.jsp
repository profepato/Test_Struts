<%@page import="model.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Productos</h1>
        
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="productos">
                   <tr>
                       <td><s:property value="id" /></td>
                       <td><s:property value="nombre" /></td>
                       <td><s:property value="precio" /></td>
                   </tr> 
                </s:iterator>
            </tbody>
        </table>
            
        <a href="home">Volver</a>
    </body>
</html>
