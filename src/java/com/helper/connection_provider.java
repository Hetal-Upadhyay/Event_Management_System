package com.helper;
import java.sql.*;

public class connection_provider 
{
    private static Connection con=null;
    public static Connection getConnection()
    {
        try
        {
            if(con==null)
            {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/splendid_soirees","root","1234");
                System.out.println("cp");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
    
}

//package com.mvc.util;
 

////Example
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
// 
//public class connection_provider {
//
//    /**
//     *
//     * @return
//     */
//    public static Connection createConnection()
// {
//     Connection con = null;
//     String url = "jdbc:mysql://localhost:3306/splendid_soirees"; //MySQL URL followed by the database name
//     String username = "root"; //MySQL username
//     String password = ""; //MySQL password
//     System.out.println("In DBConnection.java class ");
//      
//     try
//     {
//         try
//         {
//            Class.forName("com.mysql.jdbc.Driver"); //loading MySQL drivers. This differs for database servers 
//         } 
//         catch (ClassNotFoundException e)
//         {
//         }       
//         con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
//         System.out.println("Printing connection object "+con);
//     } 
//     catch (SQLException e) 
//     {
//     }   
//     return con; 
// }
//}