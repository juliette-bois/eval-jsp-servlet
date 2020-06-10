<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Plants</title>
  <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
<h1 class="text-center font-bold text-lg mb-6">Ajouter une plante</h1>
<form class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4" method="POST">
  <div class="mb-6">
    <label class="block text-gray-700 text-sm font-bold mb-2" for="common-name">Nom</label>
    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" type="text" id="common-name" name="common-name" placeholder="Entrer un nom" required>
  </div>
  <div class="mb-6">
    <label class="block text-gray-700 text-sm font-bold mb-2" for="latin-name">Nom latin</label>
    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" type="text" id="latin-name" name="latin-name" placeholder="Entrer un nom" required>
  </div>
  <div class="mb-6">
    <label class="block text-gray-700 text-sm font-bold mb-2" for="family">Famille</label>
    <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" type="text" id="family" name="family" placeholder="Entrer un nom" required>
  </div>
  <div class="mb-6">
    <label class="block text-gray-700 text-sm font-bold mb-2" for="description">Description</label>
    <textarea class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="description" name="description" rows="4" required></textarea>
  </div>
  <button class="m-6 bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-white py-2 px-4 border border-blue-500 hover:border-transparent rounded"" type="submit">Enregistrer</button>
</form>
<jsp:include page="/WEB-INF/script/foot.jsp"/>
