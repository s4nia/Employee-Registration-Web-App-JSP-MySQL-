import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    Student student = new Student(name, email, phone);
    StudentDao dao = new StudentDao();
    dao.insertStudent(student);

    // Fetch all students for display
    
    List<Student> studentList = dao.getAllStudents();
    request.setAttribute("studentList", studentList);

    // Forward, don't redirect!
    
    request.getRequestDispatcher("list.jsp").forward(request, response);
}}