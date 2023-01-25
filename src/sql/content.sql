--genre
INSERT INTO genre (genre) VALUES ('Mme');
INSERT INTO genre (genre) VALUES ('Mr');

--typeUtlisateur
INSERT INTO typeUtilisateur(is_Admin) VALUES (true);
INSERT INTO typeUtilisateur(is_Admin) VALUES (false);

--users
    --simple utilisateur
INSERT INTO utilisateur(nom_utilisateur,prenom,id_genre,date_naissance,mail,mdp,id_typeUtilisateur,etat)  
VALUES ('John','Doe',2,'1999/11/10','Doe.john@gmail.com','John',2,0);

    --administrateur
INSERT INTO utilisateur(nom_utilisateur,prenom,id_genre,date_naissance,mail,mdp,id_typeUtilisateur,etat)  
VALUES ('John','Smith',1,'1996/06/18','john.smith@gmail.com','Smith',1,0);

--type_medicament
INSERT INTO type_medicament(nom_type) VALUES ('Anti-inflammatoires');
INSERT INTO type_medicament(nom_type) VALUES ('Antibiotiques');
INSERT INTO type_medicament(nom_type) VALUES ('Antiviraux');
INSERT INTO type_medicament(nom_type) VALUES ('Dermatologie');
INSERT INTO type_medicament(nom_type) VALUES ('Anti-douleur');
INSERT INTO type_medicament(nom_type) VALUES ('Vasculoprotecteur');
INSERT INTO type_medicament(nom_type) VALUES ('Antitussif');
INSERT INTO type_medicament(nom_type) VALUES ('Antiseptique iodé');
INSERT INTO type_medicament(nom_type)VALUES ('Anticorps');

--administration
INSERT INTO administration(nom_admin) VALUES ('Voie orale');
INSERT INTO administration(nom_admin) VALUES ('Injection');
INSERT INTO administration(nom_admin) VALUES ('Voie rectale');
INSERT INTO administration(nom_admin) VALUES ('Voie cutanée');

--forme
INSERT INTO forme(nom_forme,id_admin) VALUES ('Comprimés',1);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Gellule',1);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Ampoule buvable',1);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Gel',4);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Solution buvable',1);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Solution',4);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Suppositoire',3);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Gommes',1);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Lingettes',4);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Coton',4);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Gommes à mâcher',1);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Baume',4);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Lait',4);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Comprimés à sucer',1);
INSERT INTO forme(nom_forme,id_admin) VALUES ('Spray',1);


--ageConsumeur
INSERT INTO ageConsommateur(age) VALUES ('Bébé');
INSERT INTO ageConsommateur(age) VALUES ('Enfant');
INSERT INTO ageConsommateur(age) VALUES ('Ados');
INSERT INTO ageConsommateur(age) VALUES ('Adulte');
INSERT INTO ageConsommateur(age) VALUES ('Convient à tous les âges');



--symptome
INSERT INTO symptome(nom_symptome) VALUES ('Maux de tête');
INSERT INTO symptome(nom_symptome) VALUES ('Maux de gorge et toux');
INSERT INTO symptome(nom_symptome) VALUES ('Douleurs et fièvres');
INSERT INTO symptome(nom_symptome) VALUES ('Maux de bouche');
INSERT INTO symptome(nom_symptome) VALUES ('Irritations et infections');

--marque
INSERT INTO marque(nom_marque) VALUES ('Doliprane');
INSERT INTO marque(nom_marque) VALUES ('Ginkor');
INSERT INTO marque(nom_marque) VALUES ('Toplexil');
INSERT INTO marque(nom_marque) VALUES ('Betadine');
INSERT INTO marque(nom_marque) VALUES ('Upsa');
INSERT INTO marque(nom_marque) VALUES ('Puressentiel');
INSERT INTO marque(nom_marque) VALUES ('Nutrisanté');
INSERT INTO marque(nom_marque) VALUES ('Mustela');
INSERT INTO marque(nom_marque) VALUES ('Gilbert');
INSERT INTO marque(nom_marque) VALUES ('Oropolis');
INSERT INTO marque(nom_marque) VALUES ('Nicorette');
INSERT INTO marque(nom_marque) VALUES ('Alvadiem');
INSERT INTO marque(nom_marque) VALUES ('Aboca');
INSERT INTO marque(nom_marque) VALUES ('Lysopaïne');
INSERT INTO marque(nom_marque) VALUES ('NHCO');
INSERT INTO marque(nom_marque) VALUES ('Isoxan');
INSERT INTO marque(nom_marque) VALUES ('Dexeryl');






--medicament
INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Doliprane 1000 mg Suppositoires x 8',1,7,5,4,'1000 mg',true,true,'Traitement symptomatique des douleurs d intensité légère à modérée et-ou des états fébriles.','img/Groupe_Pharma/doliprane_suppositoire.png',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Doliprane Paracétamol',1,1,5,4,'1000 mg',true,true,'Sans ordonnance, ce médicament est indiqué en cas de douleur et/ou fièvre : maux de tête, états grippaux, douleurs dentaires, courbatures, règles douloureuses. Il peut également être prescrit en cas d''arthrose.','img/Groupe_Pharma/doliprane.jpeg',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Ginkor Fort',2,2,6,3,'120 mg','false','false','Médicament préconisé dans les troubles de la circulation veineuse des jambes (jambes lourdes, douleurs...) et dans le traitement des symptômes liés à la crise hémorroïdaire.','img/Groupe_Pharma/ginkor_fort.jpeg',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Toplexil Sirop',3,5,7,4,'150 mg','false','false','Ce médicament est indiqué dans le traitement des toux sèches, des toux irritantes chez l''adulte et l''enfant de plus de 2 ans.','img/Groupe_Pharma/toplexil_sirop.jpeg',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES('Betadine Dermique 10%',4,6,8,2,'125mg','false','false','Antiseptique iodé','img/Groupe_Pharma/betadine_dermique_10.png',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES('Aspirine UPSA Vitaminée C 2 x 10',5,1,5,2,'200 mg','true','false','Ce médicament calme la douleur et fait baisser la fièvre. Il soigne maux de tête, états grippaux, douleurs dentaires, courbatures.','img/Groupe_Pharma/aspirine-vitaminee-c-20-comprimes-effervescents.png',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES('UPSA Vitalité Vitamine C 1000 mg x 20',5,1,9,4,'1000 mg','false','false','Complément alimentaire réservé à ladulte pour contrer la fatigue passagère et renforcer les défenses immunitaires. 20 comprimés goût orange.','img/Groupe_Pharma/upsa_vitalite_vitamine-03.png',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('DolipraneTabs 500 mg - 16 Comprimés',1,1,5,5,'150 mg',true,true,'Ce médicament est indiqué en cas de douleur et-ou fièvre telles que maux de tête, états grippaux, douleurs dentaires, courbatures, règles douloureuses de l adulte et l enfant à partir de 27 kg (soit à partir d environ 8 ans)','img/medicaments/dolipranetabs500mg.jpg',false);



INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Puressentiel Respiratoire Gommes Adoucissantes 45g',6,8,2,4,'45 g',true,true,'Ces gommes sont conseillées dans le cadre des préventions des refroidissements, des rhumes et des infections ORL. Elles aident à soulager les gorges irritées et douloureuses.','img/offres/puressentiel.png',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Nutrisanté Vitamine C + Magnésium x 24',7,1,5,4,'24 mg',true,true,'Le magnésium est un élément minéral intervenant dans de nombreuses réactions biochimiques au sein de organisme','img/offres/vitamine_c_magnésium.png',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Mustela Lingettes Nettoyantes à Avocat Bio x 60',8,9,4,1,'60 pieces',false,false,'Ces lingettes à avocat issu de agriculture bio nettoient le visage, le siège et les mains de bébé. Peaux normales.','img/offres/mustela.png',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Gilbert Rectangles de Coton Pads Bio 8 x 10 cm x 180',9,4,4,5,'45 mg',true,true,'Ces rectangles de coton issus de agriculture biologique sont parfaits pour vous démaquiller, pour nettoyer les fesses ou le visage de votre bébé en toute sécurité : 100% biodégradables et fabriqués sans pesticides, sans OGM, sans plomb.','img/offres/pads_bio.png',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Oropolis Spray Gorge 20 ml',10,6,6,2,'20 ml',false,true,'Spray pour la gorge à extrait de propolis.','img/offres/oropolis.png',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Nicorette 2 mg Menthe Fraîche Sans Sucre',11,11,2,3,'2 mg',true,true,'Ce médicament est indiqué dans le traitement de la dépendance tabagique afin de soulager les symptômes du sevrage nicotinique chez les personnes qui souhaitent arrêter de fumer.','img/offres/nicorette.png',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Alvadiem Apivita Baume Pied Sec Pot 50 ml',12,12,1,4,'50 ml',true,true,'Pour protéger ces pieds hypersensibles, les laboratoires Apivita ont combiné les meilleurs ingrédients naturels dans un baume unique en son genre,Apivita Baume Pieds Secs.','img/offres/alvadiem.png',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Aboca GrinTuss Pediatric Toux Sèche et Grasse',13,5,2,2,'45 mg',true,true,'Complexe à base de plantes et huiles essentielles issues de agriculture biologique, il aide à libérer les voies respiratoires irritées et favorise élimination du mucus bronchique. Goût citron sans gluten.','img/offres/grintuss.png',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Lysopaïne Menthe Sans Sucre 2 x 18 g',14,14,2,2,'18 mg',true,true,'Il est indiqué chez adulte et enfant de plus de 6 ans comme traitement local appoint du mal de gorge peu intense, sans fièvre. Goût Menthe.','img/offres/lysopaine.png',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('NHCO Magnésium Amino-Chélaté x 84',15,2,9,5,'84 mg',true,true,'Ce complément alimentaire de chez NHCO est formulé à base de magnésium amino-chélaté aux procédés brevetés. Boite de 84 gélules origine végétales.','img/offres/magnesium.png',true);


INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Isoxan ActiFLASH Booster x 28',16,1,3,4,'28 mg',true,true,'Aide à booster vos capacités physiques et intellectuelles.','img/offres/isoxan.png',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Dexeryl Essentiel Lait Riche 500 ml',17,13,4,5,'500 ml',true,true,'- Ce soin hydratant  sans parfum est indiqué pour soulager les peaux sèches, très sèches à tendance atopique. Il utilise sur le visage et le corps et convient à toute la famille.','img/offres/dexeryl.png',true);




--content_medecine
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Suppositoires x 8',1,2.48,'img/Groupe_Pharma/doliprane_suppositoire.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Comprimés x 8',2,2.18,'img/Groupe_Pharma/doliprane.jpeg');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('120 mg',3,7.05,'img/Groupe_Pharma/ginkor_fort.jpeg');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Sirop 150 ml',4,3.98,'img/Groupe_Pharma/toplexil_sirop.jpeg');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Solution 125 ml',5,2.85,'img/Groupe_Pharma/betadine_dermique_10.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Comprimés effervescents 2 x 10',6,2.95,'img/Groupe_Pharma/aspirine-vitaminee-c-20-comprimes-effervescents.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Comprimés à croquer x 20',7,5.95,'img/Groupe_Pharma/upsa_vitalite_vitamine-03.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Comprimés x 16',8,1.94,'img/medicaments/dolipranetabs500mg.jpg');

-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Gommes 45 g',9,4.92,'img/offres/puressentiel.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Comprimés x 24',10,3.43,'img/offres/vitamine_c_magnésium.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Lingettes x 60',11,2.8,'img/offres/mustela.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Coton x 180',12,3.9,'img/offres/pads_bio.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Spray 20 ml',13,7.12,'img/offres/oropolis.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Gommes à mâcher',14,5.89,'img/offres/nicorette.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Baume 50ml',15,9.42,'img/offres/alvadiem.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Solution buvable',16,8.01,'img/offres/grintuss.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Comprimés à sucer 2 x 18',17,4.49,'img/offres/lysopaine.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Gélules x 84',18,18.10,'img/offres/magnesium.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Comprimés x 28',19,7.68,'img/offres/isoxan.png');
-- INSERT INTO content_medecine(content,id_medecine,price,image) VALUES ('Lait 500 ml',20,11.99,'img/offres/dexeryl.png');

-- insertion produit
INSERT INTO produit(id_medicament,contenance,prix_unitaire)
VALUES (1,'Suppositoires x 8',2.48);

INSERT INTO produit(id_medicament,contenance,prix_unitaire)
VALUES (2,'Comprimés x 8',2.18);

INSERT INTO produit(id_medicament,contenance,prix_unitaire)
VALUES (3,'120 mg',7.05);

INSERT INTO produit(id_medicament,contenance,prix_unitaire)
VALUES (4,'Sirop 150 ml',3.98);

INSERT INTO produit(id_medicament,contenance,prix_unitaire)
VALUES (5,'Solution 125 ml',2.85);

INSERT INTO produit(id_medicament,contenance,prix_unitaire)
VALUES (6,'Comprimés effervescents 2 x 10',2.95);

INSERT INTO produit(id_medicament,contenance,prix_unitaire)
VALUES (7,'Comprimés à croquer x 20',5.95);

INSERT INTO produit(id_medicament,contenance,prix_unitaire)
VALUES (8,'Comprimés x 16',1.94);




-- INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
-- VALUES ('Doliprane 1000 mg Suppositoires x 8',1,7,5,4,'1000 mg',true,true,'Traitement symptomatique des douleurs d intensité légère à modérée et-ou des états fébriles.','img/Groupe_Pharma/doliprane_suppositoire.png',false);

-- INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
-- VALUES ('Doliprane Paracétamol',1,1,5,4,'1000 mg',true,true,'Sans ordonnance, ce médicament est indiqué en cas de douleur et/ou fièvre : maux de tête, états grippaux, douleurs dentaires, courbatures, règles douloureuses. Il peut également être prescrit en cas d''arthrose.','img/Groupe_Pharma/doliprane.jpeg',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Ginkor Fort',2,2,6,3,'120 mg','false','false','Médicament préconisé dans les troubles de la circulation veineuse des jambes (jambes lourdes, douleurs...) et dans le traitement des symptômes liés à la crise hémorroïdaire.','img/Groupe_Pharma/ginkor_fort.jpeg',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('Toplexil Sirop',3,5,7,4,'150 mg','false','false','Ce médicament est indiqué dans le traitement des toux sèches, des toux irritantes chez l''adulte et l''enfant de plus de 2 ans.','img/Groupe_Pharma/toplexil_sirop.jpeg',true);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES('Betadine Dermique 10%',4,6,8,2,'125mg','false','false','Antiseptique iodé','img/Groupe_Pharma/betadine_dermique_10.png',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES('Aspirine UPSA Vitaminée C 2 x 10',5,1,5,2,'200 mg','true','false','Ce médicament calme la douleur et fait baisser la fièvre. Il soigne maux de tête, états grippaux, douleurs dentaires, courbatures.','img/Groupe_Pharma/aspirine-vitaminee-c-20-comprimes-effervescents.png',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES('UPSA Vitalité Vitamine C 1000 mg x 20',5,1,9,4,'1000 mg','false','false','Complément alimentaire réservé à ladulte pour contrer la fatigue passagère et renforcer les défenses immunitaires. 20 comprimés goût orange.','img/Groupe_Pharma/upsa_vitalite_vitamine-03.png',false);

INSERT INTO medicament(nom_medicament, id_marque, id_forme, id_type, id_age, dose, pour_enceinte, pour_allaitement, notice, lien_img, need_ordonnance) 
VALUES ('DolipraneTabs 500 mg - 16 Comprimés',1,1,5,5,'150 mg',true,true,'Ce médicament est indiqué en cas de douleur et-ou fièvre telles que maux de tête, états grippaux, douleurs dentaires, courbatures, règles douloureuses de l adulte et l enfant à partir de 27 kg (soit à partir d environ 8 ans)','img/medicaments/dolipranetabs500mg.jpg',false);


-- Accordeon
--Insertion maladie
INSERT INTO maladie (nom_maladie) VALUES ('Douleur et Fievre');
INSERT INTO maladie (nom_maladie) VALUES ('Maux de gorges et Toux');
INSERT INTO maladie (nom_maladie) VALUES ('Maux de bouche');
INSERT INTO maladie (nom_maladie) VALUES ('Dermatologie');
INSERT INTO maladie (nom_maladie) VALUES ('Sevrage Tabagique');
INSERT INTO maladie (nom_maladie) VALUES ('Muscles et Articulations');
INSERT INTO maladie (nom_maladie) VALUES ('Troubles Veineux');
INSERT INTO maladie (nom_maladie) VALUES ('Premier soins');
INSERT INTO maladie (nom_maladie) VALUES ('Féminité');
INSERT INTO maladie (nom_maladie) VALUES ('Nez et oreilles');
INSERT INTO maladie (nom_maladie) VALUES ('Digestion et nausees');
INSERT INTO maladie (nom_maladie) VALUES ('Forme et vitalite');
INSERT INTO maladie (nom_maladie) VALUES ('Yeux');


--INsertion symptomes
INSERT INTO Symptome (nom_symptome) VALUES ('Etat Grippal');
INSERT INTO Symptome (nom_symptome) VALUES ('Grippe');
INSERT INTO Symptome (nom_symptome) VALUES ('Toux');
INSERT INTO Symptome (nom_symptome) VALUES ('Tous sèche');
INSERT INTO Symptome (nom_symptome) VALUES ('Tous grasse');
INSERT INTO Symptome (nom_symptome) VALUES ('Toux mixte');


INSERT INTO Symptome (nom_symptome) VALUES ('Inflammation des gencives');
INSERT INTO Symptome (nom_symptome) VALUES ('Aphtes');
INSERT INTO Symptome (nom_symptome) VALUES ('Bouton de fièvre');

INSERT INTO Symptome (nom_symptome) VALUES ('Mycose des ongles');
INSERT INTO Symptome (nom_symptome) VALUES ('Mycose de la peau');
INSERT INTO Symptome (nom_symptome) VALUES ('Mycose du cuir chevelu');

INSERT INTO Symptome (nom_symptome) VALUES ('Irritation cutanées');
INSERT INTO Symptome (nom_symptome) VALUES ('Gale');

INSERT INTO Symptome (nom_symptome) VALUES ('Douleur articulaires');
INSERT INTO Symptome (nom_symptome) VALUES ('Douleur musculaires');

INSERT INTO Symptome (nom_symptome) VALUES ('Hémorroides');
INSERT INTO Symptome (nom_symptome) VALUES ('Saignements');
INSERT INTO Symptome (nom_symptome) VALUES ('Jambes lourdes');

INSERT INTO Symptome (nom_symptome) VALUES ('Brulures');

INSERT INTO Symptome (nom_symptome) VALUES ('Troubles urinaires');
INSERT INTO Symptome (nom_symptome) VALUES ('Syndrome prémenstruel');

INSERT INTO Symptome (nom_symptome) VALUES ('Rhume');
INSERT INTO Symptome (nom_symptome) VALUES ('Sinusite');

INSERT INTO Symptome (nom_symptome) VALUES ('Digestion difficile');
INSERT INTO Symptome (nom_symptome) VALUES ('Maux estomac');
INSERT INTO Symptome (nom_symptome) VALUES ('Constipation');
INSERT INTO Symptome (nom_symptome) VALUES ('Diarrhée');
INSERT INTO Symptome (nom_symptome) VALUES ('Nausées');

INSERT INTO Symptome (nom_symptome) VALUES ('Stress');
INSERT INTO Symptome (nom_symptome) VALUES ('Troubles du sommeil');
INSERT INTO Symptome (nom_symptome) VALUES ('Chute des cheveux');
INSERT INTO Symptome (nom_symptome) VALUES ('Surpoids');

INSERT INTO Symptome (nom_symptome) VALUES ('Troubles de la vue');
INSERT INTO Symptome (nom_symptome) VALUES ('Irritations');
INSERT INTO Symptome (nom_symptome) VALUES ('Sécheresse oculaire');
INSERT INTO Symptome (nom_symptome) VALUES ('Allergie yeux');

--Insertion symptome-maladie
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (1,1);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (1,2);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (2,3);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (2,4);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (2,5);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (2,6);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (3,7);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (3,8);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (3,9);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (4,10);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (4,11);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (4,12);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (4,13);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (4,14);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (6,15);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (6,16);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (7,17);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (7,18);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (7,19);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (8,20);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (9,21);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (9,22);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (10,23);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (10,24);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (11,25);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (11,26);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (11,27);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (11,28);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (11,29);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (12,30);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (12,31);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (12,32);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (12,33);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (13,34);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (13,35);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (13,36);
INSERT INTO symptome_maladie (id_maladie, id_symptome) VALUES (13,37);