package com.test;
import com.User.*;
import com.database.*;

import java.io.UnsupportedEncodingException;
import java.util.Base64;


public class testDriver {

    public static void main(String[] args) throws UnsupportedEncodingException {
        Login log=new Login();
        Register reg=new Register();
        ConnectDatabase dbs=new ConnectDatabase();


        System.out.println("---Test Driver 1.0---");
        System.out.println("---Start testing---\n");
        testDatabase(dbs);
        System.out.println("\n");
        testRegister(reg);
        System.out.println("\n");
        testLogin(log);
        System.out.println("\n");
        dbs.toConnectDatabase();
        dbs.insert("delete from userinfo where email='testAccount'");
        dbs.toCloseConnection();
        System.out.println("---Testing finished---");

    }

    static void testDatabase(ConnectDatabase dbs){
        System.out.println("---Test Database---");

        try{
            System.out.println("Test connection");
            if(dbs.toConnectDatabase())
                System.out.println("Database Connect successful");
        }catch (Exception e){
            System.out.println("Database Connect failed");
        }

        try{
            System.out.println("Test search function...");
            dbs.search("select * from userinfo");
            System.out.println("search test finished");
        }catch (Exception e){
            System.out.println("Search test failed");
        }

        try{
            System.out.println("Test insert object...");
            dbs.insert("insert into userinfo (email,passwd) values('testAccount','testPasswd')");
            System.out.println("Successful insert test account");
            if (!dbs.insert("insert into userinfo (email,passwd) values('testAccount','testPasswd')"))
                System.out.println("Successful prevent same object insert");
            else
                System.out.println("Failed to prevent same object insert");
            dbs.insert("delete from userinfo where email='testAccount'");
            System.out.println("insert test finished");
        }catch (Exception e){
            System.out.println("Insert test failed");
        }

        try{
            System.out.println("Test closing connection");
            if (dbs.toCloseConnection())
                System.out.println("Close finished");
            else
                System.out.println("Close failed");
        }catch (Exception e){
            System.out.println("Database close failed");
        }

        System.out.println("---Database Test Finished---");
    }

    static void testRegister(Register reg) throws UnsupportedEncodingException {

        String encryptPasswd=Base64.getEncoder().encodeToString("testPasswd".getBytes("utf-8"));

        System.out.println("---Test Register System---");
        try{
            if(reg.register("testAccount",encryptPasswd))
                System.out.println("Register successful");
            else
                System.out.println("Register failed");
            if(!reg.register("testAccount",encryptPasswd))
                System.out.println("Successful prevent repeat register");
            else
                System.out.println("Lack of preventing repeat register");
        }catch (Exception e){
            System.out.println("---Register Failed---");
        }
        System.out.println("---Register Test Finished---");


    }

    static void testLogin(Login log) throws UnsupportedEncodingException {

        String encryptPasswd=Base64.getEncoder().encodeToString("testPasswd".getBytes("utf-8"));

        System.out.println("---Test Login System---");
        try{
            System.out.println("Test login");
            if(log.login("testAccount",encryptPasswd))
                System.out.println("Login successful");
            else
                System.out.println("Login failed");
            if(!log.login("123dsf","asdf"))
                System.out.println("Successful prevent illegal login");
            else
                System.out.println("Lack of preventing illegal login");
        }catch (Exception e){
            System.out.println("Test login failed");
        }
        System.out.println("---Login Test Finished---");

    }


}
