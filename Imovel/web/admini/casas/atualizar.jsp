<%@page import="modelo.Imovel"%>
<%@page import="dao.ImovelDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String id = request.getParameter("id_imovel");
    ImovelDAO dao = new ImovelDAO();
    Imovel imo = dao.buscarPorChavePrimaria(Long.parseLong(id));
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Jogador - Atualizar</h4>
            <form action="atualizar-ok.jsp" method="post">
                
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required value="<%=imo.getIdImovel()%>"   name="id_imovel" />
                        <label class="mdl-textfield__label" for="id_imovel">Categoria</label>
                    </div>
                </div> 
                 
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required value="<%=imo.getCategoria()%>"   name="txtCategoria" />
                        <label class="mdl-textfield__label" for="txtCategoria">Categoria</label>
                    </div>
                </div> 
                 
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required value="<%=imo.getPreco()%>"   name="txtPreco" />
                        <label class="mdl-textfield__label" for="txtPreco">Preco</label>
                    </div>
                </div>
                 
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required value="<%=imo.getBairro()%>"   name="txtBairro" />
                        <label class="mdl-textfield__label" for="txtBairro">Bairro</label>
                    </div>
                </div>
                 
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required value="<%=imo.getEndereco()%>"  name="txtEndereco" />
                        <label class="mdl-textfield__label" for="txtEndereco">Endereco</label>
                    </div>
                </div>
                 
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required value="<%=imo.getFoto()%>"   name="txtFoto" />
                        <label class="mdl-textfield__label" for="txtFoto">Foto</label>
                    </div> 
                    
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required value="<%=imo.getDescricao()%>"   name="txtDescricao" />
                        <label class="mdl-textfield__label" for="txtDescricao">Descricao</label>
                    </div>
                <div class="mdl-cell--12-col">

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
