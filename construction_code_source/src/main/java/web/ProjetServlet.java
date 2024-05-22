package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class ProjetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String nom=request.getParameter("nom");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h3>"+nom+"</h3>");
        out.println("</body>"+nom+"</html>");



    }
}
