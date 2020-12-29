package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@Table(name = "supplier")
public class SupplierEntity {
    @Id
    private String ID_SUPPLIER;
    private String NAME_SUPPLIER;
    private int ACTIVE;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY,mappedBy = "supp")
    List<ProductEntity> listProduct;

}
