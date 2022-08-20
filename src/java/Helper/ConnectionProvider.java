/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Helper;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author user
 */
public class ConnectionProvider {
    private static Connection conn;
    
   
        public static Connection getConnection(){
        
        try {
            
            if(conn == null){
                Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3305/epdepart","root","root");
                }
                        
            } catch (Exception e) {
            e.printStackTrace();
        }
        
      return conn;
    }
}
