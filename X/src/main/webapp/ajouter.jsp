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
<form action="ajouter_projet.do" method="post">
    <label>Nom</label>
    <input type="text" name="nom_projet">
<br><br>
    <label>Description</label>
    <input type="text" name="description">
<br><br>
    <label>Date_debut</label>
    <input type="date" name="date_debut">
<br>
<br>
    <label>Date_fin</label>
    <input type="date" name="date_fin">
<br>
    <br>
    <label>budget</label>
    <input type="text" name="budget">

<br><br>
<button type="submit">Ajouter</button>
</form>
<a href="${pageContext.request.contextPath}/ajouter.jsp">pr</a>

</body>
</html>
