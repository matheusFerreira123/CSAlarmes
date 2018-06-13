<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%
 
String nome = request.getParameter("nome");
String rg = request.getParameter("rg");
String cpf = request.getParameter("cpf");
String telefone = request.getParameter("telefone");
String endereco = request.getParameter("endereco");
String email = request.getParameter("email");

Cliente cliente = new Cliente();
cliente.setNome(nome);
cliente.setRg(rg);
cliente.setCpf(cpf);
cliente.setEndereco(endereco);
cliente.setTelefone(telefone);
cliente.setEmail(email);

ClienteBD.inserir(cliente);  //a classe de persistencia UsuarioBD insere o Objeto usuario no banco de dados
response.sendRedirect("cadastrar.jsp?status=OK");

%>
