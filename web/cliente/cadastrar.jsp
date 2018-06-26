<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
    </head>
    <body>
        <h1>Cadastro de Clientes</h1>
        <a href="listar.jsp"> Listar Clientes</a>
        <%
            String status = request.getParameter("status");
            if(status != null){
                
                if(status.equals("OK")){
                out.print("Salvo com sucesso");
                }
                out.print(status);
            }
            
        %>
        <form name="formCadastro" method="post" action="inserir.jsp">
            
            <label>Nome</label>
            <input type="text" name="nome"/>
            <br/>
            <br/>
            <label>RG</label>
            <input type="text" name="rg"/>
            <br/>
            <br/>
            <label>Cpf</label>
            <input type="text" name="cpf"/>
            <br/>
            <br/>
            <label>Telefone</label>
            <input type="tel" name="telefone"/>
            <br/>
            <br/>
            <label>Endereço</label>
            <input type="text" name="endereco"/>
            <br/>
            <br/>
            <label>Email</label>
            <input type="email" name="email"/>
            <br/>
            <br/>
            
            <input type="submit" value="Salvar"/>
            
        </form>
    </body>
</html>

