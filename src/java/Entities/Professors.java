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
public class Professors {
    
    private int pid;
    private String pname;
    private String pdob;
    private String pcity;
    private int psalary;
    private String did;

    public Professors() {
    }

    public Professors(int pid, String pname, String pdob, String pcity, int psalary, String did) {
        this.pid = pid;
        this.pname = pname;
        this.pdob = pdob;
        this.pcity = pcity;
        this.psalary = psalary;
        this.did = did;
    }

    public Professors(String pname, String pdob, String pcity, int psalary, String did) {
        this.pname = pname;
        this.pdob = pdob;
        this.pcity = pcity;
        this.psalary = psalary;
        this.did = did;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPdob() {
        return pdob;
    }

    public void setPdob(String pdob) {
        this.pdob = pdob;
    }

    public String getPcity() {
        return pcity;
    }

    public void setPcity(String pcity) {
        this.pcity = pcity;
    }

    public int getPsalary() {
        return psalary;
    }

    public void setPsalary(int psalary) {
        this.psalary = psalary;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }
    
    
}
