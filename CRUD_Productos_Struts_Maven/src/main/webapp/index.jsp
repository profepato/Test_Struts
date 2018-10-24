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
        <h1>Create Productos</h1>
        <s:form action="registrarProducto">
          <s:textfield name="producto.nombre" label="Nombre" />
          <s:textfield name="producto.precio" label="Precio" />
          <s:submit value="Registrar" />
        </s:form>
        <h1>Delete Productos</h1>
        <s:form action="eliminarProducto">
          <s:textfield name="idProducto" label="Id producto" />
          <s:submit value="Eliminar" />
        </s:form>
        
        <s:url action='readProductos' var="linkListado"></s:url>
        
        <a href="readProductos">Listar</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="productos">
                   <tr>
                       <td><s:property value="id" /></td>
                       <td><s:property value="nombre" /></td>
                       <td><s:property value="precio" /></td>
                       <td>
                           <form action="eliminarProducto">
                               <input type="hidden" name="idProducto" value="<s:property value="id" />">
                               <input type="submit" value="Eliminar">
                           </form>
                       </td>
                   </tr> 
                </s:iterator>
            </tbody>
        </table>

    </body>
</html>
