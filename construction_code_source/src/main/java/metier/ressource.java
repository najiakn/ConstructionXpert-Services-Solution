package metier;

public class ressource {
    // creation les attributs

    private int idr;
    private String nom;
    private String type;
    private  String quantite;
    private  int id_fr;
    private  int id_tache;

    // creation les constructeurs

    public ressource(){};
    public ressource(int idr, String nom, String type , String quantite, int id_fr, int id_tache){
        this.idr=idr;
        this.nom=nom;
        this.type=type;
        this.quantite=quantite;
        this.id_fr=id_fr;
        this.id_tache=id_tache;
    }

    // creation Getters et setters

    public  void  setIdr(int idr){
        this.idr=idr;

    }
    public void setNom(String nom){
        this.nom=nom;
    }
    public  void setType(String type){
        this.type=type;
    }
    public  void  setQuantite(String quantite){
        this.quantite=quantite;
    }
    public  void setId_tache(int id_tache){
        this.id_tache=id_tache;
    }
    public  void  setId_fr(int id_fr) {
        this.id_fr = id_fr;
    }

    public int getIdr(){
        return  idr;
    }
    public  String getNom(){
        return  nom;
    }
    public  String getType(){
        return type;
    }
    public  String getQuantite(){
        return quantite;
    }
    public int getId_tache(){
        return  id_tache;
    }
    public  int getId_fr(){
        return  id_fr;
    }

    @Override
    public String toString(){
        return " ressource :"+idr+ " | nom: "+nom+"  |quantite : "+quantite+"   |type: "+type+"  |id_fournisseur : "+id_fr+ "  |id_tache : "+id_tache+" ";
    }
}
