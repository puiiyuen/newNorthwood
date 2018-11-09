package com.User;
import java.io.UnsupportedEncodingException;
import java.util.Base64;
import com.database.ConnectDatabase;

public class Login {

    public boolean login(String email,String password) throws UnsupportedEncodingException {

        String encryptPasswd=Base64.getEncoder().encodeToString(password.getBytes("utf-8"));

        ConnectDatabase conDBS =new ConnectDatabase();

        boolean searchSuccess=conDBS.search("select * from userinfo where email='"+email
                +"' and passwd='"+encryptPasswd+"'","email");

        if(searchSuccess){
            return true;
        }
        else
            return false;

    }

//    public void loginStatus(String name){
////        ConnectDatabase conDBS =new ConnectDatabase();
////
////        if (conDBS.toConnectDatabase()){
////            if(!conDBS.search("select * from loginstatus where loginuser='"+name+"'")){
////                conDBS.insert("insert into loginstatus (loginuser) values('"+name+"')");
////            }
////        }
////    }
////
////    public boolean logout(String name){
////        ConnectDatabase conDBS =new ConnectDatabase();
////
////        if (conDBS.toConnectDatabase()){
////            if(!conDBS.search("select * from loginstatus where loginuser='"+name+"'")){
////                conDBS.insert("delete from loginstatus where loginuser='"+name+"'");
////            }
////        }
////        return true;
////    }
}
