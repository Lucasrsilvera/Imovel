<%@include file="../cabecalho.jsp"%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Imovel Cadastramento</h4>
            <form action="adicionar-ok.jsp" method="post">
                
                
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtCategoria" />
                        <label class="mdl-textfield__label" for="txtCategoria" >Categoria </label>
                    </div>
                </div> 
                 
                <div class="mdl-cell--12-col">  
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPreco" />
                        <label class="mdl-textfield__label" for="txtPreco">Preco</label>
                    </div>
                </div>
                 
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtBairro" />
                        <label class="mdl-textfield__label" for="txtBairro">Bairro</label>
                    </div>
                </div>
                 
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtEndereco" />
                        <label class="mdl-textfield__label" for="txtEndereco">Endereco</label>
                    </div>
                </div>
                 
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="file" required  name="txtFoto" />
                        <label class="mdl-textfield__label" for="txtFoto">Foto</label>
                    </div> 
                    
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtDescricao" />
                        <label class="mdl-textfield__label" for="txtDescricao">Descricao</label>
                    </div>
               
                
                <div class="mdl-cell--12-col">
                    
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">clear</i></button>
                    
                    
                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


