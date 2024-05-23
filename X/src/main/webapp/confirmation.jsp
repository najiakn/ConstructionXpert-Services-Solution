<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23/05/2024
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="header.jsp" %>
<h1>page confirmation</h1>
<div>
    <label>Nom :</label>
    <label>${projet.nom_projet}</label>
</div>
<div>
    <label>Description :</label>
    <label>${projet.description_projet}</label>
</div>
<div>
    <label>Date_debut :</label>
    <label>${projet.date_debut}</label>
</div>
<div>
    <label>Date_fin :</label>
    <label>${projet.date_fin}</label>
</div>
<div>
    <label>Budget : </label>
    <label>${projet.budget}</label>
</div>
<div>

</div>
</body>
</html>
