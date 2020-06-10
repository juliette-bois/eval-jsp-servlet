<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Plants</title>
  <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>

<%@ page import="models.Plant" %>
<%@ page import="java.util.List" %>
  <%
  Plant plantItem = (Plant) request.getAttribute("plantItem");
%>

<h1 class="text-center font-bold text-lg mb-6"><%=plantItem.getCommonName()%></h1>

<ul class="list-disc">
  <li>Nom latin: <%=plantItem.getLatinName()%></li>
  <li>Famille: <%=plantItem.getFamily()%></li>
  <li>Description: <%=plantItem.getDescription()%></li>
</ul>

<td>
  <button class="delete-plant m-6 bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-white py-2 px-4 border border-blue-500 hover:border-transparent rounded" data-id="<%=plantItem.getId()%>" type="button">Supprimer</button>
</td>
<td>
  <a href="${pageContext.request.contextPath}/plant/update?id=<%=plantItem.getId()%>">
    <button class="m-6 bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-white py-2 px-4 border border-blue-500 hover:border-transparent rounded" type="button">Modifier</button>
  </a>
</td>
<jsp:include page="/WEB-INF/script/foot.jsp"/>
