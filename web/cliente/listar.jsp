
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Cliente"%>
<%@page import="persistencia.ClienteBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Clientes</title>
    </head>
    <body>
        <h1 align="center">Lista de Clientes!</h1>
        <br/>
        <br/>
        <div style="margin-left: 5%;" id="btn"><a href="../adm.html"><h5>Voltar</h5></a></div>
        <%
                ArrayList<Cliente> lista = ClienteBD.listar();
        %>
        <table style="margin-left: 40%; margin-top: 100px;">
            <thead>
                <tr>
                    <th><p>Cpf</p></th>
                    <th><p>Nome</p></th>
                    <th><p>Telefone</p></th>
                    <th><p></p></th>
                </tr>
            </thead>
            <tbody>
                
                <%
                    for(int i=0; i< lista.size();i++){
                        Cliente cadaCliente = lista.get (i);
                %>
                
                <tr>
                    <td><%=cadaCliente.getCpf()%></td>
                    <td><%=cadaCliente.getNome()%></td>
                    <td><%=cadaCliente.getTelefone()%></td>
                    <td>
                        <a href="excluir.jsp?cpf=<%=cadaCliente.getCpf()%>"><input style="margin-left: 70%;" type="button" value="Excluir" class="btn btn-danger"</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        
    </body>
</html>
