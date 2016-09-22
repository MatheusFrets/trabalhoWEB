

<%@page import="br.edu.ifsul.modelo.Pessoa"%>
<%@page import="br.edu.ifsul.dao.PessoaDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="pessoaDao" scope="session"
             type="PessoaDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de pessoas</title>
    </head>
    <body>
        <a href="../index.html">Início</a>
        <h2>Pessoas</h2>
        <h2><%=pessoaDao.getMensagem()%></h2>
        <a href="ServletPessoa?acao=incluir">Incluir</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Cpf</th>
                    <th>Telefone</th>
                    <th>Email</th>
                    
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    for(Pessoa p : pessoaDao.getLista()){  // inicio do laço de repetição                  
                %>
                <tr>
                    <td><%=p.getId()%></td>
                    <td><%=p.getNome()%></td>
                    <td><%=p.getCpf()%></td>
                    <td><%=p.getTelefone()%></td>
                    <td><%=p.getEmail()%></td>
                    <td><a href="ServletPessoa?acao=alterar&id=<%=p.getId()%>">Alterar</a></td>
                    <td><a href="ServletPessoa?acao=excluir&id=<%=p.getId()%>">Excluir</a></td>
                </tr>
                <%
                    } // fim do laço de repetição
                %>
            </tbody>
        </table>
    </body>
</html>
