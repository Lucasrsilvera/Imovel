<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
        
        String nome = request.getParameter("txtNome"); 
        String email = request.getParameter("txtEmail"); 
        String telefone = request.getParameter("txtTelefone"); 
        
        
        ClienteDAO dao = new ClienteDAO();
        
        Cliente cli = new Cliente();
        
        
        cli.setNome(nome); 
        cli.setEmail(email); 
        cli.setTelefone(telefone);
       
        
        dao.incluir(cli);
        
    
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>CLIENTE CADASTRADO</h4>
         
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

