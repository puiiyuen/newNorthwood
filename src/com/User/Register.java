package com.User;

import java.io.UnsupportedEncodingException;
import java.util.*;

import com.database.*;


public class Register {

    public boolean register(String username, String email, String password) throws UnsupportedEncodingException {

        ConnectDatabase conDBS = new ConnectDatabase();
        boolean insertSucc;

        String encryptPasswd = Base64.getEncoder().encodeToString(password.getBytes("utf-8"));


        if (conDBS.search("select * from userinfo where email='" + email + "'", "email"))
            insertSucc = false;
        else {
            insertSucc = conDBS.insert("insert into userinfo (username,email,passwd,type) values('" + username + "','"
                    + email + "','" + encryptPasswd + "','user')");
        }
        return insertSucc;

    }
}
