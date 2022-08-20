
<%@page import="java.util.ArrayList"%>
<%@page import="Entities.Departments"%>
<%@page import="Dao.EmployeesDao"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <%@include file="navbar.jsp" %>
        
        <main class="d-flex align-items-center">

            <div class="container">

                <div class="col-md-8 offset-md-2">
                    <div class="card-header text-center ">
                        <span class="fa fa-list-alt fa-2x "></span>
                        <h2>Employee's & Professor's Details</h2>   
                        <form method="POST" action="#">
                            <!--IndexServlet-->
                            <div class="form-group">                  
                                <select class="form-control" name="emp_did">
                                    <option selected disabled>---Select Department---</option>

                                    <%
                                        EmployeesDao employeesDao = new EmployeesDao(ConnectionProvider.getConnection());
                                        ArrayList<Departments> list = employeesDao.getAllDepartments();
                                        for (Departments d : list) {
                                    %>
                                    <option value="<%= d.getDid()%>"><%= d.getDid()%></option>

                                    <%
                                        }
                                    %>
                                </select>
                                <br>
                                <button name="submit" type="submit" value="Retrive" class="btn btn-outline-dark">Submit</button>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </main>
      
  <!--------------------------------------------Show table------------>
  
  <br><br>
  
  
  <%
       if(request.getParameter("submit") != null){        
       String depart = request.getParameter("emp_did");
       
    %>   
       <h1 class='text-center'> <%= depart %> Department All Employees </h1>
       
        <%
            try{
                
                response.setContentType("text/html");
                String empDepart = request.getParameter("emp_did");
                
                Connection conn = ConnectionProvider.getConnection();
                
                PreparedStatement pst = conn.prepareStatement("select eid, ename, edob, ecity, esalary, did from tblemployee where did=?");
                pst.setString(1, empDepart);
                ResultSet rs = pst.executeQuery();
            
            %>
            <table class="table">
                <thead class="table-primary">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">DOB</th>
                        <th scope="col">City</th>
                        <th scope="col">Salary</th>
                        <th scope="col">Department</th>
                        <th scope="col">Update</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
        
            <%  while (rs.next()) {   %>
            
            <tbody>
                <tr>
                     <th scope="row"><%= rs.getInt("eid")  %></th>
                    <td><%= rs.getString("ename")  %></td>
                    <td><%= rs.getString("edob")  %></td>
                    <td><%= rs.getString("ecity")  %></td>
                    <td><%= rs.getInt("esalary")   %></td>
                    <td><%= rs.getString("did")  %></td>
                    
                    <td><a href="employeeUpdate.jsp?eid= <%= rs.getInt("eid") %>" class="btn btn-outline-primary fa fa-pencil-square-o" role="button" >&nbsp; Edit </a></td>
                    <td><a href="employeeDelete.jsp?eid= <%= rs.getInt("eid") %>" class="btn btn-outline-danger fa fa-trash" role="button">&nbsp;Delete</a></td> 
                </tr>
             
            
            <% } %>
            
            </tbody>
            </table>
            
            <% 
                 } catch (Exception e) {
                e.printStackTrace();
            }
         }
        %>
        
        <!----------------------------------------professor table------------------------------------------------>
        
        <br>
        
  <%
       if(request.getParameter("submit") != null){        
       String depart = request.getParameter("emp_did");
       
    %>   
       <h1 class='text-center'> <%= depart %> Department All Professors  </h1>
       
        <%
            try{
                
                response.setContentType("text/html");
                String proDepart = request.getParameter("emp_did");
                
                Connection conn = ConnectionProvider.getConnection();
                
                PreparedStatement pst = conn.prepareStatement("select pid, pname, pdob, pcity, psalary, did from tblprofessor where did=?");
                pst.setString(1, proDepart);
                ResultSet rs = pst.executeQuery();
            
            %>
                <table class="table">
                <thead class="table-primary">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">DOB</th>
                        <th scope="col">City</th>
                        <th scope="col">Salary</th>
                        <th scope="col">Department</th>
                        <th scope="col">Update</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
        
            <%  while (rs.next()) {   %>
            
            <tbody>
                <tr>
                     <th scope="row"><%= rs.getInt("pid")  %></th>
                     <td><%= rs.getString("pname")  %></td>
                     <td><%= rs.getString("pdob")  %></td>
                     <td><%= rs.getString("pcity")  %></td>
                     <td><%= rs.getInt("psalary")   %></td>
                     <td><%= rs.getString("did")  %></td>
                    
                     <td><a href="professorUpdate.jsp?pid= <%= rs.getInt("pid") %>" class="btn btn-outline-primary fa fa-pencil-square-o" role="button">&nbsp; Edit</a></td>
                     <td><a href="professorDelete.jsp?pid= <%= rs.getInt("pid") %>" class="btn btn-outline-danger fa fa-trash" role="button">&nbsp; Delete</a></td> 
                    
                </tr>
             
            
            <% } %>
            
            </tbody>
            </table>
            
            <% 
                 } catch (Exception e) {
                e.printStackTrace();
            }
         }
        %>
        
            
     <!----------------------------------------------END table------------------------------------------------>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
