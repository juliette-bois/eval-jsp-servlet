<%@ page import="models.Plant" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  List<Plant> plantList = (List<Plant>) request.getAttribute("plantList");
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
  <table>
    <thead>
      <tr>
        <th>Id</th>
        <th>Nom</th>
        <th>Nom latin</th>
        <th>Famille</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
    <%
      for (Plant plant : plantList) {
    %>
    <tr>
      <th><%=plant.getId()%></th>
      <td><%= plant.getCommonName() %></td>
      <td><%= plant.getLatinName() %></td>
      <td><%= plant.getFamily() %></td>
      <td><%= plant.getDescription() %></td>
      <td>
        <a href="${pageContext.request.contextPath}/plant?id=<%=plant.getId()%>">
          <button type="button">Voir</button>
        </a>
      </td>
      <td>
        <button data-id="<%=plant.getId()%>" type="button">Supprimer</button>
      </td>
      <td>
        <a href="${pageContext.request.contextPath}/plant/update?id=<%=plant.getId()%>">
          <button type="button">Modifier</button>
        </a>
      </td>
    </tr>
    <%
      }
    %>
    </tbody>
  </table>
  <a href="${pageContext.request.contextPath}/plant/add">
    <button type="button">Ajouter une plante</button>
  </a>
</body>
</html>
<jsp:include page="/WEB-INF/script/foot.jsp"/>
