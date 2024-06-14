import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AddNumbersServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Set content type and other response header fields first
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Get parameters from the request
        String param1 = request.getParameter("num1");
        String param2 = request.getParameter("num2");
        
        // Convert parameters to integers
        int num1 = Integer.parseInt(param1);
        int num2 = Integer.parseInt(param2);
        
        // Perform addition
        int sum = num1 + num2;
        
        // Generate HTML response
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Addition Result</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h2>Result of Addition:</h2>");
        out.println("<p>" + num1 + " + " + num2 + " = " + sum + "</p>");
        out.println("</body>");
        out.println("</html>");
    }
}
