package dao;
import metier.projet;

import java.util.List;

public interface projetDao {
    public projet ajouter(projet p);
    public List<projet> projetparMc(String mc);
    public projet afficher(int id);
    public projet modifier(projet p);
    public projet supprimer(int id);


}
