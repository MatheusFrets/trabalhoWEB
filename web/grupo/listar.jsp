<%-- 
    Document   : listar
    Created on : 08/09/2016, 10:35:16
    Author     : jorge
--%>

<%@page import="br.edu.ifsul.dao.GrupoDAO"%>
<%@page import="br.edu.ifsul.modelo.Grupo"%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="grupoDao" scope="session"
             type="GrupoDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de estados</title>
    </head>
    <body>
        <a href="../index.html">Início</a>
        <h2>Gruposs</h2>
        <h2><%=grupoDao.getMensagem()%></h2>
        <a href="ServletGrupo?acao=incluir">Incluir</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    for(Grupo e : grupoDao.getLista()){  // inicio do laço de repetição                  
                %>
                <tr>
                    <td><%=e.getId()%></td>
                    <td><%=e.getNome()%></td>
                    
                    <td><a href="ServletGrupo?acao=alterar&id=<%=e.getId()%>">Alterar</a></td>
                    <td><a href="ServletGrupo?acao=excluir&id=<%=e.getId()%>">Excluir</a></td>
                </tr>
                <%
                    } // fim do laço de repetição
                %>
            </tbody>
        </table>
    </body>
</html>
