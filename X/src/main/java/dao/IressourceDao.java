package dao;

import metier.ressource;


import java.util.List;

public interface IressourceDao {
    public ressource ajouter(ressource r);
    public List<ressource> afficher();
    public ressource modifier(ressource r);
    public ressource supprimer(int idr);


    ressource getRessources(int idr);
}
