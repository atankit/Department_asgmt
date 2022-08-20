
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entities.Departments"%>
<%@page import="Dao.EmployeesDao"%>
<%@page import="Helper.ConnectionProvider"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

  <% 
        String eid = request.getParameter("eid");
        
      
        Connection conn = ConnectionProvider.getConnection();               
        
        PreparedStatement pstmt = conn.prepareStatement("delete from tblemployee where eid=?");
        
        
        pstmt.setString(1, eid);
        pstmt.executeUpdate();
        
    %>
     
    <script>
        alert("Employee Deleted successfully...");
        window.location.href="index.jsp";
    </script>