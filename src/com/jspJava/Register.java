package com.jspJava;
import com.database.*;


public class Register {

    public boolean register(String email,String password){

        ConnectDatabase conDBS=new ConnectDatabase();
        boolean insertSucc=false;

        if(conDBS.toConnectDatabase()){
            if (conDBS.search("select * from userinfo where email='"+email+"'"))
                insertSucc=false;
            else {
                if(conDBS.insert("insert into userinfo (email,passwd) values('"+email+"','"+password+"')"))
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
