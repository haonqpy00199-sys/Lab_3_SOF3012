<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Bài 3 - Video Yêu Thích</title>
    <style>
        body { font-family: sans-serif; padding: 20px; }
        .box { border: 1px solid #ddd; padding: 20px; border-radius: 8px; width: 50%; }
        h2 { color: navy; }
        ul { list-style-type: none; padding: 0; }
        li { background: #f9f9f9; margin: 5px 0; padding: 10px; border-bottom: 1px solid #eee; }
        .date { font-size: 0.8em; color: gray; float: right; }
    </style>
</head>
<body>
<div class="box">
    <h2>Video yêu thích của: ${user.fullname}</h2>
    <p>Email: ${user.email}</p>
    <hr>

    <h3>Danh sách Video đã Like:</h3>
    <ul>
        <c:forEach var="fav" items="${user.favorites}">
            <li>
                <strong>📺 ${fav.video.title}</strong>

                <span class="date">Ngày like: ${fav.likeDate}</span>
            </li>
        </c:forEach>
    </ul>
</div>
</body>
</html>