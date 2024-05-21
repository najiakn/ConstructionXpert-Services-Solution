create table projet (id_projet serial primary key , nom_projet varchar(30),description varchar(30),date_debut date , date_fin date,budget float);
create table tache(id_tache serial primary key ,description varchar(30),date_debut date , date_fin date, status varchar(30), id_projet int references projet(id_projet), check (status in ('a faire','en cours','terminer')) )
create table ressource(idr  serial primary key, nom varchar(30),type varchar(30),quantite varchar(30),id_tache int references tache(id_tache), idf int references fournisseur(idf));
create table fournisseur(idf serial primary key , nom varchar(30), mail varchar(30), tele varchar(30))
