<%@page import="modelo.Imovel"%>
<%@page import="java.util.List"%>
<%@page import="dao.ImovelDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    ImovelDAO dao = new ImovelDAO();
    List<Imovel> lista = dao.listar();
%>


<style>
    .direita
            {
                text-align: right;
                padding-right: 10%;
                
            }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h3>Imoveis á Venda</h3>
         
            

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>

                        <th>ID</th>
                        <th>Categoria</th> 
                        <th>Preco</th> 
                        <th>Bairro</th>
                        <th>Endereco</th>
                        <th>Foto</th>
                        <th>Descricao</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for(Imovel item:lista){                        
                    %>
                    <tr>
                        <td><%=item.getIdImovel()%></td>
                        <td><%=item.getCategoria()%></td> 
                        <td><%=item.getPreco()%></td> 
                        <td><%=item.getBairro()%></td> 
                        <td><%=item.getEndereco()%></td> 
                        <td><%=item.getFoto()%></td> 
                        <td><%=item.getDescricao()%></td>
                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="atualizar.jsp?id_imovel=<%=item.getIdImovel()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="excluir-ok.jsp?id_imovel=<%=item.getIdImovel()%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>
                            
                        </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>