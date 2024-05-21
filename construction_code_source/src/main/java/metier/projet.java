package metier;
import java.util.Date;


public class projet {
    // creation les attributs
    private int id_projet;
    private String nom_projet;
    private String description_projet;
    private  Date date_debut;
    private  Date date_fin;
    private float budget;


    // creation les constructeurs
    public projet(){};
    public projet(int id_projet, String nom_projet, String description_projet,Date date_debut, Date date_fin , float budget){
        this.id_projet=id_projet;
        this.nom_projet=nom_projet;
        this.description_projet=description_projet;
        this.date_debut=date_debut;
        this.date_fin=date_fin;
        this.budget=budget;
    }

    // creation Getters et setters

    public  void setId_projet(int id_projet){
        this.id_projet=id_projet;
    }
    public  void setNom_projet(String nom_projet){
        this.nom_projet=nom_projet;
    }
    public void setDescription_projet(String description_projet){
        this.description_projet=description_projet;
    }
    public  void setDate_debut(Date date_debut){
        this.date_debut=date_debut;
    }
    public  void setDate_fin(Date date_fin){
        this.date_fin=date_fin;
    }
    public  void  setBudget(float budget){
        this.budget=budget;
    }
    public  int getId_projet(){
        return id_projet;
    }
    public  String getNom_projet(){
        return  nom_projet;
    }
    public String getDescription_projet(){
        return  description_projet;
    }
    public Date getDate_debut(){
        return  date_debut;
    }
    public  Date getDate_fin(){
        return  date_fin;
    }
    public  float getBudget(){
        return  budget;
    }

    @Override
    public String toString(){
        return  "projet "+ "id :"+id_projet+"  +nom_projet: "+nom_projet+"  +description "+description_projet+"  +date_debut+"+date_debut+"  date_fin"+date_fin+"  budget : "+budget+" ";
    }
}

