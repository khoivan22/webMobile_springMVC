package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@Table(name = "product")
public class ProductEntity {

    @Id
    private String ID_PRODUCT;
    private String PRODUCT_NAME;
    private double PRICE;
    private String IMG;

    private int TOTAL;
    private int ACTIVE;
    private double DISCOUNT;
    private int STAR_MEDIUM;

    @OneToOne(mappedBy = "product", cascade = CascadeType.ALL)
    private ConfigurationEntity Config;

    @ManyToOne
    @JoinColumn(name = "ID_ITEMS",nullable = false)
    private ItemsEntity item;

    @ManyToOne
    @JoinColumn(name = "ID_SUPPLIER",nullable = false)
    private SupplierEntity supp;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY,mappedBy = "product")
    private List<CommentEntity> coment;

    @ManyToMany(mappedBy = "listProduct",fetch = FetchType.LAZY)
    List<BillEntity> listBill;

    @Transient
    private String[] listImg;


    public String[] getListImg(){
        listImg=getIMG().split("~");
        return listImg;
    }
}
