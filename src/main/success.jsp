<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Заявка сохранена</title>
</head>
<body>
<h2 style="color: green;">Заявка успешно сохранена</h2>

<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th align="left">Имя заявителя</th>
        <td>${name}</td>
    </tr>
    <tr>
        <th align="left">Email</th>
        <td>${email}</td>
    </tr>
    <tr>
        <th align="left">Описание заявки</th>
        <td>${description}</td>
    </tr>
</table>

<p><a href="save-request.jsp">Создать ещё одну заявку</a></p>
</body>
</html>