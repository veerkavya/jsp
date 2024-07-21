<%-- 
    Document   : nav
    Created on : 23-May-2023, 4:35:20 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.entities.Users"%>
<%@page import="com.tech.blog.entities.message"%>
<link href="css/newcss3.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                            <div class="nav">
                         <img class="img255" src="img/travelicon.png"  alt=""/>
                        <ul>
                            <li>Home</li>
                            <li>About Us</li>
                            <li>Premium</li>
                            <li>Blogs</li>
                          
                        <% Users u=(Users)session.getAttribute("user");
                        if(u!=null){%>
                          <li class="l1"><button class="button btn1"  >
                                  <a href="logout">LogOut</a></button>
                             </li><li><img class="avatar" src="img/avatar.jpg"></li>
        
                            <%}
                    else{%>  <li class="l1"><button type="button" class="btn" data-toggle="modal" data-target="#exampleModalCenter">
                      Login/Sign-Up
                    </button></li> <% } %>
                        
                            
                        </ul>   
                    </div>
    </body>
</html>
