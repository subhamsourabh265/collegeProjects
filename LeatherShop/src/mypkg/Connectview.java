package mypkg;
import java.sql.*;


public class Connectview {
	public static Connection conn=null;

	public static Connection	connect(){
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","7792");
		System.out.println("Connected");
		
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return conn;
		}
	


}