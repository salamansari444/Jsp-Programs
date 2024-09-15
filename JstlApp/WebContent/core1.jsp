<%@  page isElIgnored="false"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Core 1 page</title>
</head>
<body>
	<c:choose>
	<c:when test="${param.p <0}">
		${param.p} is a negative number
	</c:when>
	<c:when test="${param.p >0}">
		${param.p} is a positive number
	</c:when>
	<c:otherwise>
		${param.p} is a zero
	</c:otherwise>
	</c:choose>
</body>
</html>