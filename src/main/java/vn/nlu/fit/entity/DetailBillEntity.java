package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "detailBill")
public class DetailBillEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private int amount;

    @JsonIgnore
    @ManyToOne
    BillEntity bill;

    @JsonIgnore
    @ManyToOne
    ProductEntity product;
}
