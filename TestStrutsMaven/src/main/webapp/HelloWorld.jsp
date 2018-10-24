<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World!</title>
    </head>
    <body>
        <h1>HelloWorld.jsp</h1>
        <s:property value="mensaje.valor" />
        <br>
        <p>He dicho hola <s:property value="contHola" /> veces!</p>
        <br>
        <a href="home">Volver</a>
    </body>
</html>