package vn.nlu.fit.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Data
@Table(name = "bill")
public class BillEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID_BILL;
    @CreatedDate
    private Date DATE;
    private String PHONE;
    private String ADDRESS;
    private int TOTAL;
    private String STATUS;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "USER_NAME")
    private UserEntity user;

    @JsonIgnore
    @ManyToMany(fetch =FetchType.LAZY)
    @JoinTable(
            name = "detail_order",
            joinColumns = @JoinColumn(name = "ID_BILL"),
            inverseJoinColumns = @JoinColumn(name = "ID_PRODUCT"))
    private List<ProductEntity> listProduct;

}
