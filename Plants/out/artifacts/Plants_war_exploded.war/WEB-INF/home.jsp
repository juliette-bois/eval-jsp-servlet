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
  <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
  <table class="table-auto">
    <thead>
      <tr>
        <th class="px-4 py-2">Id</th>
        <th class="px-4 py-2">Nom</th>
        <th class="px-4 py-2">Nom latin</th>
        <th class="px-4 py-2">Famille</th>
        <th class="px-4 py-2">Description</th>
      </tr>
    </thead>
    <tbody>
    <%
      for (Plant plant : plantList) {
    %>
    <tr class="bg-gray-100">
      <th class="border px-4 py-2"><%=plant.getId()%></th>
      <td class="border px-4 py-2"><%= plant.getCommonName() %></td>
      <td class="border px-4 py-2"><%= plant.getLatinName() %></td>
      <td class="border px-4 py-2"><%= plant.getFamily() %></td>
      <td class="border px-4 py-2"><%= plant.getDescription() %></td>
      <td>
        <a href="${pageContext.request.contextPath}/plant?id=<%=plant.getId()%>">
          <button type="button" class="m-6 bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-white py-2 px-4 border border-blue-500 hover:border-transparent rounded">Voir</button>
        </a>
      </td>
      <td>
        <button data-id="<%=plant.getId()%>" type="button" class="delete-plant m-6 bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-white py-2 px-4 border border-blue-500 hover:border-transparent rounded">Supprimer</button>
      </td>
      <td>
        <a href="${pageContext.request.contextPath}/plant/update?id=<%=plant.getId()%>">
          <button type="button" class="m-6 bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-white py-2 px-4 border border-blue-500 hover:border-transparent rounded">Modifier</button>
        </a>
      </td>
    </tr>
    <%
      }
    %>
    </tbody>
  </table>
  <a href="${pageContext.request.contextPath}/plant/add">
    <button type="button" class="m-6 bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-white py-2 px-4 border border-blue-500 hover:border-transparent rounded"">Ajouter une plante</button>
  </a>
</body>
</html>
<jsp:include page="/WEB-INF/script/foot.jsp"/>
