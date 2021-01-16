package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
@Table(name = "address")
public class AddressEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String city;
    private  String district;
    private String addressHome;

    @JsonIgnore
    @OneToMany(mappedBy = "address")
    private List<BillEntity> listBill;

    @Transient
    @Override
    public String toString() {
        return addressHome+", "+district+", "+city;

    }
}
