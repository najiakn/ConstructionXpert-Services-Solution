package web;

import metier.projet;

import java.util.ArrayList;
import java.util.List;

public class ProjetModel {
    private List<projet> projets = new ArrayList<projet>();
    public List<projet> getProjets(){
        return  projets;
    }
    public void  setProjets(List<projet> projets){
        this.projets=projets;
    }
}
