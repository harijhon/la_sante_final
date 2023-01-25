<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page import="java.sql.*,java.util.*,java.time.*,connection.*,exception.*" %>
<%@page import="santePackage.*" %>
<%
    //get formulaire
    String  nom = request.getParameter("nom");
    String prenom = request.getParameter("prenom");
    int genre = Integer.parseInt(request.getParameter("genre"));
    //Integer.parseInt(request.getParameter("typeUser"));
    String mail= request.getParameter("mail");
    String mdp = request.getParameter("motDePasse");
    int etat= Integer.parseInt(request.getParameter("etat"));
    //int type = Integer.parseInt(request.getParameter("typeUser"));

    LocalDate date_naissance = LocalDate.parse(request.getParameter("dateNaissance"));
    
    //cree un utilisateur
    Utilisateur us = new Utilisateur(nom, prenom, genre,date_naissance, mail, mdp, etat);
    
    //inscrire l'untilisateur
    out.println(us.inscriptionUtilisateur());
%>