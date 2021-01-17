package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@Table(name = "items")
public class ItemsEntity {
    @Id
    private String ID_ITEMS;

    private  String ITEMS_NAME;

    private int ACTIVE;

    @JsonIgnore
    @OneToMany(cascade = CascadeType.REMOVE,fetch = FetchType.LAZY,mappedBy = "item")
    private List<ProductEntity> listProduct;


}
