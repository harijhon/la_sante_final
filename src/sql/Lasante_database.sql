create table administration(
    id_admin serial primary key,
    nom_admin varchar(50)
);

create table marque(
    id_marque serial primary key,
    nom_marque varchar(50)
);

create table type_medicament(
    id_type serial primary key,
    nom_type varchar(50)
);

create table forme(
    id_forme serial primary key,
    nom_forme varchar(50),
    id_admin int,
    foreign key (id_admin) references administration(id_admin)
);

-- tsy mbola atao
create table maladie(
    id_maladie serial primary key,
    nom_maladie varchar(50)
);

-- tsy mbola atao
create table symptome(
    id_symptome serial primary key,
    nom_symptome varchar(50)
);


create table ageConsommateur(
    id_age serial primary key,
    age varchar(25)
);

create table medicament(
    id_medicament serial primary key,
    nom_medicament varchar(80),
    id_marque int,
    id_forme int,
    id_type int,
    id_age int,
    dose varchar(80),
    pour_enceinte boolean,
    pour_allaitement boolean,
    notice varchar(400),
    lien_img varchar(250),
    need_ordonnance boolean,
    foreign key (id_marque) references marque(id_marque),
    foreign key (id_forme) references forme(id_forme),
    foreign key (id_type) references type_medicament(id_type),
    foreign key(id_age) references ageConsommateur
);

-- tsy mbola atao
create table maladie_medicament(
    id_maladie int,
    id_medicament int,
    foreign key (id_maladie) references maladie (id_maladie),
    foreign key (id_medicament) references medicament (id_medicament)
);

-- tsy mbola atao
create table symptome_medicament(
    id_symptome int,
    id_medicament int,
    foreign key(id_symptome) references symptome(id_symptome),
    foreign key (id_medicament) references medicament(id_medicament)
);

-- tsy mbola atao
create table symptome_maladie(
    id_maladie int,
    id_symptome int,
    foreign key (id_maladie) references maladie (id_maladie),
    foreign key (id_symptome) references symptome(id_symptome)
);

-- vue pour les donnees des medicament
create view medicament_data as (
    select nom_medicament,nom_forme,nom_type,nom_marque,
    medicament.id_medicament,forme.id_forme,type_medicament.id_type,marque.id_marque,
    nom_admin,administration.id_admin,
    notice,pour_allaitement,pour_enceinte,lien_img,dose
    from medicament
    join forme on medicament.id_forme = forme.id_forme
    join type_medicament on medicament.id_type=type_medicament.id_type
    join marque on medicament.id_marque=marque.id_marque
    join administration on forme.id_admin=administration.id_admin
);


-- Table et vue pour la gestion des medicaments
create table produit(
    id_produit serial primary key,
    id_medicament int,
    contenance varchar(250),
    prix_unitaire float,
    foreign key (id_medicament) references medicament(id_medicament)
);

create table mouvement_produit(
    id_produit int,
    date_mouvement date,
    date_peremption date,
    is_entry boolean,
    prix_unitaire int,
    quantite_produit int,
    foreign key (id_produit) references produit(id_produit)
);

create table stock(
    id_produit int,
    date_modif date,
    quantite_en_stock int,
    foreign key (id_produit) references produit(id_produit)
);

-- view pour la gestion du stock des produits
create view stock_par_produit as (
    select * from stock where date_modif in (
        select max(date_modif) from stock group by id_produit 
    )
);

--genre
CREATE TABLE genre (
    id_genre serial PRIMARY KEY,
    genre varchar(80) NOT NULL

);

--typeUtilisateur
CREATE TABLE typeUtilisateur (
	id_typeUtilisateur serial PRIMARY KEY,
	is_Admin boolean NOT NULL
);

--utilisateur
create table utilisateur(
    id_utilisateur serial primary key,
    nom_utilisateur varchar(250),
    prenom varchar(250),
    id_genre int,
    date_naissance DATE,
	mail varchar(100) UNIQUE,
	mdp varchar(100),
	id_typeUtilisateur int NOT NULL,
	etat int NOT NULL,
    foreign key (id_genre) references genre(id_genre),
    foreign key (id_typeUtilisateur) references typeUtilisateur(id_typeUtilisateur)
);

create table etat(
    id_etat serial primary key,
    type_etat varchar(150)
);

-- Table et vue pour l'achat d'un produit
create table panierMere(
    id_panierMere serial primary key,
    id_utilisateur int,
    date_creation DATE,
    id_etat int,
    foreign key (id_utilisateur) references utilisateur(id_utilisateur),
    foreign key (id_etat) references etat(id_etat)
      
);

create table panierFille(
    id_panierFille serial primary key,
    id_panierMere int,
    id_produit int,
    quantite_produit int,
    prix_unitaire float,
    foreign key (id_panierMere) references panierMere(id_panierMere),
    foreign key (id_produit) references produit(id_produit)
);

create table typeLivraison(
    id_typeLivraison serial primary key,
    type_livraison varchar(150)
);

create table pays(
    id_pays serial PRIMARY KEY,
    pays varchar(250)
);

create table choixLivraison(
    id_choixLivraison serial PRIMARY KEY,
	id_panierMere int,
	id_pays int,
	date_livraison DATE,
	id_typeLivraison int,
	FOREIGN KEY (id_panierMere) REFERENCES panierMere(id_panierMere),
	FOREIGN KEY (id_pays) REFERENCES pays(id_pays),
	FOREIGN KEY (id_typeLivraison) REFERENCES typeLivraison(id_typeLivraison)
);

CREATE TABLE livraison (
	id_choixLivraison int,
	lieu varchar(250),
	cout_livraison float,
    FOREIGN KEY (id_choixLivraison) REFERENCES choixLivraison(id_choixLivraison)

);

create view product_data as (
    SELECT 
    produit.id_produit,
    medicament.nom_medicament,
    medicament.id_medicament,
    forme.nom_forme,
    forme.id_forme,
    type_medicament.nom_type,
    type_medicament.id_type,
    marque.nom_marque,
    marque.id_marque,
    administration.id_admin,
    administration.nom_admin,
    produit.prix_unitaire,
    produit.contenance,
    medicament.notice,
    medicament.pour_allaitement,
    medicament.pour_enceinte,
    medicament.lien_img,
    medicament.dose,
    medicament.need_ordonnance,
    medicament.id_age,
    ageConsommateur.age
   FROM produit
     JOIN medicament ON produit.id_medicament = medicament.id_medicament
     JOIN forme ON medicament.id_forme = forme.id_forme
     JOIN type_medicament ON medicament.id_type = type_medicament.id_type
     JOIN marque ON medicament.id_marque = marque.id_marque
     JOIN administration ON forme.id_admin = administration.id_admin
     JOIN ageConsommateur ON medicament.id_age= ageConsommateur.id_age);

-- current price of one product
create view current_price as (
    select id_produit,prix_unitaire 
    from mouvement_produit 
    where date_mouvement in  (
        select  MAX(date_mouvement) 
        from mouvement_produit 
        where is_entry is true group by id_produit 
    )
);

create view panierMere_info as select
panierMere.id_panierMere,
panierMere.id_utilisateur,
utilisateur.prenom,
panierMere.date_creation,
panierMere.id_etat,
etat.type_etat
from panierMere join utilisateur on panierMere.id_utilisateur= utilisateur.id_utilisateur 
join etat on panierMere.id_etat= etat.id_etat;

create view panierFille_info as select
panierFille.id_panierFille,
panierFille.id_panierMere,
panierMere_info.id_utilisateur,
panierMere_info.prenom,
panierMere_info.date_creation,
panierMere_info.id_etat,
panierMere_info.type_etat,
panierFille.id_produit,
product_data.id_medicament,
panierFille.quantite_produit,
panierFille.prix_unitaire
from panierFille join panierMere_info on panierFille.id_panierMere= panierMere_info.id_panierMere
join product_data on panierFille.id_produit= product_data.id_produit;

create view choixLivraison_info as select 
choixLivraison.id_choixLivraison,
choixLivraison.id_panierMere,
panierMere_info.id_utilisateur,
choixLivraison.id_pays,
pays.pays,
choixLivraison.date_livraison,
choixLivraison.id_typeLivraison,
typeLivraison.type_livraison
from choixLivraison join pays on choixLivraison.id_pays= pays.id_pays
join panierMere_info on choixLivraison.id_panierMere= panierMere_info.id_panierMere
join typeLivraison on typeLivraison.id_typeLivraison= typeLivraison.id_typeLivraison;


create view livraison_info as select
livraison.id_choixLivraison,
choixLivraison_info.pays,
choixLivraison_info.date_livraison,
choixLivraison_info.type_livraison,
livraison.lieu,


create table mouvement_produit(
    id_produit int,
    date_mouvement date,
    date_peremption date,
    is_entry boolean,
    prix_unitaire int,
    quantite_produit int,
    foreign key (id_produit) references produit(id_produit)
);

create table stock(
    id_produit int,
    date_modif date,
    quantite_en_stock int,
    foreign key (id_produit) references produit(id_produit)
);

-- view pour la gestion du stock des produits
create view stock_par_produit as (
    select * from stock where date_modif in (
        select max(date_modif) from stock group by id_produit 
    )
);

--genre
CREATE TABLE genre (
    id_genre serial PRIMARY KEY,
    genre varchar(80) NOT NULL

);

--typeUtilisateur
CREATE TABLE typeUtilisateur (
	id_typeUtilisateur serial PRIMARY KEY,
	is_Admin boolean NOT NULL
);

--utilisateur
create table utilisateur(
    id_utilisateur serial primary key,
    nom_utilisateur varchar(250),
    prenom varchar(250),
    id_genre int,
    date_naissance DATE,
	mail varchar(100) UNIQUE,
	mdp varchar(100),
	id_typeUtilisateur int NOT NULL,
	etat int NOT NULL,
    foreign key (id_genre) references genre(id_genre),
    foreign key (id_typeUtilisateur) references typeUtilisateur(id_typeUtilisateur)
);

create table etat(
    id_etat serial primary key,
    type_etat varchar(150)
);

-- Table et vue pour l'achat d'un produit
create table panierMere(
    id_panierMere serial primary key,
    id_utilisateur int,
    date_creation DATE,
    id_etat int,
    foreign key (id_utilisateur) references utilisateur(id_utilisateur),
    foreign key (id_etat) references etat(id_etat)
      
);

create table panierFille(
    id_panierFille serial primary key,
    id_panierMere int,
    id_produit int,
    quantite_produit int,
    prix_unitaire float,
    foreign key (id_panierMere) references panierMere(id_panierMere),
    foreign key (id_produit) references produit(id_produit)
);

create table typeLivraison(
    id_typeLivraison serial primary key,
    type_livraison varchar(150)
);

create table pays(
    id_pays serial PRIMARY KEY,
    pays varchar(250)
);

create table choixLivraison(
    id_choixLivraison serial PRIMARY KEY,
	id_panierMere int,
	id_pays int,
	date_livraison DATE,
	id_typeLivraison int,
	FOREIGN KEY (id_panierMere) REFERENCES panierMere(id_panierMere),
	FOREIGN KEY (id_pays) REFERENCES pays(id_pays),
	FOREIGN KEY (id_typeLivraison) REFERENCES typeLivraison(id_typeLivraison)
);

CREATE TABLE livraison (
	id_choixLivraison int,
	lieu varchar(250),
	cout_livraison float,
    FOREIGN KEY (id_choixLivraison) REFERENCES choixLivraison(id_choixLivraison)

);

create view product_data as (
    SELECT 
    produit.id_produit,
    medicament.nom_medicament,
    medicament.id_medicament,
    forme.nom_forme,
    forme.id_forme,
    type_medicament.nom_type,
    type_medicament.id_type,
    marque.nom_marque,
    marque.id_marque,
    administration.id_admin,
    administration.nom_admin,
    produit.prix_unitaire,
    produit.contenance,
    medicament.notice,
    medicament.pour_allaitement,
    medicament.pour_enceinte,
    medicament.lien_img,
    medicament.dose,
    medicament.need_ordonnance,
    medicament.age
   FROM produit
     JOIN medicament ON produit.id_medicament = medicament.id_medicament
     JOIN forme ON medicament.id_forme = forme.id_forme
     JOIN type_medicament ON medicament.id_type = type_medicament.id_type
     JOIN marque ON medicament.id_marque = marque.id_marque
     JOIN administration ON forme.id_admin = administration.id_admin);

-- current price of one product
create view current_price as (
    select id_produit,prix_unitaire 
    from mouvement_produit 
    where date_mouvement in  (
        select  MAX(date_mouvement) 
        from mouvement_produit 
        where is_entry is true group by id_produit 
    )
);

create view panierMere_info as select
panierMere.id_panierMere,
panierMere.id_utilisateur,
utilisateur.prenom,
panierMere.date_creation,
panierMere.id_etat,
etat.type_etat
from panierMere join utilisateur on panierMere.id_utilisateur= utilisateur.id_utilisateur 
join etat on panierMere.id_etat= etat.id_etat;

create view panierFille_info as select
panierFille.id_panierFille,
panierFille.id_panierMere,
panierMere_info.id_utilisateur,
panierMere_info.prenom,
panierMere_info.date_creation,
panierMere_info.id_etat,
panierMere_info.type_etat,
panierFille.id_produit,
product_data.id_medicament,
panierFille.quantite_produit,
panierFille.prix_unitaire
from panierFille join panierMere_info on panierFille.id_panierMere= panierMere_info.id_panierMere
join product_data on panierFille.id_produit= product_data.id_produit;

create view choixLivraison_info as select 
choixLivraison.id_choixLivraison,
choixLivraison.id_panierMere,
panierMere_info.id_utilisateur,
choixLivraison.id_pays,
pays.pays,
choixLivraison.date_livraison,
choixLivraison.id_typeLivraison,
typeLivraison.type_livraison
from choixLivraison join pays on choixLivraison.id_pays= pays.id_pays
join panierMere_info on choixLivraison.id_panierMere= panierMere_info.id_panierMere
join typeLivraison on typeLivraison.id_typeLivraison= typeLivraison.id_typeLivraison;


create view livraison_info as select
livraison.id_choixLivraison,
choixLivraison_info.pays,
choixLivraison_info.date_livraison,
choixLivraison_info.type_livraison,
livraison.lieu,
livraison.cout_livraison
from livraison join choixLivraison_info on livraison.id_choixLivraison= choixLivraison_info.id_choixLivraison;
