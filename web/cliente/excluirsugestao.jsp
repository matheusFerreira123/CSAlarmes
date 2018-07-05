<%@page import="persistencia.SugestaoBD"%>
<%
    String nome = request.getParameter("nome");
    SugestaoBD.excluirsugestao(nome);
    response.sendRedirect("listarsugestao.jsp");
%>