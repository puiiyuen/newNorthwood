/*
As a server-side developer, I want to provide user login and register, so that residents can use their own account to do some operations (e.g. food feedback). 
Index#: 42 User Login Server (59 Java EE 60 MySQL) 
Complexity#: 8 
*/

//register

package com.User;

import java.io.UnsupportedEncodingException;
import java.util.*;

import com.database.*;


public class Register {

    public boolean register(String username, String email, String password) throws UnsupportedEncodingException {

        ConnectDatabase conDBS = new ConnectDatabase();
        boolean insertSucc;

        String encryptPasswd = Base64.getEncoder().encodeToString(password.getBytes("utf-8"));

        //check if there is an account
        if (conDBS.search("select * from userinfo where email='" + email + "'", "email"))
            insertSucc = false;
        else {
            //if not create a new account
            insertSucc = conDBS.insert("insert into userinfo (username,email,passwd,type) values('" + username + "','"
                    + email + "','" + encryptPasswd + "','user')");
        }
        return insertSucc;

    }
}
