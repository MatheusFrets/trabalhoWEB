<%-- 
    Document   : formulario.jsp
    Created on : 08/09/2016, 10:48:27
    Author     : jorge
--%>

<%@page import="br.edu.ifsul.dao.EstadoDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="estadoDao" scope="session"
             type="EstadoDAO"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edi��o de Estados</title>
        <script>
            function doSalvar(){
                document.getElementById("acao").value = 'salvar';
                document.getElementById("form").submit();
            }
            function doCancelar(){
                document.getElementById("acao").value = 'cancelar';
                document.getElementById("form").submit();
            }            
        </script>                        
    </head>
    <body>
        <h1>Edi��o de Estados</h1>
        <h2><%=estadoDao.getMensagem()%></h2>
        <form name="form" id="form" action="ServletEstado" method="POST">
            C�digo: <input type="text" name="id"
                           value="<%= estadoDao.getObjetoSelecionado().getId() == null
                                   ? "" : estadoDao.getObjetoSelecionado().getId() %>" size="6"
                                   readonly />
            <br/>Nome: <input type="text" name="nome"
                           value="<%= estadoDao.getObjetoSelecionado().getNome() == null
                                   ? "" : estadoDao.getObjetoSelecionado().getNome() %>" size="40"/> 
            <br/>UF: <input type="text" name="uf"
                           value="<%= estadoDao.getObjetoSelecionado().getUf() == null
                                   ? "" : estadoDao.getObjetoSelecionado().getUf() %>" size="2"/>             
            <br/>
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/>
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" name="acao" id="acao" value=""/>
        </form>
    </body>
</html>
