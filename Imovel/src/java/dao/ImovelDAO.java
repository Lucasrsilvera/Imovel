package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Conexao;
import modelo.Imovel;


public class ImovelDAO {
    EntityManager em;
    
    public ImovelDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Imovel imo) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(imo);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }
        
    }

    public List<Imovel> listar() throws Exception {
        return em.createNamedQuery("Imovel.findAll").getResultList();
    }
    
    public void alterar(Imovel imo) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(imo);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    public void excluir(Imovel imo) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(imo);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }
    
    public Imovel buscarPorChavePrimaria(Long id){
        return em.find(Imovel.class, id);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }
}