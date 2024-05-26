package web;

import metier.ressource;

import java.util.ArrayList;
import java.util.List;

public class RessourceModel {
    private List<ressource> ressources = new ArrayList<ressource>();


    public List<ressource> getRessources(){
        return  ressources;
    }
    public void  setRessources(List<ressource> ressources){
        this.ressources=ressources;
    }
}
