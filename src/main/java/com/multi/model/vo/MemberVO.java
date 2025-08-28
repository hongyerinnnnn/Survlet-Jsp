package com.multi.model.vo;

public class MemberVO {
    private String name;
    private String email;
    private String pwd;
    private String remember;

    // useBean 사용 시 기본 생성자 없으면 error
    public MemberVO() {
    }

    public MemberVO(String name, String password, String email, String remember) {
        this.name = name;
        this.pwd = password;
        this.email = email;
        this.remember = remember;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return pwd;
    }

    public void setPassword(String password) {
        this.pwd = pwd;
    }

    public String getRemember() {
        return remember;
    }

    public void setRemember(String remember) {
        this.remember = remember;
    }

    @Override
    public String toString() {
        return "MemberVO{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + pwd + '\'' +
                ", remember='" + remember + '\'' +
                '}';
    }
}
