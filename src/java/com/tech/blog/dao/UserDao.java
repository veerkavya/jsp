/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.dao;
import java.sql.*;
import com.tech.blog.entities.Users;

public class UserDao {
    private Connection con;
    public UserDao(Connection con){
        this.con=con;
    }
    public boolean saveuser(Users user){
        boolean f=false;
        try{
            String query="insert into user1(name,email,password) values(?,?,?);";
            PreparedStatement pstat=this.con.prepareStatement(query);
           
            pstat.setString(1,user.getname());
            pstat.setString(2, user.getemail());
            pstat.setString(3, user.getpassword());
            f=true;
            pstat.executeUpdate();
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    public boolean savepackuser(String name,String place){
        boolean f=false;
        try{
            String query="insert into userpurc values(?,?);";
            PreparedStatement pstat=this.con.prepareStatement(query);
           
            pstat.setString(1,name);
            pstat.setString(2, place);
           
            f=true;
            pstat.executeUpdate();
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    public Users loginbypassword(String email,String password){
                    Users user=null;
                   
        try{
            String query="select * from user1 where email=? and password=?";
            PreparedStatement pstat=con.prepareStatement(query);
           
            pstat.setString(1,email);
   
            pstat.setString(2,password);
            
            ResultSet set=pstat.executeQuery();
            if(set.next()){
                user=new Users();
                user.setid(set.getInt("id"));
                user.setname(set.getString("name"));
                 user.setemail(set.getString("email"));
                user.setpassword(set.getString("password"));

            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
    
    
    
    
    
}
