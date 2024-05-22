package web;

import dao.IprojetDao;
import dao.projet_imp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


public class ProjetServlet  extends HttpServlet {
    private IprojetDao metier;

    @Override
    public void init() throws ServletException {
        metier = new projet_imp();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("projet.jsp").forward(request,response);
    }
}
