<%@page import="persistencia.ClienteBD"%>
<%
    String cpf = request.getParameter("cpf");
    String senha = request.getParameter("senha");
    if (ClienteBD.validar(cpf, senha)){
        response.sendRedirect("../cliente.html");
    }else{
        response.sendRedirect("validacao.jsp");
    }
%>
