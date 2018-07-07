<%@page import="persistencia.AdminBD"%>
<%
    String cpf = request.getParameter("email");
    String senha = request.getParameter("senha");
    if (AdminBD.validar(cpf, senha)){
        response.sendRedirect("../cliente/cadastrar.jsp");
    }else{
        response.sendRedirect("login.jsp");
    }
%>
