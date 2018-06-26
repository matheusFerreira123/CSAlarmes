
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Cliente"%>
<%@page import="persistencia.ClienteBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
    </head>
    <body>
        <h1>Lista de Clientes!</h1>
        <a href="cadastrar.jsp">Cadastar</a>
        <%
                ArrayList<Cliente> lista = ClienteBD.listar();
        %>
        <table>
            <thead>
                <tr>
                    <th>Cpf</th>
                    <th>Nome</th>
                    <th>links</th>
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
                    <td>
                        <a href="excluir.jsp?cpf=<%=cadaCliente.getCpf()%>">Excluir</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        
    </body>
</html>
