/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
const f=document.querySelector("body");
console.log(f);


const form=document.querySelector(".login");
form.addEventListener("click",function(e){
    const l=document.querySelector(".l");
     const r=document.querySelector(".r");
     var bt=document.querySelector(".lb");
    var t=document.querySelector(".login");
    var sbb=document.querySelector(".sb");
    var sbt=document.querySelector(".sign");
        sbt.style.outline='none';
    sbb.style.background="white";
    sbt.style.color="#5963B9";
     bt.style.background="#5963B9";
     t.style.color="white";
    l.style.display='block';
    r.style.display='none';
    
         
});


var fom=document.querySelector(".sign");
fom.addEventListener("click",function(){
    var bt1=document.querySelector(".lb");
    var l1=document.querySelector(".l");
     var r1=document.querySelector(".r");
     var st=document.querySelector(".sb");
     var sst=document.querySelector(".sign");
      
    var lt=document.querySelector(".login");
    lt.style.outline='none';
     bt1.style.background="white";
     lt.style.color="#5963B9";
     st.style.background="#5963B9";
     sst.style.color="white";
    l1.style.display='none';
    r1.style.display='block';
    
     
});


