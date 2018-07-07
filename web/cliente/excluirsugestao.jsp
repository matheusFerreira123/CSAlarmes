<%@page import="persistencia.SugestaoBD"%>
<%
    String id = request.getParameter("id");
    SugestaoBD.excluirsugestao(Integer.parseInt(id));
    response.sendRedirect("listarsugestao.jsp");
%>