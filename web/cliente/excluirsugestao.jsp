<%@page import="persistencia.SugestaoBD"%>
<%
    String nome = request.getParameter("nome");
    SugestaoBD.excluir(nome);
    response.sendRedirect("listar.jsp");
%>