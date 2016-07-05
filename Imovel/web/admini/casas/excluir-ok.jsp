<%@page import="modelo.Imovel"%>
<%@page import="dao.ImovelDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String id= request.getParameter("id_imovel");
    ImovelDAO dao = new ImovelDAO();
    Imovel imo = dao.buscarPorChavePrimaria(Long.parseLong(id));
    dao.excluir(imo);
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Imovel - Excluido </h4>
            <p>Registro excluído com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

