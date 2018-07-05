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
                $("#telefone").mask("(00)00000-0000");
                $("#cpf").mask("000.000.000-00");
                
                $("#formCadastro").validate({
                    rules: {
                        nome: {
                            required: true,
                            minlength: 10,
                            maxlength: 200,
                            string: true
                        },
                        telefone: {
                            minlength: 14,
                            maxlength: 14
                        },
                        email: {
                            required:true
                        },
                        sugest: {
                                required: true,
                                minlength: 10,
                                maxlength: 100
                            }
                    }
                
            
                });
            });
            </script>
        
        <title>Cadastro de Sugestões</title>

    </head>
    <body>
        <h1 align="center">Cadastro de Sugestões</h1>
        <a href="listarsugestao.jsp"> Listar Sugestões</a>
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
        <form name="formCadastro" id="formCadastro" class="form-group" method="post" action="inserirsugestao.jsp">

            <div style="margin-left: 25%;" class="col-6">
                <h5 align="center">Nome</h5>
                <input type="text" name="nome" id="nome" class="form-control"/>

            </div>

            <div style="margin-left: 25%;" class="col-6">
                <h5 align="center">Telefone</h5>
                <input type="tel" name="telefone" id="telefone" class="form-control"/>

            </div>
            <div style="margin-left: 25%;" class="col-6">
                <h5 align="center">Email</h5>
                <input type="email" name="email" id="email" class="form-control"/>

            </div>
            <div style="margin-left: 25%;" class="col-6">
                <h5 align="center">Sugestão</h5>
                <textarea style="margin-left: 18%;"  type="text" name="sugest" id="sugest"  rows="10" cols="50"></textarea><br />
                        
               <input style="margin-left: 45%;" id="btn" type="submit" name="Pronto!" value="Pronto!"  class="btn btn-outline-dark"/>
                    </div>

            </div>
            
        </form>
    </body>
</html>

