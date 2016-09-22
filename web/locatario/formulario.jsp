<%-- 
    Document   : formulario.jsp
    Created on : 08/09/2016, 10:48:27
    Author     : jorge
--%>



<%@page import="br.edu.ifsul.dao.LocatarioDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="locatarioDao" scope="session"
             type="LocatarioDAO"/>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Locatarios</title>
        <script>
            function doSalvar() {
                document.getElementById("acao").value = 'salvar';
                document.getElementById("form").submit();
            }
            function doCancelar() {
                document.getElementById("acao").value = 'cancelar';
                document.getElementById("form").submit();
            }
        </script>                        
    </head>
    <body>
        <h1>Edição de Locatarios</h1>
        <h2><%=locatarioDao.getMensagem()%></h2>
        <form name="form" id="form" action="ServletLocatario" method="POST">
            Código: <input type="text" name="id"
                           value="<%= locatarioDao.getObjetoSelecionado().getId() == null
                                   ? "" : locatarioDao.getObjetoSelecionado().getId()%>" size="6"
                           readonly />
            <br/>Nome: <input type="text" name="nome"
                              value="<%= locatarioDao.getObjetoSelecionado().getNome() == null
                                   ? "" : locatarioDao.getObjetoSelecionado().getNome()%>" size="40"/> 
            <br/>Cpf: <input type="text" name="cpf"
                             value="<%= locatarioDao.getObjetoSelecionado().getCpf() == null
                                   ? "" : locatarioDao.getObjetoSelecionado().getCpf()%>" size="11"/>
            <br/>Email: <input type="text" name="email"
                               value="<%= locatarioDao.getObjetoSelecionado().getEmail() == null
                                   ? "" : locatarioDao.getObjetoSelecionado().getEmail()%>" size="40"/>
            <br/>Telefone: <input type="text" name="telefone"
                                  value="<%= locatarioDao.getObjetoSelecionado().getTelefone() == null
                                   ? "" : locatarioDao.getObjetoSelecionado().getTelefone()%>" size="40"/>


            <br/>Renda: <input type="text" name="renda"
                               value="<%= locatarioDao.getObjetoSelecionado().getRenda() == null
                                   ? "" : locatarioDao.getObjetoSelecionado().getRenda()%>" size="15"/>
            <br/>Local de Trabalho: <input type="text" name="localTrabalho"
                                           value="<%= locatarioDao.getObjetoSelecionado().getLocalTrabalho() == null
                                   ? "" : locatarioDao.getObjetoSelecionado().getLocalTrabalho()%>" size="40"/>
            <br/>Telefone de Trabalho: <input type="text" name="telefoneTrabalho"
                                              value="<%= locatarioDao.getObjetoSelecionado().getTelefoneTrabalho() == null
                                   ? "" : locatarioDao.getObjetoSelecionado().getTelefoneTrabalho()%>" size="40"/>
            <br/>
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/>
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" name="acao" id="acao" value=""/>
        </form>
    </body>
</html>
