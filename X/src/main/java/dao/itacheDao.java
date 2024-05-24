package dao;

import metier.projet;
import metier.tache;

import java.util.List;

public interface itacheDao {
    public tache ajouter(tache t);
    public List<tache> afficher();
    public tache modifier(tache t);
    public tache supprimer(int id_tache);


    tache getTaches(int id_teche);
}
