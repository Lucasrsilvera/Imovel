package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Imovel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-06-27T15:39:12")
@StaticMetamodel(Vendedor.class)
public class Vendedor_ { 

    public static volatile ListAttribute<Vendedor, Imovel> imovelList;
    public static volatile SingularAttribute<Vendedor, Long> idVendedor;
    public static volatile SingularAttribute<Vendedor, String> nome;
    public static volatile SingularAttribute<Vendedor, String> email;

}