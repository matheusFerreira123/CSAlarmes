

<%@page import="persistencia.ClienteBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Camargo Silva</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../forma/forma.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../js/notify.js" type="text/javascript"></script>
        <script src="../js/notify.min.js" type="text/javascript"></script>
        <script src="../js/validation/jquery.validate.js" type="text/javascript"></script>
        <script src="../js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/validation/validacao.js" type="text/javascript"></script>
        
        <link rel="icon" href="img/cs.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/cs.ico" type="image/x-icon" />
       
    </head>
    
    <body>
        <%
                ArrayList<Cliente> lista = ClienteBD.listar();
        %>
        
        <div id="validationimage" class="container-fluid">
            <div class="row">
                <div class="col-2" id="adm">
                    <a href="acesso.html"><img src="img/admin.png" alt=""/></a>
                </div>
                
                <div id="imglogin" class="col-12">
                    <img src="img/oie_transparent.png" alt=""/>
                  
                </div>
                
                
                <%
                    for(int i=0; i< lista.size();i++){
                        Cliente cadaCliente = lista.get (i);
                %>
                <form id="form" name="form" class="form-group" onsubmit="return validar()" method="post">
                        
                        <div id="bloco" class="col-6">
                            <div class="col-12">
                                <h5>E-mail</h5>
                                <input type="email" name="email" id="email" class="form-control" style="width: 250px" />
                                
                            </div>
                            <div class="col-12">
                                <h5>Senha</h5>
                                <input type="password" name="senha" id="senha" class="form-control" style="width: 250px"/>
                            </div>

                            <div id="btn"><a href="cliente.html"><h5>ENTRAR</h5></a></div>
                        </div>
                    </form>
                
                        <a href="excluir.jsp?cpf=<%=cadaCliente.getCpf()%>"><input style="margin-left: 70%;" type="button" value="Excluir" class="btn btn-danger"</a>
                    
                <%
                    }
                %>
                
                
                
                
          
                    
                </div>
            </div>
       
    </body>
</html>
