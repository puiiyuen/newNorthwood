package com.foodFeedback;

import com.database.ConnectDatabase;

public class fetchFeedback {

    private String[] voteResult(String colName) {
        ConnectDatabase con = new ConnectDatabase();

        return con.getItem("select content,day,like_dish,dislike_dish,want_more_dish from menu as m, vote_result as v where m.id = v.dish_id", colName);
    }

    public String[] voteResultName() {
        return voteResult("content");
    }

    public String[] voteResultDay() {
        return voteResult("day");
    }

    public String[] voteResultLike() {
        return voteResult("like_dish");
    }

    public String[] voteResultDislike() {
        return voteResult("dislike_dish");
    }

    public String[] voteResultMore() {
        return voteResult("want_more_dish");
    }

    public String[] feedback(String colName) {
        ConnectDatabase con = new ConnectDatabase();
        return con.getItem("select fb_content,fb_time from feedback where fb_content!=''", colName);
    }

    public String[] feedbackContent() {
        return feedback("fb_content");
    }

    public String[] feedbackDate() {
        return feedback("fb_time");
    }
}
