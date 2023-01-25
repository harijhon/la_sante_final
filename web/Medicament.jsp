<%-- 
    Document   : Medicament
    Created on : 25 janv. 2023, 02:37:25
    Author     : itu
--%>



<%@page import="santePackage.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="navbar.*,java.sql.*" %>
<%
    Category[] dataCategory = null;
    Produit[] dataProduit = null;
    try {
        dataCategory = Category.getAllDatasForCategories();
        dataProduit = Produit.selectProduit();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>LaSante</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="styles/styles.css">  
        <link rel="stylesheet" href="styles/index.css">  
    </head>
    <body>
        <div class="header">
            <div class="header__entete">
                <div class="header__entete-left">
                    <div>Connectez-vous</div>
                    <div>Qui somme-nous</div>
                </div>
                <div class="header__entete-right">
                    <div>Marque</div>
                    <div>Conseil</div>
                    <a href="#" id="monCompte">Mon compte</a>
                    <div id="popup" class="bg-transparent">
                        <div class="bg-popup">

                            <a id="close_popup" href="#"><img src="img/sans bg/remove.png" alt="" srcset=""></a>
                            <br>
                            <ul>
                                <li><a href="#" id="login__nosMedicament">connectez-vous</a></li>
                                <li><a href="#" id="signUp__nosMedicament">inscription</a></li>
                            </ul>
                            <br>    
                            <div class="login__popup">
                                <form action="login.jsp">
                                    <input type="text" name="mail" placeholder="address here">
                                    <br><br>
                                    <input type="text" name="mdp" placeholder="password here">
                                    <br><br>
                                    <input type="submit" value="login">
                                </form>
                            </div>
                            <br><br><br>
                            <div class="inscription__popup">
                                <form action="inscription.jsp">
                                    <input type="text" name="nom" placeholder="name here">
                                    <br><br>
                                    <input type="text" name="prenom" placeholder="first name here">
                                    <br><br>
                                    <input type="date" name="dateNaissance" placeholder="date of birth here">
                                    <br><br>
                                    <label for="genre"><strong>gender</strong></label>
                                    <br>
                                    <label for="male">Mme</label><input type="radio" name="genre" value="1">
                                    <label for="female">Mr</label><input type="radio" name="genre" value="2">
                                    <br><br>
                                    <input type="text" name="mail" placeholder="address here">
                                    <br><br>
                                    <input type="password" name="motDePasse" placeholder="password here">
                                    <br><br>
                                    <input type="hidden" name="etat" value="1">
                                    <br><br>
                                    <input type="submit" value="sign up">
                                </form>
                            </div>
                            <!-- <button >boutton</button> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar bg-light">
            <div class="container">
                <a class="navbar-brand" href="index.html"><img src="img/lasante.png" alt="" width="500px"></a>
                <form class="d-flex srch_bar" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="float: right;">
                    <button class="btn btn-outline-success" type="submit"><img src="img/icons/magnifying-glass.png" id="srch_button"></button>
                    <button type="button" class="btn btn-success panier"><span><img src="img/icons/shopping_cart_black_24dp.svg" id="shop_cart"></span>Mon Panier</button>
                </form>
            </div>
        </nav>

        <nav class="navbar bg-light justify-content-center">
            <div class="container">
                <nav class="nav third_navbar">
                    <a class="nav-link active" aria-current="page" href="categorie.html">Médicaments</a>
                    <a class="nav-link" href="#">Parapharmacie</a>
                    <a class="nav-link" href="#">Bien-être<br>Nutrition</a>
                    <a class="nav-link" href="#">Beauté<br>Soins</a>
                    <a class="nav-link" href="#">Hygiène<br>Premiers soins</a>
                    <a class="nav-link" href="#">Bébé<br>Maman</a>
                    <a class="nav-link" href="#">Bio<br>Médecines naturelles</a>
                    <a class="nav-link" href="#">Matériel Médical</a>
                    <a class="nav-link" href="#">Vétérinaire</a>
                    <div class="exeption">
                        <a class="nav-link promo" href="#">Promotions</a>
                    </div>
                </nav>
            </div>  
        </nav>
        <nav class="navbar navbar-dark livraison" style="background-color: #00B482;">
            <div class="container-fluid justify-content-center">
                <a id="delivery"  href="#">
                    -10% de recuction avec le code promo 1234
                </a>
            </div>
        </nav>

        <!-- <div class="col-md-10" style=" margin-left: 280px; width: 1000px; height: 1000px;"> -->
        <div class="d-flex flex-row mb-3" style="float: left; margin-left: 500px; margin-top: 50px;">
            <ul id="filter_search">
                <li>Trier par</li>
                <li>
                    <div class="dropdown">
                        <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                            Popularité
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="#">Popularité</a></li>
                            <li><a class="dropdown-item" href="#">Nouveautés</a></li>
                            <li><a class="dropdown-item" href="#">Les moins cher</a></li>
                            <li><a class="dropdown-item" href="#">De A à Z</a></li>
                        </ul>
                    </div>
                </li>
                <li class="aff_2">Afficher </li>
                <li>
                    <div class="dropdown">
                        <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                            20 produits
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="#">20 produits</a></li>
                            <li><a class="dropdown-item" href="#">40 produits</a></li>
                        </ul>
                </li>
            </ul>
        </div>


        <div class="cards-wrapper" style="width: 1000px; float: right; margin-top: 20px; margin-right: 50px; position: relative;">
            <%  int countProduct=0;
                for (Produit produit : dataProduit) { %>
                    <div class="card">
                        <div class="image-wrapper">
                            <img src="<%=produit.getMedicament().getLien_img() %>" class="card-img-top" alt="...">
                        </div>
                        <div class="card-body" style="background-color: #ffffff;">
                            <p class="card-text"><%=produit.getMedicament().getNomMedicament() %><br> <span id="modele_conseil"><%out.println(produit.getMedicament().getForme().getTypeForme() + " ") ;%></span></p>
                        </div>
                        <div class="card-footer" id="commande" style="background-color: #00B482;">
                            <p class="card-text"> <%=produit.getPrix_unitaire() %> </p>
                        </div>
                    </div>
                    
                    <%countProduct++;
                    if(countProduct%4==0){ %>
                        </div>
                        <div class="cards-wrapper" style="width: 1000px; float: right; margin-top: 20px; margin-right: 50px; position: relative;"> 
                    <% } 
                }%>
            <!-- test -->
        </div>


        <!-- accordion -->
        <div class="left" style="position:absolute ; margin-left: 20px; float: left; height:1000px; width: 250px; margin-top: 50px;">
            <h1 style="font-size: 20px;"> Categories</h1>
            <% for (Category each : dataCategory) {%>
            <div class="accordion" id="accordionExample" style="width:0px; border:none;">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" style="width: 250px; height: 40px; background-color: #ffffff; border: 0px;" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <%=each.getTitle()%>
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse show" style="width: 50vw; padding: -20px;" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <% for (int i = 0; i < each.getOutPutId().length; i++) {%>
                            <a class="dropdown-item" href="Medicament.jsp?idSymptome=<%=each.getOutPutId()[i]%>"><%=each.getOutPutTxt()[i]%></a>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
            <% }%>
        </div>








        <script src="js/nosMedicament.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
