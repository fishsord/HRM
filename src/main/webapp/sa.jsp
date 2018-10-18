<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">


</head>
<body>
<c:forEach var="st" items="${students}">
    ${st.address}
</c:forEach>

</body>
</html>