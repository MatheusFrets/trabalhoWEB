<%-- 
    Document   : formulario.jsp
    Created on : 08/09/2016, 10:48:27
    Author     : jorge
--%>

<%@page import="br.edu.ifsul.modelo.Estado"%>
<%@page import="br.edu.ifsul.dao.EstadoDAO"%>
<%@page import="br.edu.ifsul.dao.CidadeDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="cidadeDao" scope="session"
             type="CidadeDAO"/>
<jsp:useBean id="estadoDao" scope="session" type="EstadoDAO" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Cidades</title>
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
        <h1>Edição de Cidades</h1>
        <h2><%=cidadeDao.getMensagem()%></h2>
        <form name="form" id="form" action="ServletCidade" method="POST">
            Código: <input type="text" name="id"
                           value="<%= cidadeDao.getObjetoSelecionado().getId() == null
                                   ? "" : cidadeDao.getObjetoSelecionado().getId() %>" size="6"
                                   readonly />
            <br/>Nome: <input type="text" name="nome"
                           value="<%= cidadeDao.getObjetoSelecionado().getNome() == null
                                   ? "" : cidadeDao.getObjetoSelecionado().getNome() %>" size="40"/> 
            <select name="idEstado" id="idEstado">         
                <%
                    for(Estado e : estadoDao.getLista()){
                        String selected = "";
                        if(cidadeDao.getObjetoSelecionado().getEstado()!= null){
                        if(cidadeDao.getObjetoSelecionado().getEstado().getId().equals(e.getId())){
                            selected = "selected";
                        }
                        }
                    %>
                    <option value="<%=e.getId()%>"<%=selected%> ><%=e.getNome()%></option>
                <%
                    }
                %>
            <br/>
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/>
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" name="acao" id="acao" value=""/>
        </form>
    </body>
</html>
