<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Plants</title>
  <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
<%@ page import="models.Plant" %>
<%
  Plant plantItem = (Plant) request.getAttribute("plantItem");
%>

<h1 class="text-center font-bold text-lg mb-6">Modifier une plante</h1>
<form class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4" method="POST">
  <div class="mb-6">
    <label class="block text-gray-700 text-sm font-bold mb-2" for="common-name">Nom</label>
    <input type="text" id="common-name"
           class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
           name="common-name"
           placeholder="Entrer un nom"
           value="<%=plantItem.getCommonName()%>"
           required>
  </div>
  <div class="mb-6">
    <label class="block text-gray-700 text-sm font-bold mb-2" for="latin-name">Nom latin</label>
    <input type="text" id="latin-name"
           class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
           name="latin-name"
           placeholder="Entrer un nom"
           value="<%=plantItem.getLatinName()%>"
           required>
  </div>
  <div class="mb-6">
    <label class="block text-gray-700 text-sm font-bold mb-2" for="family">Famille</label>
    <input type="text" id="family"
           class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
           name="family"
           placeholder="Entrer un nom"
           value="<%=plantItem.getFamily()%>"
           required>
  </div>
  <div class="mb-6">
    <label class="block text-gray-700 text-sm font-bold mb-2" for="description">Description</label>
    <textarea id="description" name="description"
              class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              rows="4"
              required><%=plantItem.getDescription()%></textarea>
  </div>
  <button class="m-6 bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-white py-2 px-4 border border-blue-500 hover:border-transparent rounded" type="submit">Modifier</button>
</form>
<jsp:include page="/WEB-INF/script/foot.jsp"/>
