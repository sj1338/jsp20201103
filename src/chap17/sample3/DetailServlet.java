package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class DetailServlet
 */
@WebServlet("/sample3/post/detail")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		// list에서 id에 해당하는 post를 꺼내서
		Post post = getPost(id);
		
		// request에 attribute로 담아서 
		request.setAttribute("post", post);
		// deatil.jsp에 forward
		String path = "/WEB-INF/view/chap17/detail.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		// 
	}

	private Post getPost(String id) {
		Post post = new Post();
		String sql = "select id, title, body from post where id = ?"; // post 테이블에서 id, title을 id의 내림차순
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		// jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\mydb00\\Documents\\Wallet_mydb501
//		String url = "jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\admin\\Documents\\Wallet_mydb501";
		String user = "c##mydbms"; // mydb00
		String password = "admin"; // adminAdmin12
		try {
			// 1.드라이버로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.연결생성
			Connection con = DriverManager.getConnection(url, user, password);
			// 3.statement생성
			PreparedStatement pstmt = con.prepareStatement(sql);  // 파라미터(?)가 sql을 실행 할 수 statement는 preparedStatement
			pstmt.setInt(1, Integer.parseInt(id)); 
			// 4.쿼리 실행
			ResultSet rs = pstmt.executeQuery();
			// 5.결과 처리
			rs.next();
			post.setTitle(rs.getString(2));
			post.setBody(rs.getString(3));
			// 6. statement, 연결 닫기
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return post;
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
