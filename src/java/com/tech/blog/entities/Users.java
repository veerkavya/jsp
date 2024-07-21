package com.tech.blog.entities;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Admin
 */
public class Users {
    private int id;
    private String name;
    private String password;
    private String email;
    public Users(String name,String email,String password){
      
        this.name=name;
        this.email=email;
        this.password=password;
    }
    public Users(){
    
    }
    public String getname(){
        return this.name;
    }
    public String getemail(){
        return this.email;
    }
     public void setid(int id){
         this.id=id;
     }
      public String getpassword(){
        return this.password;
    }

       public void setpassword(String password){
       this.password=password;
    }
    public void setname(String name){
        this.name=name;
    }
     public void setemail(String email){
        this.email=email;
    }
}
