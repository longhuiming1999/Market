package com.qfedu.market.entity;

import java.io.Serializable;

/**
 * (Users)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public class Users implements Serializable {
    private static final long serialVersionUID = 115256005740320538L;
    
    private String userId;
    
    private String userName;
    
    private String password;
    
    private String email;
    
    private String tel;
    
    private Integer level;
    
    private Integer integral;
    
    private Integer ifNew;


    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }

    public Integer getIfNew() {
        return ifNew;
    }

    public void setIfNew(Integer ifNew) {
        this.ifNew = ifNew;
    }

    @Override
    public String toString() {
        return "Users{" +
                "userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", tel='" + tel + '\'' +
                ", level=" + level +
                ", integral=" + integral +
                ", ifNew=" + ifNew +
                '}';
    }
}