/*
As a server-side developer, I want to provide user login and register, so that residents can use their own account to do some operations (e.g. food feedback). 
Index#: 42 User Login Server (59 Java EE 60 MySQL) 
Complexity#: 8 

****Before using database******
1. Please use sql command in "SQL" folder to initialize the database first
*/

package com.database;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Logger;

public class ConnectDatabase {

    private Connection con=null;
    
    //connect database
    public boolean toConnectDatabase(){
        String JDriver = "com.mysql.jdbc.Driver"; //Driver for Java connect MySQL
        String conURL = "jdbc:mysql://localhost:3306/northwood"; //database address

        try{
            Class.forName(JDriver);
        }
        catch (ClassNotFoundException cnf_e){
            return false;
        }
        try{
            con=DriverManager.getConnection(conURL,"username","password"); //use your own username and password
        }catch (SQLException sql_e){
            System.out.println("Connect database failed");
            return false;
        }
        return true;
    }
    
    //close database
    public boolean toCloseConnection(){
        try{
            con.close();
            return true;
        }catch (SQLException sql_e){
            return false;
        }
    }
    
    //search function : search if the item exists
    public boolean search(String query,String idColName){
        if(toConnectDatabase())
        {
            try{
                Statement statement=con.createStatement();
                ResultSet resultSet=statement.executeQuery(query);

                resultSet.next();
                boolean find=false;
                if (resultSet.getString(idColName)!=null)
                    find=true;
                resultSet.first();

                toCloseConnection();

                return find;
            }
            catch (SQLException sql_e){
                return false;
            }
        }
        else
            return false;

    }
    
    
    //insert function :insert item to database
    public boolean insert(String query){
        if(toConnectDatabase())
        {

            try{
                Statement statement=con.createStatement();
                statement.executeUpdate(query);

                toCloseConnection();

                return true;
            }
            catch (SQLException sql_e){
                return false;
            }
        }
        else
            return false;
    }

    //get item from database: return as a String array
    public String[] getItem(String query,String colLabel)
    {

        ArrayList<String> item=new ArrayList<>();

        if(toConnectDatabase())
        {
            try {

                Statement statement=con.createStatement();
                ResultSet resultSet=statement.executeQuery(query);

                while(resultSet.next())
                {
                    item.add(resultSet.getString(colLabel));
                }
                resultSet.first();
                toCloseConnection();
            }catch (SQLException sql_e)
            {
                System.out.println(sql_e.getMessage());
            }
        }
        return item.toArray(new String[0]);
    }


}
