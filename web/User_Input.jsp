<%--
  Created by IntelliJ IDEA.
  User: Kishan Verma
  Date: 29-11-2019
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <form action="User_Input.jsp" method="get">
        <input type="text" name="user" title="Enter Name"/>
    </form>

    <h1>
        Your input Is:
        <%= request.getParameter("user") %>
    </h1>
</head>
<body>

</body>
</html>
