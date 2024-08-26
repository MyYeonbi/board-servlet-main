
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <%@ include file="header.jsp"%>
 <h1>SCOPE CHECK</h1>

<h2>Request 스코프</h2>
<p>${request != null ? request : "없는데요"}</p>
 <p><%= request.getAttribute("request")%></p>


<h2>Session 스코프</h2>
 <p>${session != null ? session : "없는데요"}</p>
<p>${session}</p>


<h2>Applicaiton 스코프</h2>
 <p>${application != null ? application : "없는데요"}</p>
<p>${application}</p>


<h2>Page 스코프</h2>
<%
    pageContext.setAttribute("page", "Page 스코프에 저장한 데이터");
%>
<p>${page}</p>
</body>
</html>
