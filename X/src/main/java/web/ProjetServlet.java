package web;

import dao.IprojetDao;
import dao.itacheDao;
import dao.projet_imp;
import dao.tache_imp; // Importer l'implémentation de itacheDao
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import metier.projet;
import metier.tache;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet
public class ProjetServlet extends HttpServlet {
    private IprojetDao metier;
    private itacheDao metier_tache;

    @Override
    public void init() throws ServletException {
        metier = new projet_imp();
        metier_tache = new tache_imp(); // Initialiser metier_tache
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if (path.equals("/home")) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else if (path.equals("/afficher")) {
            ProjetModel model = new ProjetModel();
            List<projet> projets = metier.afficher();
            model.setProjets(projets);
            request.setAttribute("model", model);
            request.getRequestDispatcher("projet.jsp").forward(request, response);
        } else if (path.equals("/ajouter")) {
            request.getRequestDispatcher("ajouter.jsp").forward(request, response);
        } else if (path.equals("/ajouter_projet.do") && (request.getMethod().equals("POST"))) {
            String nom_projet = request.getParameter("nom_projet");
            String description = request.getParameter("description");

            Date date_debut = null;
            Date date_fin = null;
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                date_debut = sdf.parse(request.getParameter("date_debut"));
                date_fin = sdf.parse(request.getParameter("date_fin"));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            Float budget = Float.parseFloat(request.getParameter("budget"));

            projet p = metier.ajouter(new projet(nom_projet, description, date_debut, date_fin, budget));
            request.setAttribute("projet", p);
            request.getRequestDispatcher("confirmation.jsp").forward(request, response);
        } else if (path.equals("/supprimer.do")) {
            int id_projet = Integer.parseInt(request.getParameter("id_projet"));
            metier.supprimer(id_projet);
            response.sendRedirect("afficher");
            //---------------------------------------------modifier tache
        } else if (path.equals("/modifier.do")) {
            int id_projet = Integer.parseInt(request.getParameter("id_projet"));
            projet p = metier.getProjet(id_projet);
            request.setAttribute("projet", p);
            request.getRequestDispatcher("modifier.jsp").forward(request, response);
        } else if (path.equals("/modifier_projet.do") && (request.getMethod().equals("POST"))) {
            int id_projet = Integer.parseInt(request.getParameter("id_projet"));
            String nom = request.getParameter("nom_projet");
            String description = request.getParameter("description");

            Date date_debut = null;
            Date date_fin = null;
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                date_debut = sdf.parse(request.getParameter("date_debut"));
                date_fin = sdf.parse(request.getParameter("date_fin"));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            Float budget = Float.parseFloat(request.getParameter("budget"));

            projet p = new projet(nom, description, date_debut, date_fin, budget);
            p.setId_projet(id_projet);
            metier.modifier(p);
            request.setAttribute("projet", p);
            response.sendRedirect("afficher");

            //----------------------------Afficher tache

        } else if (path.equals("/home_tache")) {
            TacheModel model_tache = new TacheModel();
            List<tache> taches = metier_tache.afficher();
            model_tache.setTaches(taches);
            request.setAttribute("model_tache", model_tache);
            request.getRequestDispatcher("tache.jsp").forward(request, response);
            //-----------------------Ajouter tache-------------------------------


        } else if (path.equals("/ajouter_tache")) {
            request.getRequestDispatcher("ajouter_tache.jsp").forward(request, response);
        } else if (path.equals("/ajouter_tache.do") && (request.getMethod().equals("POST"))) {
            String description = request.getParameter("description");

            Date date_debut = null;
            Date date_fin = null;
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                date_debut = sdf.parse(request.getParameter("date_debut"));
                date_fin = sdf.parse(request.getParameter("date_fin"));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            int id_projet = Integer.parseInt(request.getParameter("id_projet"));
            String status = request.getParameter("status");
            tache t = metier_tache.ajouter(new tache(description, date_debut, date_fin, id_projet, status));
            request.setAttribute("tache", t);
            request.getRequestDispatcher("config_tache.jsp").forward(request, response);
        }
        //---------------------------------supprimer tache
        else if (path.equals("/supprimer_tache.do")) {
            int id_tache = Integer.parseInt(request.getParameter("id_tache"));
            metier_tache.supprimer(id_tache);
            response.sendRedirect("home_tache");
        }

        //------------------modifier tache

     else if (path.equals("/get_tache.do")) {
        int id_tache = Integer.parseInt(request.getParameter("id_tache"));
        tache t = metier_tache.getTaches(id_tache);
        request.setAttribute("tache", t);
        request.getRequestDispatcher("modifier_tache.jsp").forward(request, response);

    } else if (path.equals("/modifier_tache.do") && (request.getMethod().equals("POST"))) {


            int id_tache = Integer.parseInt(request.getParameter("id_tache"));
            String description = request.getParameter("description");

            Date date_debut = null;
            Date date_fin = null;
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                date_debut = sdf.parse(request.getParameter("date_debut"));
                date_fin = sdf.parse(request.getParameter("date_fin"));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            int id_projet = Integer.parseInt(request.getParameter("id_projet"));
            String status = request.getParameter("status");

            tache t = new tache(description, date_debut, date_fin, id_projet, status);
            t.setId_tache(id_tache);
            metier_tache.modifier(t);
            request.setAttribute("tache", t);
            response.sendRedirect("home_tache");
        }

        //-----------------------------Error
        else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
