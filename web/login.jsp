<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page import="java.sql.*,java.util.*,java.time.*" %>
<%@page import="santePackage.*,connection.*,exception.*" %>
<%
    out.println(request.getParameter("mail"));
    out.println(request.getParameter("mdp"));

    Utilisateur user = new Utilisateur(request.getParameter("mail"), request.getParameter("mdp"));
    Utilisateur us = user.loginUtilisateur();

    out.println(us.getNom_utilisateur());
    out.println(us.getNom_utilisateur());
%>