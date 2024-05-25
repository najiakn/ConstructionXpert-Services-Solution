package metier;

public class fournisseur {
    // creation les attributs

    private int idf;
    private String nom;
    private String mail;
    private String telephone;

    // creation les constructeurs
    public fournisseur(){};
    public  fournisseur(int idf , String nom , String mail, String telephone){
        this.idf=idf;
        this.nom=nom;
        this.mail=mail;
        this.telephone=telephone;
    }

    public  fournisseur( String nom , String mail, String telephone){

        this.nom=nom;
        this.mail=mail;
        this.telephone=telephone;
    }

    // creation Getters et setters

    public void  setIdf(int idf){
        this.idf=idf;
    }
    public void  setNom(String nom){
        this.nom=nom;
    }
    public  void  setMail(String mail){
        this.mail=mail;
    }
    public  void  setTelephone(String telephone){
        this.telephone=telephone;
    }

    public int  getIdf(){
        return idf;
    }
    public  String getNom(){
        return  nom;
    }
    public  String getMail(){
        return  mail;
    }
    public  String getTelephone(){
        return  telephone;
    }

    @Override
    public  String toString(){
        return  " fournisseur : "+idf +" nom  : "+nom + " mail : "+mail + " telephoe "+ telephone + " ";
    }
}
