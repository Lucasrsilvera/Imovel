<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Imovel"%>
<%@page import="dao.ImovelDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
 
    String id = request.getParameter("id_imovel");
    String categoria = request.getParameter("txtCategoria"); 
    String preco = request.getParameter("txtPreco");
    String bairro = request.getParameter("txtBairro");
    String endereco = request.getParameter("txtEndereco");
    String foto = request.getParameter("txtFoto");
    String descricao = request.getParameter("txtDescricao");
    
    
    ImovelDAO dao = new ImovelDAO();
    Imovel imo = dao.buscarPorChavePrimaria(Long.parseLong(id));
    
    
    
    imo.setCategoria(categoria); 
    BigDecimal p = new BigDecimal(preco);
    imo.setPreco(p);
    imo.setBairro(bairro);
    imo.setEndereco(endereco);  
    imo.setFoto(foto);
    imo.setDescricao(descricao);
          
    
    dao.alterar(imo);
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualização</h4>
            <p>Imovel Atualizado</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

