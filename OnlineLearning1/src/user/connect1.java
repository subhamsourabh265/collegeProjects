package user;


import java.sql.*;

public class connect1 {
public Connection conn=null;

	public Connection	connect(){
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sourabh");
		System.out.print("driver found  successfully");
	}
	catch(Exception e)
	{
		System.out.print("driver not found");}
	return conn;
		}
	

}