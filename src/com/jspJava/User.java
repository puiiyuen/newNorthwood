package com.jspJava;

public class User {
    private String username;
    private String email;
    private String password;

    public User(String email,String password){
        this.setEmail(email);
        this.setPassword(password);
    }

    public void setUsername(String username){
        this.username=username;
    }

    public void setEmail(String email){
        this.email=email;
    }

    public void setPassword(String password){
        this.password=password;
    }

    public String getUsername(){
        if(username!=null)
            return username;
        else
            return "NO Username!";
    }

    public String getEmail(){
        if(email!=null)
            return email;
        else
            return "NO Email!";
    }

    public String getPassword(){
        if(password!=null)
            return password;
        else
            return "NO password";
    }


}
