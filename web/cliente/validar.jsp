<%@page import="persistencia.ClienteBD"%>
<%
    String senha = request.getParameter("senha");
    ClienteBD.validar(senha);
    response.sendRedirect("listar.jsp");
%>
