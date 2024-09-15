<%@  page isELIgnored="false"
	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%>
<html>
<head>
<title>Core 2</title>
</head>
<body>
	<table border='1' bgcolor='cyan'>
		<c:forEach var="i" begin="1" end="10" step="1">
		<tr>
		<td> 2 * ${i}  </td>
		<td>  ${2*i}  </td>
		</tr>
		</c:forEach>
	
	</table>
</body>

</html>
