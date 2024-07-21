<%-- 
    Document   : slider
    Created on : 30-May-2023, 11:28:44 am
    Author     : Admin
--%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.packdao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/places1.css" rel="stylesheet" type="text/css"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="theme-cont">    
          <h3>THEMES-</h3>  
          
           <div class="theme">  
          
            <div class=" wrapper" id="wrapper255">
                <i id="left" class="fa-solid fa-angle-left"></i>
                <ul class="carousel" id="carousel255">
                    
                     <%
                         

                        ArrayList<String> l2=p.theme();
                        for(String l3:l2){
                    %>
                  
                      <li class="card" id="card255">
                           <% String im="img/"+l3+".jpg";%>
                          <form action="searchtheme" method="post"> <button type="submit themebtn more" name="group" value=<%=l3%>> <div class="img"><img src=<%=im%> alt="img" draggable="false"></div></button></form>
                          <div class="info">
                              <div class="n"><h5 class=""><%=l3%> </h5></div>
                              
                              
                          </div>
                        
                      </li>
                      <%}%>
                 
                    
        
        
       
       
      </ul>
      <i id="right" class="fa-solid fa-angle-right"></i>
    </div>
            
       </div>  
                         
          </div>
              <script >
               const wrapper255 = document.querySelector("#wrapper255");
            console.log(wrapper255);
const carousel255 = document.querySelector("#carousel255");
const firstCardWidth255 = carousel255.querySelector("#card255").offsetWidth;
const arrowBtns255 = document.querySelectorAll("#wrapper255 i");
const carouselChildrens255 = [...carousel255.children];

let isDragging255 = false, isAutoPlay255 = true, startX255, startScrollLeft255, timeoutId255;

// Get the number of cards that can fit in the carousel at once
let cardPerView255 = Math.round(carousel255.offsetWidth / firstCardWidth255);

// Insert copies of the last few cards to beginning of carousel for infinite scrolling
carouselChildrens255.slice(-cardPerView255).reverse().forEach(card => {
    carousel255.insertAdjacentHTML("afterbegin", card.outerHTML);
});

// Insert copies of the first few cards to end of carousel for infinite scrolling
carouselChildrens255.slice(0, cardPerView255).forEach(card => {
    carousel255.insertAdjacentHTML("beforeend", card.outerHTML);
});

// Scroll the carousel at appropriate postition to hide first few duplicate cards on Firefox
carousel255.classList.add("no-transition");
carousel255.scrollLeft = carousel255.offsetWidth;
carousel255.classList.remove("no-transition");

// Add event listeners for the arrow buttons to scroll the carousel left and right
arrowBtns255.forEach(btn => {
    btn.addEventListener("click", () => {
        carousel255.scrollLeft += btn.id == "left" ? -firstCardWidth255 : firstCardWidth255;
    });
});

const dragStart255 = (e) => {
    isDragging255 = true;
    carousel255.classList.add("dragging");
    // Records the initial cursor and scroll position of the carousel
    startX255 = e.pageX;
    startScrollLeft255 = carousel255.scrollLeft;
}

const dragging255 = (e) => {
    if(!isDragging255) return; // if isDragging is false return from here
    // Updates the scroll position of the carousel based on the cursor movement
    carousel255.scrollLeft = startScrollLeft255 - (e.pageX - startX255);
}

const dragStop255 = () => {
    isDragging255 = false;
    carousel255.classList.remove("dragging");
}

const infiniteScroll255 = () => {
    // If the carousel is at the beginning, scroll to the end
    if(carousel255.scrollLeft === 0) {
        carousel255.classList.add("no-transition");
        carousel255.scrollLeft = carousel255.scrollWidth - (2 * carousel255.offsetWidth);
        carousel255.classList.remove("no-transition");
    }
    // If the carousel is at the end, scroll to the beginning
    else if(Math.ceil(carousel255.scrollLeft) === carousel255.scrollWidth - carousel255.offsetWidth) {
        carousel255.classList.add("no-transition");
        carousel255.scrollLeft = carousel255.offsetWidth;
        carousel255.classList.remove("no-transition");
    }

    // Clear existing timeout & start autoplay if mouse is not hovering over carousel
    clearTimeout(timeoutId255);
    if(!wrapper255.matches(":hover")) autoPlay255();
}

const autoPlay255 = () => {
    if(window.innerWidth < 800 || !isAutoPlay) return; // Return if window is smaller than 800 or isAutoPlay is false
    // Autoplay the carousel after every 2500 ms
    timeoutId255= setTimeout(() => carousel255.scrollLeft += firstCardWidth255, 2500);
}
autoPlay255();

carousel255.addEventListener("mousedown", dragStart255);
carousel255.addEventListener("mousemove", dragging255);
document.addEventListener("mouseup", dragStop255);
carousel255.addEventListener("scroll", infiniteScroll255);
wrapper255.addEventListener("mouseenter", () => clearTimeout(timeoutId255));
wrapper255.addEventListener("mouseleave", autoPlay255);





            </script>      
                    
    </body>
</html>
