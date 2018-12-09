/*
Food feedback system (admin part server-side & database)  
Index:62 Complexity: 8 
*/

package com.foodFeedback;

import com.database.ConnectDatabase;

public class submitFeedback {

    public boolean submit(String email, String feedback, int[] vote, String[] dishId) {
        ConnectDatabase con = new ConnectDatabase();
        
        //store the feedback from residents to database
        con.insert("insert into feedback (user_email,fb_content) values('" + email + "','" + feedback + "')");
        
        //update vote result
        for (int i = 0; i < vote.length; i++) {
            if (vote[i] == 1)
                con.insert("update vote_result set like_dish=like_dish+1 where dish_id='" + dishId[i] + "'");
            else if (vote[i] == 2)
                con.insert("update vote_result set dislike_dish=dislike_dish+1 where dish_id='" + dishId[i] + "'");
            else if (vote[i] == 3)
                con.insert("update vote_result set want_more_dish=want_more_dish+1 where dish_id='" + dishId[i] + "'");
            else
                con.insert("update vote_result set like_dish=like_dish+0 where dish_id='" + dishId[i] + "'");
        }
        return true;
    }

}
