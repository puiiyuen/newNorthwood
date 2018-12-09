/*
As a server-side developer, I want to provide user login and register, so that residents can use their own account to do some operations (e.g. food feedback). 
Index#: 42 User Login Server (59 Java EE 60 MySQL) 
Complexity#: 8 
*/

//Login 

package com.User;

import java.io.UnsupportedEncodingException;
import java.util.Base64;

import com.database.ConnectDatabase;

public class Login {

    public boolean login(String email, String password) throws UnsupportedEncodingException {

        String encryptPasswd = Base64.getEncoder().encodeToString(password.getBytes("utf-8"));

        ConnectDatabase conDBS = new ConnectDatabase();

        boolean searchSuccess = conDBS.search("select * from userinfo where email='" + email
                + "' and passwd='" + encryptPasswd + "' and type='user'", "email");

        return searchSuccess;

    }


}
