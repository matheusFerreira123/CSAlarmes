<%-- 
    Document   : login
    Created on : 06/07/2018, 22:32:05
    Author     : Rafael
--%>

<%@page import="persistencia.AdminBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../forma/forma.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <title>Camargo Silva</title>
    </head>
    <body>
      <div class="container" id="contAcesso">

            <h2 align="center" style="margin-top: 100px;">Área Restrita</h2>
            <div id="imgArea">
                <img src="img/cadeado.png" alt=""/>
            </div>
            <form style="margin-left: 40%;" class="form-group" id="formAdm" method="post" action="validar.jsp" >
                <h5>Login</h5>
                <input type="text" placeholder="Digite o login" name="email" id="login" class="form-control" style="width: 250px" />
                <br>
                <h5>Senha</h5>
                <input type="password" placeholder="Digite a senha"  name="senha" id="emailAdm" class="form-control" style="width: 250px" />
                <br>
                <input  type="submit" name="entrar" value="Entrar" class="btn btn-group pull-right"/>
            </form>

        </div>

    </body>
</html>
