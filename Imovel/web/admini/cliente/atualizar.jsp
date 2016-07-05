<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String id = request.getParameter("idCliente");
    ClienteDAO dao = new ClienteDAO();
    Cliente cli = dao.buscarPorChavePrimaria(Long.parseLong(id));
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>CLIENTE - Atualizar</h4>
            <form action="atualizar-ok.jsp" method="post">
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" readonly required value="<%=cli.getIdCliente()%>"  name="idCliente" />
                        <label class="mdl-textfield__label" for="idCliente"></label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required value="<%=cli.getNome()%>"  name="txtNome" />
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div> 
                 <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="email" required value="<%=cli.getEmail()%>" name="txtEmail" />
                        <label class="mdl-textfield__label" for="txtEmail">Email</label>
                    </div>
                </div> 
                 <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required value="<%=cli.getTelefone()%>"  name="txtTelefone" />
                        <label class="mdl-textfield__label" for="txtTelefone">Telefone</label>
                    </div>
                </div>
                    <button type="submit" value="adicionar" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">save</i></button>
                    <button type="reset" value="limpar" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">clear</i></button>


                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>