<%-- 
    Document   : formulario.jsp
    Created on : 08/09/2016, 10:48:27
    Author     : jorge
--%>

<%@page import="br.edu.ifsul.dao.GrupoDAO"%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="grupoDao" scope="session"
             type="GrupoDAO"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Grupo</title>
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
        <h1>Edição de Grupos</h1>
        <h2><%=grupoDao.getMensagem()%></h2>
        <form name="form" id="form" action="ServletGrupo" method="POST">
            Código: <input type="text" name="id"
                           value="<%= grupoDao.getObjetoSelecionado().getId() == null
                                   ? "" : grupoDao.getObjetoSelecionado().getId() %>" size="6"
                                   readonly />
            <br/>Nome: <input type="text" name="nome"
                           value="<%= grupoDao.getObjetoSelecionado().getNome() == null
                                   ? "" : grupoDao.getObjetoSelecionado().getNome() %>" size="40"/> 
           
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/>
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" name="acao" id="acao" value=""/>
        </form>
    </body>
</html>
