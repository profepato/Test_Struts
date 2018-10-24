<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro OK</h1>
        Nombre:<s:property value="usuario.nombre" />
        <br>
        Edad:<s:property value="usuario.edad" />
    </body>
</html>
