package com.User;
import java.io.UnsupportedEncodingException;
import java.util.*;
import com.database.*;


public class Register {

    public boolean register(String email,String password) throws UnsupportedEncodingException {

        ConnectDatabase conDBS=new ConnectDatabase();
        boolean insertSucc=false;

        String encryptPasswd=Base64.getEncoder().encodeToString(password.getBytes("utf-8"));


        if(conDBS.toConnectDatabase()){
            if (conDBS.search("select * from userinfo where email='"+email+"'"))
                insertSucc=false;
            else {
                if(conDBS.insert("insert into userinfo (email,passwd) values('"+email+"','"+encryptPasswd+"')"))
                    insertSucc=true;
                else
                    insertSucc=false;
            }
            conDBS.toCloseConnection();
            return insertSucc;
        }
        else
            return false;
    }
}
