/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Aluno
 */
@Entity
@Table(name = "imovel")
@NamedQueries({
    @NamedQuery(name = "Imovel.findAll", query = "SELECT i FROM Imovel i"),
    @NamedQuery(name = "Imovel.findByIdImovel", query = "SELECT i FROM Imovel i WHERE i.idImovel = :idImovel"),
    @NamedQuery(name = "Imovel.findByEndereco", query = "SELECT i FROM Imovel i WHERE i.endereco = :endereco"),
    @NamedQuery(name = "Imovel.findByPreco", query = "SELECT i FROM Imovel i WHERE i.preco = :preco"),
    @NamedQuery(name = "Imovel.findByDescricao", query = "SELECT i FROM Imovel i WHERE i.descricao = :descricao"),
    @NamedQuery(name = "Imovel.findByBairro", query = "SELECT i FROM Imovel i WHERE i.bairro = :bairro"),
    @NamedQuery(name = "Imovel.findByFoto", query = "SELECT i FROM Imovel i WHERE i.foto = :foto"),
    @NamedQuery(name = "Imovel.findByCategoria", query = "SELECT i FROM Imovel i WHERE i.categoria = :categoria")})
public class Imovel implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_imovel")
    private Long idImovel;
    @Basic(optional = false)
    @Column(name = "endereco")
    private String endereco;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @Column(name = "preco")
    private BigDecimal preco;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @Basic(optional = false)
    @Column(name = "bairro")
    private String bairro;
    @Column(name = "foto")
    private String foto;
    @Basic(optional = false)
    @Column(name = "categoria")
    private String categoria;
    @JoinColumn(name = "id_cliente", referencedColumnName = "id_cliente")
    @ManyToOne
    private Cliente idCliente;
    @JoinColumn(name = "id_vendedor", referencedColumnName = "id_vendedor")
    @ManyToOne
    private Vendedor idVendedor;

    public Imovel() {
    }

    public Imovel(Long idImovel) {
        this.idImovel = idImovel;
    }

    public Imovel(Long idImovel, String endereco, BigDecimal preco, String descricao, String bairro, String categoria) {
        this.idImovel = idImovel;
        this.endereco = endereco;
        this.preco = preco;
        this.descricao = descricao;
        this.bairro = bairro;
        this.categoria = categoria;
    }

    public Long getIdImovel() {
        return idImovel;
    }

    public void setIdImovel(Long idImovel) {
        this.idImovel = idImovel;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public BigDecimal getPreco() {
        return preco;
    }

    public void setPreco(BigDecimal preco) {
        this.preco = preco;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public Cliente getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(Cliente idCliente) {
        this.idCliente = idCliente;
    }

    public Vendedor getIdVendedor() {
        return idVendedor;
    }

    public void setIdVendedor(Vendedor idVendedor) {
        this.idVendedor = idVendedor;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idImovel != null ? idImovel.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Imovel)) {
            return false;
        }
        Imovel other = (Imovel) object;
        if ((this.idImovel == null && other.idImovel != null) || (this.idImovel != null && !this.idImovel.equals(other.idImovel))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Imovel[ idImovel=" + idImovel + " ]";
    }
    
}
