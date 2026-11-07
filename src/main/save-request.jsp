<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Новая заявка</title>
</head>
<body>
<h2>Введите данные заявки</h2>

<%-- Отображение сообщения об ошибке, если есть --%>
<%
    String error = (String) request.getAttribute("error");
    if (error != null) {
%>
    <p style="color: red;"><%= error %></p>
<%
    }
%>

<form action="saveRequest" method="post">
    <p>
        <label for="name">Имя заявителя:</label><br>
        <input type="text" id="name" name="name"
               value="<%= request.getParameter("name") != null ? request.getParameter("name") : "" %>">
    </p>
    <p>
        <label for="email">Email:</label><br>
        <input type="text" id="email" name="email"
               value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>">
    </p>
    <p>
        <label for="description">Описание заявки:</label><br>
        <textarea id="description" name="description" rows="4" cols="40"><%=
            request.getParameter("description") != null ? request.getParameter("description") : ""
        %></textarea>
    </p>
    <p>
        <input type="submit" value="Отправить заявку">
    </p>
</form>
</body>
</html>