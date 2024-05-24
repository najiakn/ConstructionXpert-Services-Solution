<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h1>page ajouter</h1>
<form action="modifier_projet.do" method="post">
  <label>Id</label>
  <input type="text" name="id_projet" value="${projet.id_projet}">
  <br><br>
  <label>Nom</label>
  <input type="text" name="nom_projet" value="${projet.nom_projet}">
  <br><br>
  <label>Description</label>
  <input type="text" name="description" value="${projet.description_projet}">
  <br><br>
  <label>Date_debut</label>
  <input type="date" name="date_debut" value="${projet.date_debut}">
  <br>
  <br>
  <label>Date_fin</label>
  <input type="date" name="date_fin" value="${projet.date_fin}">
  <br>
  <br>
  <label>budget</label>
  <input type="text" name="budget" value="${projet.budget}">

  <br><br>
  <button type="submit">Modifier</button>
</form>
<a href="${pageContext.request.contextPath}/ajouter.jsp">pr</a>

</body>
</html>
