<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%
 
String nome = request.getParameter("nome");

String cpf = request.getParameter("cpf");
String telefone = request.getParameter("telefone");
String endereco = request.getParameter("endereco");
String senha = request.getParameter("senha");

Cliente cliente = new Cliente();
cliente.setNome(nome);
cliente.setCpf(cpf);
cliente.setEndereco(endereco);
cliente.setTelefone(telefone);
cliente.setSenha(senha);

ClienteBD.inserir(cliente);  //a classe de persistencia UsuarioBD insere o Objeto usuario no banco de dados
response.sendRedirect("cadastrar.jsp?status=OK");

%>
