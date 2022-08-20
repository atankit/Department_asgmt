/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Entities.Departments;
import Entities.Employees;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author user
 */
public class EmployeesDao {

    private Connection conn;

    public EmployeesDao(Connection conn) {
        this.conn = conn;
    }
    
    public boolean saveAllEmployees(Employees employees){
        boolean f = false;
        
        try {
            String q = "insert into tblemployee (ename, edob, ecity, esalary, did) values(?, ?, ?, ?, ?)";
            PreparedStatement pstmt = this.conn.prepareStatement(q);
            
            pstmt.setString(1, employees.getEname());
            pstmt.setString(2, employees.getEdob());
            pstmt.setString(3, employees.getEcity());
            pstmt.setInt(4, employees.getEsalary());
            pstmt.setString(5, employees.getDid());
            
            pstmt.executeUpdate();
            f = true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    public ArrayList<Departments> getAllDepartments(){
        ArrayList<Departments> list = new ArrayList<>();
        
        try{
            String q = "select * from tbldepart";
            PreparedStatement ps = this.conn.prepareStatement(q);
            ResultSet set = ps.executeQuery(q);
            
           while(set.next()){
               String did = set.getString("did");
               String dabout = set.getString("dabout");
               
               Departments d = new Departments(did, dabout);
               list.add(d);
           }
            
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean updateEmployees(Employees employees){
        boolean f =false;
        try {
            String query = "update tblemployee set ename=?, edob=?, ecity=?, esalary=?, did=? where eid=?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, employees.getEname());
            pstmt.setString(2, employees.getEdob());
            pstmt.setString(3, employees.getEcity());
            pstmt.setInt(4, employees.getEsalary());
            pstmt.setString(5, employees.getDid());
            pstmt.setInt(6, employees.getEid());
                       
            pstmt.executeUpdate();
            f =true;
                    
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
