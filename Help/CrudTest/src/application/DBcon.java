package application;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBcon {
	public Connection databaseLink;
	
	public Connection getConnection(){
		
		String databaseName="";
		String databaseUser="";
		String databasePassword="";
		String url = "jdbc:mysql://95.131.149.21:3306/"+databaseName;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			databaseLink = DriverManager.getConnection(url, databaseUser,  databasePassword);
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return databaseLink;
	}

}
