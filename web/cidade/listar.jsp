<%-- 
    Document   : listar
    Created on : 08/09/2016, 10:35:16
    Author     : jorge
--%>

<%@page import="br.edu.ifsul.modelo.Cidade"%>
<%@page import="br.edu.ifsul.dao.CidadeDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="cidadeDao" scope="session"
             type="CidadeDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de cidades</title>
    </head>
    <body>
        <a href="../index.html">Início</a>
        <h2>Cidades</h2>
        <h2><%=cidadeDao.getMensagem()%></h2>
        <a href="ServletCidade?acao=incluir">Incluir</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Estado</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    for(Cidade c : cidadeDao.getLista()){  // inicio do laço de repetição                  
                %>
                <tr>
                    <td><%=c.getId()%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getEstado().getNome()%></td>
                    <td><a href="ServletCidade?acao=alterar&id=<%=c.getId()%>">Alterar</a></td>
                    <td><a href="ServletCidade?acao=excluir&id=<%=c.getId()%>">Excluir</a></td>
                </tr>
                <%
                    } // fim do laço de repetição
                %>
            </tbody>
        </table>
    </body>
</html>
