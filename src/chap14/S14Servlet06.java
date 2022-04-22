package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Employee;


/**
 * Servlet implementation class S14Servlet06
 */
@WebServlet("/S14Servlet06")
public class S14Servlet06 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet06() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT firstName, lastName, birthDate FROM Employees WHERE EmployeeID = 1";

		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

		try (
			Connection con = ds.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql)
			
			) {

			// 조회결과 정제...

			if (rs.next()) {
				Employee employees = new Employee();

				String first = rs.getString("firstName");
				String last = rs.getString("lastName");
				String birth = rs.getString("birthDate");

				employees.setFirstName(first);
				employees.setLastName(last);
				employees.setBirthDate(birth);
				
				request.setAttribute("employee", employees);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		String path = "/WEB-INF/view/chap14/ex04.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
