<%@page import="com.tech.blog.helper.ConnectionProvider"%>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.entities.packagese"%>
<%@page import="com.tech.blog.entities.subpack1"%>
<%@page import="com.tech.blog.dao.packdao"%>
<%@page import="java.util.ArrayList"%>
<html>
    <link href="css/nav12.css" rel="stylesheet" type="text/css"/>
   
   
    <head>
        <meta charset="utf-8">
    <title>Infinite Card Slider JavaScript | CodingNepal</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Fontawesome Link for Icons -->

    
    </head>
    <body>
        <%@include file="nav.jsp" %>
            <div class="head255">
        <h1>Customize & Book
Amazing Holiday Packages</h1>
    
        <h5>650+ Travel Agents serving 65+ Destinations worldwide</h5>
        </div>
        <div class="box255">
        </div>
            <div class="search">
                <form action="searchn" method="get">
                    <table >
                        <tr>
                                        <th>
                                            <select name="dest">
                                                <option selected value="all">Destination</option>
                                                 <%
                         packdao p=new packdao(ConnectionProvider.getConnection());
                        
                        ArrayList<String> topic=p.topic();
                        for(String t:topic){
                    %>
                  
                    <option value=<%= t%>><%= t%></option>
                                   <%}%>
                                            </select>
                                        </th>
                                            <th>
                                 <select name="day">
                                   <option selected value="1">1-5</option>
                                   <option value="5">5-10</option>
                                   <option value="10">10-15</option>
                                   <option value="15">15-20</option>
                                 </select>
                                            </th>
                                            <th>
                                 <select name="month">
                                   <option selected >MAY</option>
                                   <option value="OCT">OCT</option>
                                   <option value="JUL">JUL</option>
                                   <option value="MARCH">MARCH</option>
                                 </select>
                                            </th>
                        
                               <th class="e">
                       <button class="sub255" type="submit">Explore</button></th>
                   
        </tr>
                    </table>    
                </form>
            </div>
        <div class="theme-cont">    
            <% String place=(String)session.getAttribute("place");
            String subplace=(String)session.getAttribute("subplace");
            String theme=(String)session.getAttribute("theme");
           
            %>
          <h3>PACKAGES-</h3>   
       <div class="theme">  
          
            <div class="wrapper" id="wrapper18">
                    <i id="left" class="fa-solid fa-angle-left"></i>
                    
                      <ul class="carousel"id="carousel18">
                    <% 
                       if( place=="all"){
                        ArrayList<packagese> list1;
                        list1=p.getallpack(place);
                       
                        for(packagese l:list1){
                    %>
                  
                      <li class="card" id="card18">
                           <% String im="img/"+l.getplace()+".jpg";%>
                          <form action="searchplace" class="f" method="post"> <button type="submit themebtn " name="place" value=<%= l.getplace()%>><div class="img"><img src=<%=im%> alt="img" draggable="false"></div></button></form>
                          <div class="info">
                             
                              <div>Ratings: <%= l.getrating()%></i></div>
                              <div class="n"><h5 class="p"><%=l.getplace()%> </h5> <h7 class="s">Starting<br> From</h7></div>
                               <div class="n"><h6 class="p"><%=l.gett()%>+packages </h6> <h7 class="c2 s"><%=l.getmin()%>Rs</h7></div>
                              
                          </div>
                        
                      </li>
                      <%}}else if(theme=="no"){
                        
                        ArrayList<subpack1>list1;
                        if(subplace=="no"){
                       String month=(String)session.getAttribute("month");
                        String day=(String)session.getAttribute("day");
                        list1=p.getspecificpackages(place,day,month);
                         for(subpack1 l:list1){
%>
 <li class="card">
      <% String im1="img/"+l.getid()+".jpg";%>
     <form action="purc" class="f" method="get"> <button type=" submit" name="pack" value=<%= l.getid()%> class="more" data-toggle="modal" data-target="#exampleModalCenter"><div class="img"><img src=<%= im1%> alt="img" draggable="false"></div></button></form>
                          <div class="info">
                              
                              <div class="n"><h6 class="p">Offers <%=l.getoffer()%>%</h6><h6 class="s">Starting<br> From</h6></div>
                               <div class="n"><h5 class="p"><%=l.getname().substring(0,25)%>....  </h5><h6 class="hc"><%=l.getcost()%> </div>
                              
                          </div>
                        
                      </li><%}} else{
                        ArrayList<subpack1>list2;
                      list2=p.getsubpack(subplace);
                      for(subpack1 l:list2){
                     
%>
                    <li class="card">
                         <% String im1="img/"+l.getid()+".jpg";%>
                        <form action="purc" class="f" method="get">  <button type="button submit" name="pack" value=<%= l.getid()%> class="more" data-toggle="modal" data-target="#exampleModalCenter"><div class="img"><img src=
                                                                                                                                                                                                        <%=im1%> alt="img" draggable="false"></div></button></form>
                          <div class="info">
                              
                              <div class="n"><h6 class="p">Offers <%=l.getoffer()%> <%=l.getname().substring(0,20)%>...    </h6>  <h6 class="s">Starting<br>From</h6><h6 class="hc"><%= l.getcost()%> Rs</h6> </div>
                               <div class="n"></div>
                              
                          </div>
                        
                      </li>
                      
                      
                      
                      
                      
                      <%}}}else{
                        ArrayList<packagese> list2;
                        list2=p.getthemepack(theme);
                       
                        for(packagese l:list2){


%>
                    <li class="card" id="card18">
                          <% String im="img/"+l.getplace()+".jpg";%>
                          <form action="searchplace" class="f" method="post"> <button type="submit" class="more" name="place" value=<%= l.getid()%>><div class="img"><img src=<%= im%> alt="img" draggable="false"></div></button></form>
                          <div class="info">
                              <div class="n"><h5 class="p"><%=l.getplace()%> </h5> <h7 class="s">Starting<br> From</h7></div>
                               <div class="n"><h6 class="p"><%=l.gett()%>+packages </h6> <h7 class="c2 s">Rs <%=l.getmin()%></h7></div>
                              
                          </div>
                        
                      </li><%}}%>

                    </ul>
                    <i id="right" class="fa-solid fa-angle-right"></i>
            </div>
            
       </div>       
        </div>    
         
             <%@include file="slider.jsp" %>
            
            
            
            
            <script >
                
                
                
               const wrapper = document.querySelector("#wrapper18");
            console.log(wrapper);
const carousel = document.querySelector("#carousel18");
const firstCardWidth = carousel.querySelector("#card18").offsetWidth;
const arrowBtns = document.querySelectorAll("#wrapper18 i");
const carouselChildrens = [...carousel.children];

let isDragging = false, isAutoPlay = true, startX, startScrollLeft, timeoutId;

// Get the number of cards that can fit in the carousel at once
let cardPerView = Math.round(carousel.offsetWidth / firstCardWidth);

// Insert copies of the last few cards to beginning of carousel for infinite scrolling
carouselChildrens.slice(-cardPerView).reverse().forEach(card => {
    carousel.insertAdjacentHTML("afterbegin", card.outerHTML);
});

// Insert copies of the first few cards to end of carousel for infinite scrolling
carouselChildrens.slice(0, cardPerView).forEach(card => {
    carousel.insertAdjacentHTML("beforeend", card.outerHTML);
});

// Scroll the carousel at appropriate postition to hide first few duplicate cards on Firefox
carousel.classList.add("no-transition");
carousel.scrollLeft = carousel.offsetWidth;
carousel.classList.remove("no-transition");

// Add event listeners for the arrow buttons to scroll the carousel left and right
arrowBtns.forEach(btn => {
    btn.addEventListener("click", () => {
        carousel.scrollLeft += btn.id == "left" ? -firstCardWidth : firstCardWidth;
    });
});

const dragStart = (e) => {
    isDragging = true;
    carousel.classList.add("dragging");
    // Records the initial cursor and scroll position of the carousel
    startX = e.pageX;
    startScrollLeft = carousel.scrollLeft;
}

const dragging = (e) => {
    if(!isDragging) return; // if isDragging is false return from here
    // Updates the scroll position of the carousel based on the cursor movement
    carousel.scrollLeft = startScrollLeft - (e.pageX - startX);
}

const dragStop = () => {
    isDragging = false;
    carousel.classList.remove("dragging");
}

const infiniteScroll = () => {
    // If the carousel is at the beginning, scroll to the end
    if(carousel.scrollLeft === 0) {
        carousel.classList.add("no-transition");
        carousel.scrollLeft = carousel.scrollWidth - (2 * carousel.offsetWidth);
        carousel.classList.remove("no-transition");
    }
    // If the carousel is at the end, scroll to the beginning
    else if(Math.ceil(carousel.scrollLeft) === carousel.scrollWidth - carousel.offsetWidth) {
        carousel.classList.add("no-transition");
        carousel.scrollLeft = carousel.offsetWidth;
        carousel.classList.remove("no-transition");
    }

    // Clear existing timeout & start autoplay if mouse is not hovering over carousel
    clearTimeout(timeoutId);
    if(!wrapper.matches(":hover")) autoPlay();
}

const autoPlay = () => {
    if(window.innerWidth < 800 || !isAutoPlay) return; // Return if window is smaller than 800 or isAutoPlay is false
    // Autoplay the carousel after every 2500 ms
    timeoutId = setTimeout(() => carousel.scrollLeft += firstCardWidth, 2500);
}
autoPlay();

carousel.addEventListener("mousedown", dragStart);
carousel.addEventListener("mousemove", dragging);
document.addEventListener("mouseup", dragStop);
carousel.addEventListener("scroll", infiniteScroll);
wrapper.addEventListener("mouseenter", () => clearTimeout(timeoutId));
wrapper.addEventListener("mouseleave", autoPlay);





            </script>      
            
    </body>
</html>
