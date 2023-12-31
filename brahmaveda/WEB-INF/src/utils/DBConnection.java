package utils;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBConnection {
    static DataSource dataSource = null;
    static {
        try{
            Context initialContext = new InitialContext();

            Context envContext = (Context)initialContext.lookup("java:comp/env");
            dataSource = (DataSource)envContext.lookup("jdbc/ayurveda");

        }catch(NamingException ne){
            ne.printStackTrace();
        }
    }
    public static Connection getConnection() throws SQLException{
        return dataSource.getConnection();   
    }
}
