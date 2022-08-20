/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Entities.Departments;
import java.sql.*;
import java.util.ArrayList;

public class DepartmentsDao {
    private Connection conn;

    public DepartmentsDao(Connection conn) {
        this.conn = conn;
    }
    
    public boolean saveAllDepartments(Departments departments){
        boolean f =false;
        try {
            
            String q = "insert into tbldepart(did, dabout) values (?,?)";
            PreparedStatement pstmt = this.conn.prepareStatement(q);
            
            pstmt.setString(1, departments.getDid());
            pstmt.setString(2, departments.getDabout());
            
            pstmt.executeUpdate();
            
            f=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
//        try {
//            
//            String q = "insert into tbldepart(did, dabout) values (?,?,?)";
//            PreparedStatement pstmt = this.conn.prepareStatement(q);
//            
//            pstmt.setString(1, departments.getDid());
//            pstmt.setString(2, departments.getDabout());
//            
//            pstmt.executeUpdate();
//            
//            f=true;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return f;
//    }
    
    public void showAllData(){
        
        try {
            
            String query = "select * from tblemployee";
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
       
   
}
