package com.foodFeedback;

import com.database.ConnectDatabase;

public class fetchMenu {

    private ConnectDatabase con = new ConnectDatabase();

    public String[] menu(String day,String colName) {

        return con.getItem("select id,content from menu where Day = '" + day + "'", colName);
    }

    public String[] dailyMenu(String day) {

        return menu(day,"content");
    }

    public String[] dishId(String day) {
        return menu(day,"id");
    }


    public String[] menu(String colName) {
        return con.getItem("select id,content,day from menu", colName);
    }

    public String[] allMenu()
    {
        return menu("content");
    }

    public String[] allDay() {
        return menu("day");
    }

    public String[] allId(){
        return menu("id");
    }


}

