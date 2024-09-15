<%@ page isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Output of Core 3</title>
</head>
<body>
<h1> 
<c:url value="core4.jsp" var='x'>
<c:param name="JAVA" value="Hyder"/>
<c:param name="JEE" value="Nitin"/>
<c:param name="JDBC" value="Naveen"/>
</c:url>
</h1>
<h1>THE MODIFIED URL IS ${x}</h1>
	<a href='${x}'>|Click here to go to a new page|</a>
</body>
</html>