/*
Food feedback system (admin part server-side & database)  
Create by Group C (GeniusHub)
Index:62 Complexity: 8 

*/

//admin login

package com.admin;

import com.database.ConnectDatabase;

import java.io.UnsupportedEncodingException;
import java.util.Base64;

public class Login {
    public boolean login(String email, String password) throws UnsupportedEncodingException {

        String encryptPasswd = Base64.getEncoder().encodeToString(password.getBytes("utf-8"));

        ConnectDatabase conDBS = new ConnectDatabase();

        boolean searchSuccess = conDBS.search("select * from userinfo where email='" + email
                + "' and passwd='" + encryptPasswd + "' and type='admin'", "email");

        return searchSuccess;
    }
}
