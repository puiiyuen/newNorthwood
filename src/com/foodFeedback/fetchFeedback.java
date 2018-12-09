/*
Food feedback system (admin part server-side & database)  
Index:62 Complexity: 8 
*/

package com.foodFeedback;

import com.database.ConnectDatabase;

public class fetchFeedback {
    
    //fetch vote result from database
    private String[] voteResult(String colName) {
        ConnectDatabase con = new ConnectDatabase();

        return con.getItem("select content,day,like_dish,dislike_dish,want_more_dish from menu as m, vote_result as v where m.id = v.dish_id", colName);
    }
    
    //fetch content column
    public String[] voteResultName() {
        return voteResult("content");
    }
    
    //fetch day column
    public String[] voteResultDay() {
        return voteResult("day");
    }
    
    //fetch result(like) column
    public String[] voteResultLike() {
        return voteResult("like_dish");
    }
    
    //fetch result(dislike) column
    public String[] voteResultDislike() {
        return voteResult("dislike_dish");
    }
    
    //fetch result(more) column
    public String[] voteResultMore() {
        return voteResult("want_more_dish");
    }
    
    //fetch feedback
    public String[] feedback(String colName) {
        ConnectDatabase con = new ConnectDatabase();
        return con.getItem("select fb_content,fb_time from feedback where fb_content!=''", colName);
    }
    
    //fetch feedback content column
    public String[] feedbackContent() {
        return feedback("fb_content");
    }
    
    //fetch feedback date
    public String[] feedbackDate() {
        return feedback("fb_time");
    }
}
