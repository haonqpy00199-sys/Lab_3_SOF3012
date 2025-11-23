<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Bài 4 - Tổng hợp Like</title>
    <style>
        body { font-family: sans-serif; padding: 20px; }
        h2 { color: darkred; }
        table { width: 80%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #f2f2f2; color: #333; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        tr:hover { background-color: #f1f1f1; }
    </style>
</head>
<body>
<h2>📊 TỔNG HỢP LƯỢT THÍCH VIDEO</h2>

<table>
    <thead>
    <tr>
        <th>Tên Video</th>
        <th>Người Thích</th>
        <th>Email</th>
        <th>Ngày Thích</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="fav" items="${items}">
        <tr>
            <td>🎬 ${fav.video.title}</td>

            <td>👤 ${fav.user.fullname}</td>

            <td>📧 ${fav.user.email}</td>

            <td>📅 ${fav.likeDate}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>