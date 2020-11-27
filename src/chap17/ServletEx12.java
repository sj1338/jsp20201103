package chap17;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servletEx12
 */
@WebServlet("/ex12")
public class ServletEx12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx12() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	List<String> list = new ArrayList<>();
    	list.add("java");
    	list.add("css");
    	list.add("servlet");
    	list.add("tomcat");
    	application.setAttribute("database", list);
    	
    	super.init();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if (id == null ) {
			id = "0";
		}
		int idx = Integer.valueOf(id);
		
		ServletContext application = getServletContext();
		List<String> list = (List<String>) application.getAttribute("database");
		String name = list.get(idx);
		
		// request attribute에 set
		request.setAttribute("name", name);
		
		// foward
		String path = "/chap17/lecture/servletEx12View.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
