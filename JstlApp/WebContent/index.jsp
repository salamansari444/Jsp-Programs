<%@  
	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%>
<html>
<head>
<title>Output</title>
</head>
<body>
	<c:set var="data" value="10"/>
	<c:out value="${ data}"/>
	<c:set var="name" value="sachin"/><br>
	<c:out value="${ name}"/>
	
	
	
	<c:set  var="username" value="${param.username}"/>
	<h1 style='color:blue; text-aling:center;'> 
	Query String data :: <c:out value="${username }" default="Salam"/>
	</h1>
</body>

</html>
