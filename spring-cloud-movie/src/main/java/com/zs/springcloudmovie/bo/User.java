package com.zs.springcloudmovie.bo;

import java.math.BigDecimal;

public class User {

    private long id;
    private String userName;
    private String name;
    private int age;
    private BigDecimal balancel;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public BigDecimal getBalancel() {
        return balancel;
    }

    public void setBalancel(BigDecimal balancel) {
        this.balancel = balancel;
    }
}
