package web;

import metier.projet;
import metier.tache;

import java.util.ArrayList;
import java.util.List;

public class TacheModel {
    private List<tache> taches = new ArrayList<tache>();


    public List<tache> getTaches(){
        return  taches;
    }
    public void  setTaches(List<tache> taches){
        this.taches=taches;
    }
}
