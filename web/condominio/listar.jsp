

<%@page import="br.edu.ifsul.modelo.Condominio"%>
<%@page import="br.edu.ifsul.dao.CondominioDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="condominioDao" scope="session"
             type="CondominioDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de condominios</title>
    </head>
    <body>
        <a href="../index.html">Início</a>
        <h2>Condominios</h2>
        <h2><%=condominioDao.getMensagem()%></h2>
        <a href="ServletCondominio?acao=incluir">Incluir</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Endereco</th>
                    <th>Numero</th>
                    <th>cep</th>
                    
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    for(Condominio c : condominioDao.getLista()){  // inicio do laço de repetição                  
                %>
                <tr>
                    <td><%=c.getId()%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getEndereco()%></td>
                    <td><%=c.getNumero()%></td>
                    <td><%=c.getCep()%></td>
                    <td><a href="ServletCondominio?acao=alterar&id=<%=c.getId()%>">Alterar</a></td>
                    <td><a href="ServletCondominio?acao=excluir&id=<%=c.getId()%>">Excluir</a></td>
                </tr>
                <%
                    } // fim do laço de repetição
                %>
            </tbody>
        </table>
    </body>
</html>
