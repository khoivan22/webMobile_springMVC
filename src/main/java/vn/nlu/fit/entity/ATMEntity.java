package vn.nlu.fit.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "atm")
public class ATMEntity {

    @Id
    private int ACCOUNT_NUMBER;
    private String ACCOUNT_NAME;
    private double BALANCE;

    public int getACCOUNT_NUMBER() {
        return ACCOUNT_NUMBER;
    }

    public String getACCOUNT_NAME() {
        return ACCOUNT_NAME;
    }

    public void setACCOUNT_NAME(String ACCOUNT_NAME) {
        this.ACCOUNT_NAME = ACCOUNT_NAME;
    }

    public double getBALANCE() {
        return BALANCE;
    }

    public void setBALANCE(double BALANCE) {
        this.BALANCE = BALANCE;
    }
}
