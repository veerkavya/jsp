<%-- 
    Document   : purchase
    Created on : 30-May-2023, 10:49:28 pm
    Author     : Admin
--%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.entities.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/b374e9cd9e.js" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<link href="css/places1.css" rel="stylesheet" type="text/css"/>
<link href="css/newcss3.css" rel="stylesheet" type="text/css"/>
<link href="css/newcss.css" rel="stylesheet" type="text/css"/>

<%@page import="com.tech.blog.entities.packagese"%>
<%@page import="com.tech.blog.entities.subpack1"%>
<%@page import="com.tech.blog.dao.packdao"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% packdao p=new packdao(ConnectionProvider.getConnection());
       String pa=(String)session.getAttribute("id");
               Users u=(Users)session.getAttribute("user")
  ;%>
         <button type="button" id="mybutton" hidden class="more" data-toggle="modal" data-target="#exampleModalCenter"><div class="img"><img src="img/Family.jpg" alt="img" draggable="false"></div></button>
       <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        
      <div class="hh" >
             
          <div class='aa'>
                    <img class="icon" src="img/Family.jpg" alt=""/>
                    
                   
          </div>
       
         <div id="mbody1">

              <div class='l'>
            <form  action="sub" method='get'>
               
              <div class="ff">
          <label for="name">email</label>
          <input name="name" type="email" value=<%= u.getemail()%> required  placeholder="Enter email">
              </div>
         
          <div class="ff">
          <label for="user_pack">Enter package name</label>
          <input  name="user_pack" value=<%=pa%> required placeholder="package">
          </div>
                <div class="spin255">
                 <button type="submit" class="submitb">Submit</button>
                 <div class="spp255">
                
                 </div>
                
                </div>
                  
          </form>
    
          
    </div>
       
      </div>
      </div>
      
     
    </div>
  </div>
</div>
        
         <script>
  document.addEventListener("DOMContentLoaded", function(event) { 
    document.getElementById("mybutton").click();
 });
</script>


    </body>
</html>
