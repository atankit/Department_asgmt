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
public class Employees {
    
    private int eid;
    private String ename;
    private String edob;
    private String ecity;
    private int esalary;
    private String did;

    public Employees(int eid, String ename, String edob, String ecity, int esalary, String did) {
        this.eid = eid;
        this.ename = ename;
        this.edob = edob;
        this.ecity = ecity;
        this.esalary = esalary;
        this.did = did;
    }

    public Employees(String ename, String edob, String ecity, int esalary, String did) {
        this.ename = ename;
        this.edob = edob;
        this.ecity = ecity;
        this.esalary = esalary;
        this.did = did;
    }

    public Employees() {
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getEdob() {
        return edob;
    }

    public void setEdob(String edob) {
        this.edob = edob;
    }

    public String getEcity() {
        return ecity;
    }

    public void setEcity(String ecity) {
        this.ecity = ecity;
    }

    public int getEsalary() {
        return esalary;
    }

    public void setEsalary(int esalary) {
        this.esalary = esalary;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }
    
    
    
}
