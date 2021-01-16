package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@Table(name = "user")
public class UserEntity {

    @Id
    @Column(length = 50)
    private String USER_NAME;

    @Column(length = 1000)
    private String PASSWORD;
    @Transient
    private String REPASS;
    private String FULLNAME;
    private String EMAIL;
    private String PHONE;
    private String CODE;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "idRole")
    RoleEntity role;

    @JsonIgnore
    @OneToMany(mappedBy = "user",fetch = FetchType.LAZY)
    List<BillEntity> listBillEntity;
}
