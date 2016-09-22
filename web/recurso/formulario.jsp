

<%@page import="br.edu.ifsul.dao.RecursoDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="recursoDao" scope="session"
             type="RecursoDAO"/>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Recursos</title>
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
        <h1>Edição de Recursos</h1>
        <h2><%=recursoDao.getMensagem()%></h2>
        <form name="form" id="form" action="ServletRecurso" method="POST">
            Código: <input type="text" name="id"
                           value="<%= recursoDao.getObjetoSelecionado().getId() == null
                                   ? "" : recursoDao.getObjetoSelecionado().getId() %>" size="6"
                                   readonly />
            <br/>Descricao: <input type="text" name="descricao"
                           value="<%= recursoDao.getObjetoSelecionado().getDescricao()== null
                                   ? "" : recursoDao.getObjetoSelecionado().getDescricao() %>" size="40"/> 
            
           
            <br/>
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/>
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" name="acao" id="acao" value=""/>
        </form>
    </body>
</html>
