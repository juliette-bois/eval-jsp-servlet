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

<h1><%=plantItem.getCommonName()%></h1>

<ul>
  <li>Nom latin: <%=plantItem.getLatinName()%></li>
  <li>Famille: <%=plantItem.getFamily()%></li>
  <li>Description: <%=plantItem.getDescription()%></li>
</ul>

<td>
  <button data-id="<%=plantItem.getId()%>" type="button">Supprimer</button>
</td>
<td>
  <a href="${pageContext.request.contextPath}/plant/update?id=<%=plantItem.getId()%>">
    <button type="button">Modifier</button>
  </a>
</td>
<jsp:include page="/WEB-INF/script/foot.jsp"/>
