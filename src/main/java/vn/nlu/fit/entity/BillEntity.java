package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@Table(name = "bill")
public class BillEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String phone;
    private String note;
    private  double totalPrice;
    private String date;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(nullable = false, name = "USER_NAME")
    private UserEntity user;

    @JsonIgnore
    @ManyToOne
    private AddressEntity address;
}
