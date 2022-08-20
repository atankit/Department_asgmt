/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

/**
 *
 * @author user
 */
public class Departments {
    private String did;
    private String dabout;

    public Departments(String did, String dabout) {
        this.did = did;
        this.dabout = dabout;
    }

    public Departments() {
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getDabout() {
        return dabout;
    }

    public void setDabout(String dabout) {
        this.dabout = dabout;
    }

}
