<%-- 
    Document   : login-register
    Created on : 20-May-2023, 9:41:59 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="js/newjavascript.js" defer></script>
 <link href="css/newcss.css" rel="stylesheet" type="text/css"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Page</title>
    </head>
    <body>
        
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        
      <div class="hh" >
          <div class='btt'>
              <div class="lb"><button class="login">login</button></div>
              <div class="sb"><button class="sign">signup</button></div>
          </div>
         <div id="mbody1">

              <div class='l'>
            <form  action="login" method='post'>
            
              <div class="ff">
          <label for="user_email">Email address</label>
          <input name="user_email" type="email" required  placeholder="Enter email">
              </div>
         
          <div class="ff">
          <label for="user_password">Password</label>
          <input  name="user_password" type="password" required placeholder="Password">
          </div>
                <div class="spin255">
                 <button type="submit" class="submitb">Submit</button>
                 <div class="spp255">
                
                 </div>
                
                </div>
                  
          </form>
    </div>
          <div class='r'>
            <form  action="registers" method='post'>
                
            <div class="ff">
              <label for="user_name">User Name</label>
              <input name="user_name" type="text" required placeholder="Enter name">
            
            </div>
              <div class="ff">
          <label for="user_email">Email address</label>
          <input name="user_email" type="email" required placeholder="Enter email">
              </div>
         
          <div class="ff">
          <label for="user_password">Password</label>
          <input  name="user_password" required type="password"  placeholder="Password">
          
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
        
 



    </body>
</html>
