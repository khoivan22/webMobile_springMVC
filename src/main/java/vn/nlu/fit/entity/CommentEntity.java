package vn.nlu.fit.entity;

import lombok.Data;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
@Table(name = "comment")
public class CommentEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID_COMMENT;
    private String CONTENT;
    @CreatedDate
    private Date DATE_COMMENT;
    private int ACTIVE;
    private int EVALUATE;

    @ManyToOne
    @JoinColumn(name = "ID_PRODUCT")
    private ProductEntity product;

    @ManyToOne
    @JoinColumn(name = "USER_NAME")
    private UserEntity user;
}
