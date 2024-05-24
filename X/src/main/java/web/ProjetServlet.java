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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
       else if(path.equals("/afficher")){
            ProjetModel model = new ProjetModel();
            List<projet>projets=metier.afficher();
            model.setProjets(projets);
            request.setAttribute("model",model);
            request.getRequestDispatcher("projet.jsp").forward(request,response);

        }
       else if(path.equals("/ajouter")){
            request.getRequestDispatcher("ajouter.jsp").forward(request,response);
        }
       else if(path.equals("/ajouter_projet.do")&& (request.getMethod().equals("POST"))){
           String nom_projet =request.getParameter("nom_projet");
           String description= request.getParameter("description");

            Date date_debut = null;
            Date date_fin = null;
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // Adjust the date format according to your input format
                date_debut = sdf.parse(request.getParameter("date_debut"));
                date_fin = sdf.parse(request.getParameter("date_fin"));
            } catch (ParseException e) {
                e.printStackTrace();
                // Handle the exception, e.g., setting default dates or returning an error response
            }
             Float budget = Float.parseFloat(request.getParameter("budget"));

             projet p= metier.ajouter( new projet(nom_projet,description,date_debut,date_fin,budget));
             request.setAttribute("projet" ,p);
             request.getRequestDispatcher("confirmation.jsp").forward(request,response);
        }

       else if (path.equals("/supprimer.do")) {
            int id_projet = Integer.parseInt(request.getParameter("id_projet"));
            metier.supprimer(id_projet);
           // request.getRequestDispatcher("projet.jsp");
            response.sendRedirect("afficher");

        }

        else if (path.equals("/modifier.do")) {
            int id_projet = Integer.parseInt(request.getParameter("id_projet"));
            projet p = metier.getProjet(id_projet);
            request.setAttribute("projet",p);

            request.getRequestDispatcher("modifier.jsp").forward(request,response );

        }

        else if(path.equals("/modifier_projet.do")&& (request.getMethod().equals("POST"))){
            int id_projet = Integer.parseInt(request.getParameter("id_projet"));
            String nom=request.getParameter("nom_projet");
            String description= request.getParameter("description");

            Date date_debut = null;
            Date date_fin = null;
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // Adjust the date format according to your input format
                date_debut = sdf.parse(request.getParameter("date_debut"));
                date_fin = sdf.parse(request.getParameter("date_fin"));
            } catch (ParseException e) {
                e.printStackTrace();
                // Handle the exception, e.g., setting default dates or returning an error response
            }
            Float budget = Float.parseFloat(request.getParameter("budget"));

            projet p= new projet( nom,description,date_debut,date_fin,budget);
            p.setId_projet(id_projet);
            metier.modifier(p);
            request.setAttribute("projet" ,p);
            response.sendRedirect("afficher");
        }
else{
    response.sendError(response.SC_NOT_FOUND);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
    }
}
