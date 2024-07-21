/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.dao;
import java.sql.*;
import com.tech.blog.entities.packagese;
import com.tech.blog.entities.subpack1;
import java.util.ArrayList;
/**
 *
 * @author Admin
 */
public class packdao {
    private Connection con;
    public packdao(Connection con){
        this.con=con;
    }
   public ArrayList<packagese> getallpack(String place){
     ArrayList<packagese> plist=new ArrayList<>();
   
       try{
            String query="select * from packages";
            PreparedStatement pstat=con.prepareStatement(query);
           
            //pstat.setString(1,place);
            ResultSet set=pstat.executeQuery();
            
             
                 String query1="select count(*) as c from subpack where packof=?";
                 PreparedStatement pstat1=con.prepareStatement(query1);
                 
            while(set.next()){
                packagese p=new packagese();
                p=new packagese();
                p.setid(set.getInt("id"));
                p.settheme(set.getString("theme"));
                p.setplace(set.getString("place"));
                p.setbesttime(set.getString("besttime"));
                p.setrating(set.getString("ratings"));
                p.setdesc(set.getString("desc"));
                p.setmax(set.getInt("maxcost")); 
                 p.setmin(set.getInt("mincost"));
                 pstat1.setInt(1,p.getid());
                 ResultSet set2=pstat1.executeQuery();
                 set2.next();
                 p.sett(set2.getInt(1));
                plist.add(p);

            }
            
        }
        catch(Exception e){
                    e.printStackTrace();

        }
       return  plist;
   }
   public ArrayList<packagese> getthemepack(String theme){
     ArrayList<packagese> plist=new ArrayList<>();
   
       try{
            String query="select * from packages where theme=?";
            PreparedStatement pstat=con.prepareStatement(query);
           
            pstat.setString(1,theme);
            ResultSet set=pstat.executeQuery();
            
             
                 String query1="select count(*) as c from subpack where packof=?";
                 PreparedStatement pstat1=con.prepareStatement(query1);
                 
            while(set.next()){
                packagese p=new packagese();
                p=new packagese();
                p.setid(set.getInt("id"));
                p.settheme(set.getString("theme"));
                p.setplace(set.getString("place"));
                p.setbesttime(set.getString("besttime"));
                p.setrating(set.getString("ratings"));
                p.setdesc(set.getString("desc"));
                p.setmax(set.getInt("maxcost")); 
                 p.setmin(set.getInt("mincost"));
                 pstat1.setInt(1,p.getid());
                 ResultSet set2=pstat1.executeQuery();
                 set2.next();
                 p.sett(set2.getInt(1));
                plist.add(p);

            }
            
        }
        catch(Exception e){
                    e.printStackTrace();

        }
       return  plist;
   }



 public ArrayList<subpack1> getsubpack(String place){
     ArrayList<subpack1> plists=new ArrayList<>();
   
       try{
            String query="select * from subpack where packof in(select id from packages where place=?)";
            PreparedStatement pstat=con.prepareStatement(query);
           
            pstat.setString(1,place);
            ResultSet set=pstat.executeQuery();
           
             
                 
                 
            while(set.next()){
                subpack1 p=new subpack1();
                p.setid(set.getInt("idsub"));
                p.setname(set.getString("name"));
               
                 
                  p.setoffer(set.getInt("offer"));
                
                
                p.setcost(set.getInt("cost")); 
                plists.add(p);
                 

            }
            
        }
        catch(Exception e){
                    e.printStackTrace();

        }
       return  plists;
   }
 public subpack1 getsubpurchase(String ids){
     subpack1 s=new subpack1();
   int sd=Integer.parseInt(ids);
       try{
            String query="insert into userpur values(?,?)";
            PreparedStatement pstat=con.prepareStatement(query);
           
           pstat.setInt(1,Integer.parseInt(ids));
            ResultSet set=pstat.executeQuery();
           
             
                 
                 
            if(set.next()){
                subpack1 p=new subpack1();
                p.setid(set.getInt("idsub"));
                p.setname(set.getString("name"));
               
                 
                  p.setoffer(set.getInt("offer"));
                
                
                p.setcost(set.getInt("cost")); 
                 

            }
            
        }
        catch(Exception e){
                    e.printStackTrace();

        }
       return  s;
   }









   
    public ArrayList<subpack1> getspecificpackages(String place,String day,String month){
        ArrayList<subpack1> plists=new ArrayList<>();
        try{
           
             int d=Integer.parseInt(day);
           
             
            String query="select * from subpack  where  days>=? and  days<? and packof in (Select id from packages where place=? and besttime like ?)";
            
           
            PreparedStatement pstat=con.prepareStatement(query);
            
           
            pstat.setInt(1,d);
           
            pstat.setInt(2,d+5);
           pstat.setString(3,place);
           pstat.setString(4,"%"+month+"%");
           
            ResultSet set=pstat.executeQuery();
           while(set.next()){
                subpack1 p=new subpack1();
                p.setid(set.getInt("idsub"));
                p.setname(set.getString("name"));
               
                 p.setdays(set.getInt("days")); 
                 p.setnights(set.getInt("nights"));
                  p.setoffer(set.getInt("offer"));
                  p.setpackof(set.getInt("packof"));
                
                p.setcost(set.getInt("cost")); 
                plists.add(p);
                 
                 
              
                

            
        }
            
        }
             
        catch(Exception e){
                    e.printStackTrace();
                    }
       
    return plists;
}
    
    
    
    
    
    public ArrayList<String> theme(){
        ArrayList<String> plist=new ArrayList<>();
        try{
           
             
            String query="select theme from packages group by theme";
            
           
            PreparedStatement pstat=con.prepareStatement(query);
         
  
             
            ResultSet set=pstat.executeQuery();
            while(set.next()){
                
                String s=set.getString("theme");
               
                 
                plist.add(s);
                

            
        }
            
        }
             
        catch(Exception e){
                    e.printStackTrace();
                    }
       
    return plist;
}
   
    
        public ArrayList<String> topic(){
        ArrayList<String> plist=new ArrayList<>();
        try{
           
             
            String query="select distinct(place) from packages";
            
           
            PreparedStatement pstat=con.prepareStatement(query);
         
  
             
            ResultSet set=pstat.executeQuery();
            while(set.next()){
                
                String s=set.getString("place");
               
                 
                plist.add(s);
                

            
        }
            
        }
             
        catch(Exception e){
                    e.printStackTrace();
                    }
       
    return plist;
}
    
}
