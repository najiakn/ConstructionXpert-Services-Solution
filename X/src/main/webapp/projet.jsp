<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>najiaaaaaan</title>
</head>
<body>
<%@include file="header.jsp" %>
<table border="1px solid red">
    <tr>
        <td>id </td>
        <td>Nom</td>
        <td>Description</td>
    <td>Date debut</td>
        <td>Date fin</td>
        <td>budget</td>
        <td>Supprimer</td>
        <td>Modifier</td>
    </tr>
    <c:forEach items="${model.projets}" var="p">
        <tr>
            <td>${p.id_projet}</td>
            <td>${p.nom_projet}</td>


        <td>${p.description_projet}</td>
        <td>${p.date_debut}</td>
        <td>${p.date_fin}</td>
        <td>${p.budget}</td>
            <td><a onclick="return confirm('etes vous sure?')" href="supprimer.do?id_projet=${p.id_projet}">Suprrimer</a> </td>
            <td><a href="modifier.do?id_projet=${p.id_projet}">Modifier</a> </td>

        </tr>
    </c:forEach>

</table>
</body>
</html>
