package dao;
import metier.fournisseur;

import java.util.List;

public interface IfournisseurDao {
    public fournisseur ajouter(fournisseur f);
    public List<fournisseur> fournisseurParMc(String mc);
    public List<fournisseur> afficher();
    public fournisseur modifier(fournisseur f);
    public fournisseur supprimer(int idf);


    fournisseur getFournisseur(int idf);

}
