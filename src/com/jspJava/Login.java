package com.jspJava;
import com.database.ConnectDatabase;

public class Login {

    public boolean login(String email,String password){
        User userLog = new User(email,password);
        ConnectDatabase conDBS =new ConnectDatabase();

        if (conDBS.toConnectDatabase()){
            if(conDBS.search("select * from userinfo where email='"+userLog.getEmail()
                    +"' and passwd='"+userLog.getPassword()+"'")){
                conDBS.toCloseConnection();
                return true;
            }
            else
                return false;
        }
        else
            return false;
    }
}
