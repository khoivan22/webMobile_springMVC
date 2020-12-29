package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@Table(name = "user")
public class UserEntity {

    @Id
    private String USER_NAME;

    private String PASSWORD;
    private String FULLNAME;
    private String EMAIL;
    private String PHONE;
    private String PRIVILEGES;
    private String CODE;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private List<CommentEntity> comment;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private List<BillEntity> listBill;
}
