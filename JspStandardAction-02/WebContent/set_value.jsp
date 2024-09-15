<h1 style='color:green; text-align:center;'>Setting Value to Student</h1>

<jsp:useBean id="student" class="in.ineuron.dto.Student"/>
<jsp:setProperty name="student" property="sid" value="10"/>
<jsp:setProperty name="student" property="sname" value="sachin"/>
<jsp:setProperty name="student" property="sage" value="50"/>
<jsp:setProperty name="student" property="saddr" value="IND"/>