package metier;

import java.util.Date;

public class tache {
    // creation les attributs


    private  int id_tache;
    private String description;
    private  Date date_debut;
    private Date date_fin;
    private String status;
    private int id_projet;
    // creation les constructeurs

    public  tache(){};
    public  tache(int id_tache, String description, Date date_debut, Date date_fin , String status , int id_projet){
        this.id_tache=id_tache;
        this.description=description;
        this.date_debut=date_debut;
        this.date_fin=date_fin;
        this.status=status;
        this.id_projet=id_projet;
    }

    // creation Getters et setters

    public  void setId_tache(int id_tache){
        this.id_tache=id_tache;
    }
    public  void  setDescription(String description){
        this.description=description;
    }
    public void  setDate_debut(Date date_debut){
        this.date_debut=date_debut;
    }
    public  void setDate_fin(Date date_fin){
        this.date_fin=date_fin;
    }
    public  void  setStatus(String status){
        this.status=status;
    }
    public  void  setId_projet(int id_projet){
        this.id_projet=id_projet;
    }


    public  int getId_tache(){
        return  id_tache;
    }
    public  String getDescription(){
        return  description;
    }
    public  Date getDate_debut(){
        return  date_debut;
    }
    public  Date getDate_fin(){
        return  date_fin;
    }
    public  String getStatus(){
        return  status;
    }
    public  int getId_projet(){
        return  id_projet;
    }

    @Override
    public  String toString(){
        return  "Tache : "+id_tache+ " + description : "+description +"  Date debut : "+ date_debut +"  Date_fin: "+date_fin+ "  +status "+status+ "  + id_projet "+id_tache +" ";
    }
}
