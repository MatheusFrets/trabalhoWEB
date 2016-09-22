

<%@page import="br.edu.ifsul.modelo.Recurso"%>
<%@page import="br.edu.ifsul.dao.RecursoDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="recursoDao" scope="session"
             type="RecursoDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de recursos</title>
    </head>
    <body>
        <a href="../index.html">Início</a>
        <h2>Recursos</h2>
        <h2><%=recursoDao.getMensagem()%></h2>
        <a href="ServletRecurso?acao=incluir">Incluir</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Descricao</th>


                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Recurso c : recursoDao.getLista()) {  // inicio do laço de repetição                  
%>
                <tr>
                    <td><%=c.getId()%></td>
                    <td><%=c.getDescricao()%></td>

                    <td><a href="ServletRecurso?acao=alterar&id=<%=c.getId()%>">Alterar</a></td>
                    <td><a href="ServletRecurso?acao=excluir&id=<%=c.getId()%>">Excluir</a></td>
                </tr>
                <%
                    } // fim do laço de repetição
%>
            </tbody>
        </table>
    </body>
</html>
