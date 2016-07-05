package modelo;

import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Cliente;
import modelo.Vendedor;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-06-27T15:39:12")
@StaticMetamodel(Imovel.class)
public class Imovel_ { 

    public static volatile SingularAttribute<Imovel, BigDecimal> preco;
    public static volatile SingularAttribute<Imovel, String> endereco;
    public static volatile SingularAttribute<Imovel, String> foto;
    public static volatile SingularAttribute<Imovel, Cliente> idCliente;
    public static volatile SingularAttribute<Imovel, String> bairro;
    public static volatile SingularAttribute<Imovel, String> categoria;
    public static volatile SingularAttribute<Imovel, Vendedor> idVendedor;
    public static volatile SingularAttribute<Imovel, Long> idImovel;
    public static volatile SingularAttribute<Imovel, String> descricao;

}