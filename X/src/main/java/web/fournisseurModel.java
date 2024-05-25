package web;

import metier.fournisseur;

import java.util.ArrayList;
import java.util.List;

public class fournisseurModel {
    private List<fournisseur> fournisseurs = new ArrayList<fournisseur>();
    public List<fournisseur> getFournisseurs(){
        return  fournisseurs;
    }
    public void  setFournisseurs(List<fournisseur> fournisseurs){
        this.fournisseurs=fournisseurs;
    }
}
