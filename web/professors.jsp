<%-- 
    Document   : professors
    Created on : Aug 6, 2022, 12:47:06 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Entities.Departments"%>
<%@page import="Helper.ConnectionProvider"%>
<%@page import="Dao.EmployeesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

                <div class="col-md-6 offset-md-3">
                    <div class="card-header text-center ">
                        <span class="fa fa-list-alt fa-2x "></span>
                        <h2>Professor's Details.</h2>                                                       
                    </div>
                    <div class="card-body">
                        <form id="professor-form" action="ProfessorsServlet" method="POST" >
                            <div class="form-group">
                                <label for="name">Professor Name</label>
                                <input name="pro_name" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                            <div class="form-group">
                                <label for="dob">DOB</label>
                                <input name="pro_dob" type="text" class="form-control" id="dob" aria-describedby="emailHelp" placeholder="Enter DOB DD-MM-YYYY">
                            </div>
                            <div class="form-group">
                                <label for="city">City</label>
                                <input name="pro_city" type="text" class="form-control" id="city" aria-describedby="emailHelp" placeholder="Enter City">
                            </div>
                            <div class="form-group">
                                <label for="salary">Salary</label>
                                <input name="pro_salary" type="text" class="form-control" id="salary" aria-describedby="emailHelp" placeholder="Enter Salary">
                            </div>
                            <div class="form-group">
                                 <label for="depart">Department</label>
                                 <select class="form-control" id="did" name="pro_did">
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
                                <div class="container"  id="loader" style="display: none;">
                                    <span class="fa fa-circle-o-notch fa fa-spin fa-1x" ></span>
                                    <h4>Please Wait..</h4>
                                    <br>                                    
                                </div>

                                <button id="smt-btn" type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>

        </main>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

         
    </body>
</html>
