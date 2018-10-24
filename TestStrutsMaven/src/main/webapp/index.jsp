<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Basic Struts 2 Application - Welcome</title>
    </head>
    <body>
        <h1>Welcome To Struts 2!</h1>

        <s:url action="hello" var="linkHola">
            <s:param name="nombre">Patricio Pérez Pinto</s:param>
            <s:param name="edad">30</s:param>
        </s:url>

        <p><a href="${linkHola}">Hello World</a></p>
        
        <p>Llena este formulario</p>

        <s:form action="registrar">
          <s:textfield name="usuario.nombre" label="Nombre"/>
          <s:textfield name="usuario.edad" label="Edad" />
          <s:submit value="Submit" />
        </s:form>
    </body>
</html>