package daconnection;
import java.sql.*;
public class dbclass 
{
    Connection maincon = null;
    
    public Connection sumanConnection()
    {
        try
         {
          Class.forName("com.mysql.jdbc.Driver");
          maincon = DriverManager.getConnection("jdbc:mysql://localhost:3306/suman","root"," ");
         }
         catch(Exception e)
         {
             
         }
         return maincon;
    }
}
