package com.foodFeedback;
import com.database.ConnectDatabase;

public class fetchMenu {

    public String[] menu(String day)
    {
        ConnectDatabase con=new ConnectDatabase();
        return con.getItem("select content from menu where Day = '"+day+"'","content");
    }

    public String[] dishId(String day)
    {
        ConnectDatabase con=new ConnectDatabase();
        return con.getItem("select ID from menu where Day = '"+day+"'","ID");
    }

}

