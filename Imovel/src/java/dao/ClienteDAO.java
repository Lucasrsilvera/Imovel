package dao;

import modelo.Conexao;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Cliente;


public class ClienteDAO {
    EntityManager em;
    
    public ClienteDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Cliente obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 
        
    }

    public List<Cliente> listar() throws Exception {
        return em.createNamedQuery("Cliente.findAll").getResultList();
    }
    
    public void alterar(Cliente obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 
    }
    
    public void excluir(Cliente obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } 
    }
        public Cliente buscarPorChavePrimaria(Long id){
        return em.find (Cliente.class, id);
    }

    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }
}