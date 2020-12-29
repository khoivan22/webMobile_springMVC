package vn.nlu.fit.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "configuration")
public class ConfigurationEntity {
    @Id
    private String ID_PRODUCT;
    private String DISPLAY;
    private String CAMERA_FRONT;
    private String CAMERA_BACK;
    private String RAM;
    private String ROM;
    private String CPU;
    private String GPU;

    @OneToOne
    @MapsId
    @JoinColumn(name = "ID_PRODUCT")
    ProductEntity product;


}
