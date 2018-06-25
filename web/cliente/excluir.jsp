<%@page import="persistencia.ClienteBD"%>
<%
    String cpf = request.getParameter("cpf");
    ClienteBD.excluir(cpf);
    response.sendRedirect("listar.jsp");
%>