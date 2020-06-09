<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<%@ page import="models.Plant" %>
<%
  Plant plantItem = (Plant) request.getAttribute("plantItem");
%>

<h1>Modifier une plante</h1>
<form method="POST">
  <div>
    <label for="common-name">Nom</label>
    <input type="text" id="common-name"
           name="common-name"
           placeholder="Entrer un nom"
           value="<%=plantItem.getCommonName()%>"
           required>
  </div>
  <div>
    <label for="latin-name">Nom latin</label>
    <input type="text" id="latin-name"
           name="latin-name"
           placeholder="Entrer un nom"
           value="<%=plantItem.getLatinName()%>"
           required>
  </div>
  <div>
    <label for="family">Famille</label>
    <input type="text" id="family"
           name="family"
           placeholder="Entrer un nom"
           value="<%=plantItem.getFamily()%>"
           required>
  </div>
  <div>
    <label for="description">Description</label>
    <textarea id="description" name="description"
              rows="4"
              required><%=plantItem.getDescription()%></textarea>
  </div>
  <button type="submit">Modifier</button>
</form>
<jsp:include page="/WEB-INF/script/foot.jsp"/>
