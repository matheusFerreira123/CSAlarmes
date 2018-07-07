
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Sugestao"%>
<%@page import="persistencia.SugestaoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Sugestões</title>
    </head>
    <body>
        <h1 align="center">Lista de Sugestões!</h1>
        <br/>
        <br/>
        <div style="margin-left: 5%;" id="btn"><a href="../adm.html"><h5>Voltar</h5></a></div>
        <%
            ArrayList<Sugestao> lista = SugestaoBD.listarsugestao();
        %>
        <table style="margin-left: 40%; margin-top: 100px;">
            <thead>
                <tr>
                    <th><p>Nome</p></th>
                    <th><p>Email</p></th>
                    <th><p>Sugestão</p></th>
                    <th><p></p></th>
                </tr>
            </thead>
            <tbody>

                <%
                    for (int i = 0; i < lista.size(); i++) {
                        Sugestao cadaSugestao = lista.get(i);
                %>

           
            <tr>
                    <td><%=cadaSugestao.getNome()%></td>
                    <td><%=cadaSugestao.getEmail()%></td>
                    <td><%=cadaSugestao.getSugest()%></td>
                    <td>
                        <a href="excluirsugestao.jsp?id=<%=cadaSugestao.getCodigo()%>"><input style="margin-left: 70%;" type="button" value="Excluir" class="btn btn-danger"</a>
                    </td>
                </tr>
            
            <%
                }
            %>
        </tbody>
    </table>

</body>
</html>
