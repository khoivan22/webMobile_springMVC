package vn.nlu.fit.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

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
    private String BATTERY;
    private String OS;
    private String SIM;

    @JsonIgnore
    @OneToOne
    @MapsId
    @Fetch(FetchMode.JOIN)
    @JoinColumn(name = "ID_PRODUCT")
    ProductEntity product;


}
