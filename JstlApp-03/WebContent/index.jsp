<%@ page isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Functional Libraries</title>
</head>
<body>
	<c:set var="data" value="Hello Learning JSTL is very easy"/>
	<h1 style='color: green; text-align:center;'>
	Length of the String :: ${fn:length(data) } <br>
	IN UppperCase  :  ${fn:toUpperCase(data) }<br>
	IN LowerCase  :  ${fn:toLowerCase(data) }<br>
	does contain "JSTL" : ${fn:contains(data,"JSTL") }<br>
	does String start with Hello : ${fn:startsWith(data, "Hello") }<br>
	does String ends with easy : ${fn:endsWith(data, "easy") }<br>
	</h1>
	<hr>
	<c:set var="data" value="sachin,dhoni,kohli,raina"/>
	<c:set var="names" value='${fn:split(data,",") }'/>
	<h1 style='color:blue;text-align: center' >
		Result of Split method is :: <br>
		<c:forEach var="name" items="${names }">
		${name }<br>
		</c:forEach>
	</h1>
	
	
	<hr>
	
	<c:set var='result' value='${fn:join(names,"-") }'/>
	<h1 style='color:red; text-align: center'>
		Result of Join method is ${result}<br/>
	</h1>
</body>
</html>