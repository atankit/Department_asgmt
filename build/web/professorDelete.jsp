<%-- 
    Document   : professorDelete
    Created on : Aug 14, 2022, 4:49:58 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entities.Departments"%>
<%@page import="Dao.EmployeesDao"%>
<%@page import="Helper.ConnectionProvider"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <% 
        String pid = request.getParameter("pid");
        
      
        Connection conn = ConnectionProvider.getConnection();               
        
        PreparedStatement pstmt = conn.prepareStatement("delete from tblprofessor where pid=?");
        
        
        pstmt.setString(1, pid);
        pstmt.executeUpdate();
        
    %>
     
    <script>
        alert("Professor Deleted successfully...");
        window.location.href="index.jsp";
    </script>