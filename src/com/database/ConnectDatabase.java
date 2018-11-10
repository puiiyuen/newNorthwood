package com.database;
import java.sql.*;

public class ConnectDatabase {

    Connection con=null;

    public boolean toConnectDatabase(){
        String JDriver = "com.mysql.jdbc.Driver";
        String conURL = "jdbc:mysql://localhost:3306/northwood";

        try{
            Class.forName(JDriver);
        }
        catch (ClassNotFoundException cnf_e){
            return false;
        }
        try{
            con=DriverManager.getConnection(conURL,"root","root123");
        }catch (SQLException sql_e){
            return false;
        }
        return true;
    }

    public boolean toCloseConnection(){
        try{
            con.close();
            return true;
        }catch (SQLException sql_e){
            return false;
        }
    }

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

}