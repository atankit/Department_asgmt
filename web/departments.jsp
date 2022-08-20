<%-- 
    Document   : departments
    Created on : Aug 5, 2022, 9:37:32 PM
    Author     : user
--%>

<%@page import="Entities.Employees"%>
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
                
                <div class="col-md-4 offset-md-4">
                    <div class="card-header text-center ">
                        <span class="fa fa-list-alt fa-2x "></span>
                        <h2>Department</h2>
                    </div>
                    <div class="card-body">
                        <form id="departForm" action="DepartmentsServlet" method="POST" >
                            <div class="form-group">
                                <label for="depart">Depart</label>
                                <input name="depart_name" type="text" class="form-control" id="depart" aria-describedby="emailHelp" placeholder="Enter Depart">
                            </div>
                            <div class="form-group">
                                <label for="about">Department About</label>
                                <input name="department_about" type="text" class="form-control" id="about" aria-describedby="emailHelp" placeholder="Enter About">
                            </div>
                            <br>
                                <div class="container"  id="loader" style="display: none;">
                                    <span class="fa fa-circle-o-notch fa fa-spin fa-1x" ></span>
                                        <h4>Please Wait..</h4>
                                        <br>                                    
                                </div>
                           
                            <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
            
        </main>
       
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
