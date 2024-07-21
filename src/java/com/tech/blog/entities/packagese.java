/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.entities;

/**
 *
 * @author Admin
 */
public class packagese {
    int id,min,max;
    String theme;
    String place;
    String best_time;
    String ratings;
    String desc;
    int total;
    
    public packagese(int id,
    String theme,
    String place,
    String best_time,
    String ratings,
    String desc,int total,int min,int max){
        this.id=id;
       this.theme=theme;
    this.place=place;
     this.best_time=best_time;
    this.ratings=ratings;
    this.desc=desc;
    this.total=total;
    this.max=max;
    this.min=min;
    }
    public packagese(){
        
    }
    public void setid(int id){
        this.id=id;}
    
      public void setmax(int max){
        this.max=max;
      }
        public void setmin(int min){
        this.min=min;
        }
    
    public void sett(int t){
        this.total=t;
    }
    public void settheme(String theme){
       this.theme=theme;
    }
    public void setdesc(String desc){
        this.desc=desc;
    }
    public void setrating(String ratings){
        this.ratings=ratings;
    }
    public void setplace(String place){
        this.place=place;
    }
    public void setbesttime(String best){
        this.best_time=best;
    }
    
    
     public int getid(){
        return this.id;
    }
     
      public int getmax(){
        return this.max;
    }
       public int getmin(){
        return this.min;
    }
     public int gett(){
        return this.total;
    }
    public String gettheme(){
       return this.theme;
    }
    public String getdesc(){
       return this.desc;
    }
    public String getrating(){
        return this.ratings;
    }
    public String getplace(){
        return this.place;
    }
    public String getbesttime(){
        return this.best_time;
    }
    
    
    
    
}
