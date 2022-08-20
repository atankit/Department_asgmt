<%-- 
    Document   : professorUpdate
    Created on : Aug 14, 2022, 4:39:24 PM
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entities.Departments"%>
<%@page import="Dao.EmployeesDao"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%   if (request.getParameter("submit") != null) {
        String pid = request.getParameter("pid");
        String pname = request.getParameter("up_name");
        String pdob = request.getParameter("up_dob");
        String pcity = request.getParameter("up_city");
        int psalary = Integer.parseInt(request.getParameter("up_salary"));
        String did = request.getParameter("up_did");

        Connection conn = ConnectionProvider.getConnection();

        PreparedStatement pstmt = conn.prepareStatement("update tblprofessor set pname=?, pdob=?, pcity=?, psalary=?, did=? where pid=?");

        pstmt.setString(1, pname);
        pstmt.setString(2, pdob);
        pstmt.setString(3, pcity);
        pstmt.setInt(4, psalary);
        pstmt.setString(5, did);
        pstmt.setString(6, pid);
        pstmt.executeUpdate();

%>

<script>
    alert("<%= pname  %> Updated successfully...");
        window.location.href="index.jsp";
        
</script>
<%    }
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <%@include file="navbar.jsp" %>

        <main class="d-flex align-items-center">

            <div class="container">

                <div class="col-md-6 offset-md-3">
                    <div class="card-header text-center ">
                        <span class="fa fa-list-alt fa-2x "></span>
                        <h2>Professor's Update</h2>                                                       
                    </div>
                    <div class="card-body">
                        <form action="#" method="POST" >
                            <!--UpdateServlet-->

                            <%
                                Connection conn = ConnectionProvider.getConnection();

                                String pid = request.getParameter("pid");

                                PreparedStatement pstmt = conn.prepareStatement("select * from tblprofessor where pid= ?");
                                pstmt.setString(1, pid);
                                ResultSet rs = pstmt.executeQuery();

                                while (rs.next()) {


                            %>
                            <input type="hidden" name="pid" value="<%= rs.getString("pid")%> "/>

                            <div class="form-group">
                                <label for="name">Professor Name</label>
                                <input name="up_name" type="text" class="form-control" value="<%= rs.getString("pname")%>" id="name" aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                            <div class="form-group">
                                <label for="dob">DOB</label>
                                <input name="up_dob" type="text" class="form-control" value="<%= rs.getString("pdob")%>" id="dob" aria-describedby="emailHelp" placeholder="Enter DOB DD-MM-YYYY">
                            </div>
                            <div class="form-group">
                                <label for="city">City</label>
                                <input name="up_city" type="text" class="form-control" value="<%= rs.getString("pcity")%>" id="city" aria-describedby="emailHelp" placeholder="Enter City">
                            </div>
                            <div class="form-group">
                                <label for="salary">Salary</label>
                                <input name="up_salary" type="text" class="form-control" value="<%= rs.getInt("psalary")%>" id="salary" aria-describedby="emailHelp" placeholder="Enter Salary">
                            </div>
                            <div class="form-group">
                                <label for="depart">Department</label>
                                <select class="form-control" value="<%= rs.getString("did")%>" name="up_did">
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
                            </div> 

                            <% }%>

                            <button name="submit" type="submit" value="submit" id="submit" class="btn btn-primary">Submit</button>

                        </form>
                    </div>
                </div>
            </div>

        </main>




        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
