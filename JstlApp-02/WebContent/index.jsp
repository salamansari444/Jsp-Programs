<%@ page isELIgnored="false" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SQL Taglibrary</title>
</head>
<body>
	<sql:setDataSource url="jdbc:mysql:///octbatch" user="root" password="Salam@785" driver="com.mysql.cj.jdbc.Driver" var="dataSource"/>
	<sql:query var="result" dataSource="${dataSource }" >
	select * from employee
	</sql:query>
	
	<table border=1>
	<tr>
	<th>EID</th>
	<th>ENAME</th>
	<th>EAGE</th>
	<th>ESAL</th>
	</tr>
	
	<c:forEach var="row" items='${result.rows }'>
	<tr>
		<td> ${row.eid }</td>
	 	<td>${row.ename }</td>
		<td> ${row.eage }</td> 
		<td>${row.esal }</td>
		</tr>
		</h1>
	</c:forEach>
	</table>
	<sql:update var="count" dataSource="${dataSource }" >
	insert into employee(`ename`,`eage`,`esal`) values(?,?,?)
	<sql:param value="salam"/>
	<sql:param value="23"/>
	<sql:param value="19801"/>
	</sql:update>
	
	<sql:update dataSource="${dataSource}" var="count">
		update employee set ename = "hyder" where eid='5'
	</sql:update>
	<sql:update dataSource="${dataSource}" var="count">
		update employee set ename = "nitin" where eid='6'
	</sql:update>
	
	<sql:transaction dataSource="${dataSource}">
		<sql:update>
				update employee set esal = esal + 10000 where ename='hyder'
		</sql:update>
		
		<sql:update>
				update employee set esal = esal + 5000 where ename='nitin'
		</sql:update>
	</sql:transaction>
	
</body>
</html>