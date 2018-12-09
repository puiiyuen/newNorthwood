/*
Food feedback system (admin part server-side & database)  
Index:62 Complexity: 8 
*/

package com.foodFeedback;

import com.database.ConnectDatabase;

public class fetchMenu {

    private ConnectDatabase con = new ConnectDatabase();
    
    
    //fetch menu
    public String[] menu(String day,String colName) {

        return con.getItem("select id,content from menu where Day = '" + day + "'", colName);
    }
    
    //fetch daily menu by day
    public String[] dailyMenu(String day) {

        return menu(day,"content");
    }
    
    //fetch dish id column
    public String[] dishId(String day) {
        return menu(day,"id");
    }

    //fetch whole menu
    public String[] menu(String colName) {
        return con.getItem("select id,content,day from menu", colName);
    }
    
    //fetch whole content colnmn
    public String[] allMenu()
    {
        return menu("content");
    }
    
    //fetch whole day column
    public String[] allDay() {
        return menu("day");
    }
    
    //fetch whole dish id
    public String[] allId(){
        return menu("id");
    }


}

