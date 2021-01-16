package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "cart")
public class CartEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private int amount;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(nullable = false, name = "USER_NAME")
    private UserEntity user;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(nullable = false, name = "ID_PRODUCT")
    private ProductEntity product;

    public CartEntity(int amount, UserEntity user, ProductEntity product) {
        this.amount = amount;
        this.user = user;
        this.product = product;
    }
    public CartEntity(){

    }
}
