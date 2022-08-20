/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Entities.Professors;
import java.sql.*;

/**
 *
 * @author user
 */
public class ProfessorsDao {
    
    private Connection conn;

    public ProfessorsDao(Connection conn) {
        this.conn = conn;
    }
    
    public boolean saveAllProfessors(Professors professors){
       boolean t = false;
        
        try {
            
            String query = "insert into tblprofessor (pname, pdob, pcity, psalary, did) values (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1, professors.getPname());
            ps.setString(2, professors.getPdob());
            ps.setString(3, professors.getPcity());
            ps.setInt(4, professors.getPsalary());
            ps.setString(5, professors.getDid());
            
            ps.executeUpdate();
           
            t = true;
        } catch (Exception e) {
            e.printStackTrace();
        }              
        return t;
        
       
    }
    
}
