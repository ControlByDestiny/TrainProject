package com.william.model;

/*** Create By InteliJ IDEA
 **位置：com.william.servlet
 **作者：袁学恒
 **时间：2018/11/21  10:15
 ***/
public class User {
    private int id;
    private String userName;
    private String userPassword;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
