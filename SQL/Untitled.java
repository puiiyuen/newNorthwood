import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

//
// Untitled.java
// Created by WillJia on 2018-11-02.

class Untitled {
	public static void main(String[] args) {
		Date date = new Date();

		Timestamp timeStamp = new Timestamp(date.getTime());	
		System.out.println(timeStamp);
		}
}