package chap14;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class EmployeeDao {
	public static List<String> listEmployeename() {
		List<String> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String pw = "admin";
		
		String sql = "SELECT ENAME FROM employee";
		
		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2. 커넥션 생성
			conn = DriverManager.getConnection(url, id, pw);
			
			//  3. Statement 생성
			stmt = conn.createStatement();
			
			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);
			
			// 5. 결과 처리
			
			while (rs.next()) {
				list.add(rs.getString("ename"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		// 6. statement 닫기
		try {
			if (stmt != null) {
			stmt.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 7. connection  닫기
		try {
			if (conn != null) {
			conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
		return list;
}
}
