<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/validation/additional-methods.min.js" type="text/javascript"></script>
        <script src="../js/validation/validacao.js" type="text/javascript"></script>
        <script src="../js/notify.js" type="text/javascript"></script>
        <script src="../js/notify.min.js" type="text/javascript"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                $("#telefone").mask("(00) 00000 0000")
                $("#cpf").mask("000 000 000 - 00")
                
                $("#formCadastro").validate({
                    rules: {
                        nome: {
                            required: true,
                            minlength: 10,
                            maxlength: 200,
                            string: true
                        },
                        cpf:{
                            required: true,
                            minlength: 10,
                            
                        },
                        endereco:{
                            required: true,
                        },
                        senha:{
                            required: true,
                            minlength: 8,
                            maxlength: 8,
                        },
                        csenha:{
                            required: true,
                            minlength: 8,
                            maxlength: 8,
                        }

                    },
                    submitHandler: function (form) {
                        $.notify("Sucesso", "success")
                    }
                })
            }
            </script>
        
        <title>Cadastro de Clientes</title>

    </head>
    <body>
        <h1 align="center">Cadastro de Clientes</h1>
        <a href="listar.jsp"> Listar Clientes</a>
        <br/>
        <a href="../adm.html">Voltar</a>
        <br>
        <br>
        <div>
        <%
            String status = request.getParameter("status");
            if (status != null) {

                if (status.equals("OK")) {
                    out.print("Salvo com sucesso");
                }
                out.print(status);
            }

        %>
        </div>
        <form name="formCadastro" id="formCadastro" class="form-group" method="post" action="inserir.jsp">

            <div style="margin-left: 25%;" class="col-6">
                <h5 align="center">Nome</h5>
                <input type="text" name="nome" id="nome" class="form-control"/>

            </div>
            
            <div style="margin-left: 25%;" class="col-6">
                <h5 align="center">Cpf</h5>
                <input type="text" name="cpf" id="cpf" class="form-control"/>

            </div>
            <div style="margin-left: 25%;" class="col-6">
                <h5 align="center">Telefone</h5>
                <input type="tel" name="telefone" id="telefone" class="form-control"/>

            </div>
            <div style="margin-left: 25%;" class="col-6">
                <h5 align="center">Endereço</h5>
                <input type="text" name="endereco" id="endereco" class="form-control"/>

            </div>
            <div style="margin-left: 25%;" class="col-6">
                <h5 align="center">senha</h5>
                <input type="password" name="senha" id="senha" class="form-control"/>

            </div>
            <div style="margin-left: 25%;" class="col-6">
                <h5 align="center">Confirmar Senha</h5>
                <input type="password" name="csenha" id="csenha" class="form-control"/>

            </div>
            <br/>
            <div style="margin-left: 47%;" class="col-6">
            <input type="submit" value="Salvar" class="btn btn-group"/>
            </div>
        </form>
    </body>
</html>

