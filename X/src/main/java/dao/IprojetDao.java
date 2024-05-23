package dao;
import metier.projet;

import java.util.List;

public interface IprojetDao {
    public projet ajouter(projet p);
    public List<projet> projetparMc(String mc);
    public List<projet> afficher();
    public projet modifier(projet p);
    public projet supprimer(int id);


    projet getProjet(int id_projet);

}
