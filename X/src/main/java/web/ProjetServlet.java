package web;

import dao.IprojetDao;
import dao.projet_imp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import metier.projet;

import java.io.IOException;
import java.util.List;

@WebServlet
public class ProjetServlet  extends HttpServlet {
    private IprojetDao metier;

    @Override
    public void init() throws ServletException {
        metier = new projet_imp();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if(path.equals("/home")){
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
        if(path.equals("/afficher")){
            ProjetModel model = new ProjetModel();
            List<projet>projets=metier.afficher();
            model.setProjets(projets);
            request.setAttribute("model",model);
            request.getRequestDispatcher("projet.jsp").forward(request,response);

        }

    }
}
