/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.entities;

/**
 *
 * @author Admin
 */
public class message {
    private String msgcontent;
    private String msgtype;
    private String css;
    public message(String mc,String mt,String c){
        this.msgcontent=mc;
        this.msgtype=mt;
        this.css=c;
    }
    public String getcontent(){
        return this.msgcontent;
    }
    public String gettype(){
        return this.msgtype;
    }
    public String getcss(){
        return this.css;
    }
       public void setcontent(String c){
        this.msgcontent=c;
    }
    public void gettype(String t){
        this.msgtype=t;
    }
    public void getcss(String s){
        this.css=s;
    }
}
