<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/b374e9cd9e.js" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<link href="css/places1.css" rel="stylesheet" type="text/css"/>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.tech.blog.entities.packagese"%>
<%@page import="com.tech.blog.entities.subpack1"%>
<%@page import="com.tech.blog.dao.packdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String place=request.getParameter("place");
            %>
             <div class="theme">  
          
            <div class="wrapper">
                    <i id="left" class="fa-solid fa-angle-left"></i>
                    
                      <ul class="carousel">
                  
                      <%
                       packdao p=new packdao(ConnectionProvider.getConnection());
                        ArrayList<subpack1>list1;
                       
                        list1=p.getspecificpackages();
                         for(subpack1 l:list1){
                      
                      
                      %>
                             <li class="card">
                          <a href="packages.jsp"><div class="img"><img src="img/Family.jpg" alt="img" draggable="false"></div></a>
                          <div class="info">
                              <div class="n"><h5 class="p"><%=l.getname()%> </h5> </div>
                               <div class="n"><h6 class="p"> </h6> </div>
                              
                          </div>
                        
                      </li><%}%>

                    </ul>
                    <i id="right" class="fa-solid fa-angle-right"></i>
            </div>
    </body>
</html>
