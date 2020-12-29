package vn.nlu.fit.entity;

import javax.persistence.*;

@Entity
@Table(name = "slide")
public class SlideShowEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID_SLIDE;
    private String IMG_SLIDE;
    private int ACTIVE;

    public int getID_SLIDE() {
        return ID_SLIDE;
    }

    public String getIMG_SLIDE() {
        return IMG_SLIDE;
    }

    public void setIMG_SLIDE(String IMG_SLIDE) {
        this.IMG_SLIDE = IMG_SLIDE;
    }

    public int getACTIVE() {
        return ACTIVE;
    }

    public void setACTIVE(int ACTIVE) {
        this.ACTIVE = ACTIVE;
    }
}
