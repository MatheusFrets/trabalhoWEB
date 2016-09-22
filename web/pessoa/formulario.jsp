

<%@page import="br.edu.ifsul.dao.PessoaDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="pessoaDao" scope="session"
             type="PessoaDAO"/>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Pessoas</title>
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
        <h1>Edição de Pessoas</h1>
        <h2><%=pessoaDao.getMensagem()%></h2>
        <form name="form" id="form" action="ServletPessoa" method="POST">
            Código: <input type="text" name="id"
                           value="<%= pessoaDao.getObjetoSelecionado().getId() == null
                                   ? "" : pessoaDao.getObjetoSelecionado().getId() %>" size="6"
                                   readonly />
            <br/>Nome: <input type="text" name="nome"
                           value="<%= pessoaDao.getObjetoSelecionado().getNome() == null
                                   ? "" : pessoaDao.getObjetoSelecionado().getNome() %>" size="40"/> 
            
            <br/>Cpf: <input type="text" name="cpf"
                              value="<%= pessoaDao.getObjetoSelecionado().getCpf()== null
                                   ? "" : pessoaDao.getObjetoSelecionado().getCpf()%>" size="11"/> 
            <br/>Telefone: <input type="text" name="telefone"
                           value="<%= pessoaDao.getObjetoSelecionado().getTelefone()== null
                                   ? "" : pessoaDao.getObjetoSelecionado().getTelefone()%>" size="20"/> 
            <br/>Email: <input type="text" name="email"
                           value="<%= pessoaDao.getObjetoSelecionado().getEmail()== null
                                   ? "" : pessoaDao.getObjetoSelecionado().getEmail()%>" size="40"/> 
            <br/>
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/>
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" name="acao" id="acao" value=""/>
        </form>
    </body>
</html>
