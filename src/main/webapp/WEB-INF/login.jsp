<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="PT-br">
    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/telas/estilo.css">
    </head>
    <body>
        <div>
            <h1></h1>
            <c:if test="${not empty msgErro}">
                <h2><c:out value="${msgErro}" /></h2>
            </c:if>
            <c:if test="${not empty msgLogout}">
                <h2><c:out value="${msgLogout}" /></h2>
            </c:if>
        </div>

            <div id="log">
                <img src="${pageContext.request.contextPath}/telas/logo.png" id="logo" />

                <form action="${pageContext.request.contextPath}/login" method="post">
                    <label> Usuário:   </label>
                    <input type="text" id="txtUser" name="usuario"/>
                    <p/>
                    <label> Senha:   </label>
                    <input type="password" id="txtSenha" name="senha"/>
                    <p/>
                    <input type="submit" id="inpSubmit" />
                    <!--<a href="#">Esqueceu a senha?</a>-->
                </form>
            </div>
            <h1></h1>
    </body>
</html>