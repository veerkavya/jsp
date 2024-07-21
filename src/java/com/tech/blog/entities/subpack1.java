/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.entities;

/**
 *
 * @author Admin
 */
public class subpack1 {
    int id;
    int cost;
    int days;
            int nights;
            int offer;
            int packof;
  
    String name;
    
    
    public subpack1(int id,String name,
    int cost,int days,int nights,int offer){
        this.id=id;
       this.name=name;
    
    this.days=days;
    this.nights=nights;
    this.cost=cost;
    }
    public subpack1(){
        
    }
    public void setid(int id){
        this.id=id;}
    
      public void setcost(int cost){
        this.cost=cost;
      }
        public void setoffer(int offer){
        this.offer=offer;
        }
    
    public void setdays(int days){
        this.days=days;
    }
    public void setnights(int nights){
        this.nights=nights;
    }
     public void setpackof(int packof){
        this.packof=packof;
    }
    public void setname(String name){
       this.name=name;
    }
   
    
     public int getid(){
        return this.id;
    }
     
      public int getcost(){
        return this.cost;
    }
       public int getoffer(){
        return this.offer;
    }
     public int getnights(){
        return this.nights;
    }
     public int getdays(){
        return this.days;
    }
    public String getname(){
       return this.name;
    }
    public int getpackof(){
        return this.packof;
    }
    
}
