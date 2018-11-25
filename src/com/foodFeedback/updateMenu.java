package com.foodFeedback;

import com.database.ConnectDatabase;

public class updateMenu {

    ConnectDatabase con = new ConnectDatabase();

    public boolean insertDish(String content, String day) {
        if (con.search("select content from menu where content='" + content + "' and day='" + day + "'", "content"))
            return false;
        else {
            con.insert("insert into menu (content,day) values('" + content + "','" + day + "')");
            String[] dishId=con.getItem("select id from menu where content='" + content + "' and day='" + day + "'","id");
            con.insert("insert into vote_result (dish_id) values("+Integer.parseInt(dishId[0])+")");
            return true;
        }
    }

    public boolean editDish(String content, String day, String dishId) {
        con.insert("update menu set content='" + content + "',add_date=CURRENT_TIMESTAMP,day='" + day + "' where id=" + dishId);
        return true;
    }

    public boolean delDish(String dishId) {

        con.insert("delete from vote_result where dish_id="+dishId);
        con.insert("delete from menu where id="+dishId);

        return true;
    }

}
