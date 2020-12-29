package vn.nlu.fit.entity;


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

    @ManyToOne
    @JoinColumn(name = "USER_NAME")
    private UserEntity user;

    @ManyToMany(fetch =FetchType.LAZY)
    @JoinTable(
            name = "detail_order",
            joinColumns = @JoinColumn(name = "ID_BILL"),
            inverseJoinColumns = @JoinColumn(name = "ID_PRODUCT"))
    private List<ProductEntity> listProduct;

}
