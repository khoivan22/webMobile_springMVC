package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
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

    @JsonIgnore
    @Fetch(FetchMode.JOIN)
    @OneToOne(mappedBy = "product", cascade = CascadeType.ALL)
    private ConfigurationEntity Config;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "ID_ITEMS", nullable = false)
    private ItemsEntity item;


    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "ID_SUPPLIER", nullable = false)
    private SupplierEntity supp;

    @OneToMany(cascade =CascadeType.REMOVE, fetch = FetchType.LAZY,mappedBy = "product")
    @JsonIgnore
    private List<CartEntity> listCart;

    @Transient
    private String[] listImg;

    @Transient
    private List<MultipartFile> multipleFiles;

    public String[] getListImg() {
        listImg = getIMG().split("~");
        return listImg;
    }
 }