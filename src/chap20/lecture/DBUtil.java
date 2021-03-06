package chap20.lecture;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	private static String url;
	private static String user;
	private static String password;
	
	public static void setUrl(String url) {
		DBUtil.url = url;
	}
	
	public static void setPassword(String password) {
		DBUtil.password = password;
	}
	
	public static void setUser(String user) {
		DBUtil.user = user;
	}
	
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return con;
	}
}
