<%-- 
    Document   : index
    Created on : 20-May-2023, 11:08:58 am
    Author     : Admin
--%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/newcss3.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/b374e9cd9e.js" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.entities.Users"%>
<%@page import="com.tech.blog.entities.message"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% message msg=(message)session.getAttribute("msg");
        if(msg!=null){
         if(msg.getcss()=="success"){
        %>
        
        <div class="alert alert-success" class="alert1" role="alert">
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"><a href="clear">X</a></button>    Successfully logged In 
</div>
        <%}else if(msg.getcss()=="already"){%>
        <div class="alert alert-warning" role="alert">
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"><a href="clear">X</a></button>    Already Exists
</div>
        <%}else if (msg.getcss()=="failed"){%>
        <div class="alert alert-danger"" role="alert">
           Wrong Credentials<%} else if(msg.getcss()=="logout"){%>
                <div class="alert alert-success" role="alert">
 <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"><a href="clear">X</a></button>    Successfully logged out 
</div><%}else if(msg.getcss()=="registered"){%>
<div class="alert alert-success" role="alert">
 <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"><a href="clear">X</a></button>   Successfully Registered
</div><%}}else{%><%}%>


       
</div>
        <div class="outer-div">
                <div class="inner-div">
                      <%@include file="nav.jsp" %>
                    <div class="nav2">
                        
                        <div class="head">
                            <h4 class="h33">MOUNTAINS | PLAINS | BEACHES</h4>
                            <h2 class="h11">Spend your vacation with our activities</h2>
                        </div>
                        
                        <div class="places">
                            <div class="head1">
                                <h3 class="h22">MOST POPULAR</h3>
                        <%if(u!=null){%><a href="places1.jsp"> <i class="fa-solid fa-arrow-right fa-xl" style="color: #fafcff;"></i></a> 
                        <%}else{%><button type="button" class="more" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa-solid fa-arrow-right fa-xl" style="color: #fafcff;"></i><%}%>
        
                            </div>
                             <div class="img-container">
                                <div class="card1">
                                    <div class="img">
                                       <img src="img/scotland.jpg">
                                    </div>
                                        <div class="desc">
                                            <h5 class="h55">Trip to Scotland</h5>
                                            <i class="fa-solid fa-person" style="color: #47608a;"></i><h6 class='h'>31 people going</h6>
                                        </div>
                                </div>
                                <div class="card1">
                                    <div class="img">
                                      <img src="img/scotland.jpg">
                                    </div>
                                        <div class="desc">
                                            <h5 class="h55">Trip to Scotland</h5>
                                            <i class="fa-solid fa-person" style="color: #47608a;"></i><h6 class='h'>31 people going</h6>
                                        </div>
                                </div>
                                 <div class="card1">
                                    <div class="img">
                                      <img src="img/scotland.jpg">
                                    </div>
                                        <div class="desc">
                                            <h5 class="h55">Trip to Scotland</h5>
                                            <i class="fa-solid fa-person" style="color: #47608a;"></i><h6 class='h'>31 people going</h6>
                                        </div>
                                </div>
                               
                               </div>
                                 </div>
                        
                        
                        
                          
                               
                            
                            
                        </div>
                             <%@include file="footer.jsp" %>
                                 
                            </div>
                        
                        </div>
        
        <%@include file="login-register.jsp" %>
                
    </body>
</html>