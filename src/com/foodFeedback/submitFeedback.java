package com.foodFeedback;

import com.database.ConnectDatabase;

public class submitFeedback {

    public boolean submit(String email,String feedback,int[] vote,String[] dishId)
    {
        ConnectDatabase con=new ConnectDatabase();
        con.insert("insert into feedback (user_email,fb_content) values('"+email+"','"+feedback+"')");
        for (int i=0;i<vote.length;i++)
        {
            if(vote[i]!=0)
                con.insert("update vote_result set like_dish=like_dish+1 where dish_id='"+dishId[i]+"'");
            else
                con.insert("update vote_result set like_dish=like_dish+0 where dish_id='"+dishId[i]+"'");
        }
        return true;
    }

}
