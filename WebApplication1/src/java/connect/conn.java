import java.sql.*;
import java.util.*;
class conn
{
    public static void main(String args[])throws IOException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///maps","root","Gaurav96");
        
    }
}