<%@ page %>
<jsp:useBean id="dto" class="in.ineuron.dto.EmployeeDto" scope="request"/>
<jsp:setProperty name="dto" property="*"/>

<jsp:useBean id="service" class="in.ineuron.service.SalaryDetailGeneratorImpl" scope="application"/>

<%
	service.generateSalaryDetails(dto);
%>
<center>
<table border='1' align=center  bgcolor='green'>
<caption>Salary Detail</caption>
	<tr>
	<th>Employee EID</th>
	<td>
		<jsp.getProperty name="dto" property="eid" />
	</td>
	</tr>
	<tr>
	<th>Employee Name</th>
	<td>
		<jsp.getProperty name="dto" property="ename" />
	</td>
	</tr>
	<tr>
	<th>Employee Salary</th>
	<td>
		<jsp.getProperty name="dto" property="bsalary" />
	</td>
	</tr>
	<tr>
	<th>Gross Salary</th>
	<td>
		<jsp.getProperty name="dto" property="grossSalary" />
	</td>
	</tr>
	<tr>
	<th>Net Salary</th>
	<td>
		<jsp.getProperty name="dto" property="netSalary" />
	</td>
	</tr>

</table>

<br/><br/>
<a href='./index.html'>| H O M E . . P A G E |</a>
</center>