<%@page import="persistencia.SugestaoBD"%>
<%@page import="dominio.Sugestao"%>
<%
 
String nome = request.getParameter("nome");
String telefone = request.getParameter("telefone");
String email = request.getParameter("email");
String sugest = request.getParameter("sugest");

Sugestao sugestao = new Sugestao();
sugestao.setNome(nome);
sugestao.setTelefone(telefone);
sugestao.setEmail(email);
sugestao.setSugest(sugest);

SugestaoBD.inserirsugestao(sugestao);  //a classe de persistencia UsuarioBD insere o Objeto usuario no banco de dados
response.sendRedirect("cadastrarsugestao.jsp?status=OK");

%>
