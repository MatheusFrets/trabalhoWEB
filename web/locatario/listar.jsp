

<%@page import="br.edu.ifsul.modelo.Locatario"%>
<%@page import="br.edu.ifsul.dao.LocatarioDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="locatarioDao" scope="session"
             type="LocatarioDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de locatarios</title>
    </head>
    <body>
        <a href="../index.html">Início</a>
        <h2>Locatarios</h2>
        <h2><%=locatarioDao.getMensagem()%></h2>
        <a href="ServletLocatario?acao=incluir">Incluir</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>cpf</th>
                    <th>email</th>
                    <th>telefone</th> 
                    <th>Renda</th>
                    <th>Local de trabalho</th>
                    <th>telefone  de trabalho</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    for(Locatario l : locatarioDao.getLista()){  // inicio do laço de repetição                  
                %>
                <tr>
                    <td><%=l.getId()%></td>  
                    <td><%=l.getNome()%></td>
                    <td><%=l.getCpf()%></td>
                    <td><%=l.getEmail()%></td>
                    <td><%=l.getTelefone()%></td>
                    <td><%=l.getRenda()%></td>
                    <td><%=l.getLocalTrabalho()%></td>
                    <td><%=l.getTelefoneTrabalho()%></td>
                  
                    
                    
                    <td><a href="ServletLocatario?acao=alterar&id=<%=l.getId()%>">Alterar</a></td>
                    <td><a href="ServletLocatario?acao=excluir&id=<%=l.getId()%>">Excluir</a></td>
                </tr>
                <%
                    } // fim do laço de repetição
                %>
            </tbody>
        </table>
    </body>
</html>
