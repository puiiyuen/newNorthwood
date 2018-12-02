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
