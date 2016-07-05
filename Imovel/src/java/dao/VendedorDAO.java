
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Conexao;
import modelo.Vendedor;


public class VendedorDAO {
    
     EntityManager em;
    
    public VendedorDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Vendedor obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 
        
    }
  
    public Vendedor realizarLogin(String login, String senha){
        TypedQuery<Vendedor>query=em.createNamedQuery("Vendedor.realizarLogin", Vendedor.class);
        //seto os parâmetros
        query.setParameter("login", login);
        query.setParameter("senha", senha);
        Vendedor jogador;
        try{
            jogador = query.getSingleResult();
        }
        catch(Exception e){
            jogador = null;
        
        }
         return jogador;
    }

    public List<Vendedor> listar() throws Exception {
        return em.createNamedQuery("Vendedor.findAll").getResultList();
    }
    
    public void alterar(Vendedor obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 
    }
    
    public void excluir(Vendedor obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } 
    }
    
    public Vendedor buscarPorChavePrimaria(String login){
        return em.find (Vendedor.class, login);
    }

    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }
    

    
}