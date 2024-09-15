<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@ page language="java" %>



<!-- Initialization -->
<%! 
Connection con=null;
PreparedStatement  pstmtInsert=null;
PreparedStatement  pstmtSelect=null;
	public void jspInit(){
		System.out.println("Bootstrapping the environment ");
		ServletConfig config=getServletConfig();
		String url=config.getInitParameter("url");
		String user=config.getInitParameter("user");
		String password=config.getInitParameter("password");
	try{
		Class.forName("com..mysql.jdbc.Driver");
		con=DriverManager.getConnection(url, user, password);
		pstmtInsert=con.prepareStatement("insert into employee(ename,eaddr,esal) values (?,?,?)");
		pstmtSelect=con.prepareStatement("select * from employee");
	}catch(ClassNotFoundException ce){
		ce.printStackTrace();
	}
	catch(SQLException se){
		se.printStackTrace();
	}
	
	}
%>
<%
	String action=request.getParameter("s1");
	if(action.equalsIgnoreCase("register")){
		//take the data and perform insert operation
		String ename=request.getParameter("ename");
		String eaddr=request.getParameter("eaddr");
		String esal=request.getParameter("esal");
		
		pstmtInsert.setString(1, ename);
		pstmtInsert.setString(2, eaddr);
		pstmtInsert.setInt(3, Integer.parseInt(esal));
		
		int rowAffected=pstmtInsert.executeUpdate();
		if(rowAffected==1)
			out.println("<h1 style='color:green; text-align:center;'>Employee Register</h1>");
		else
			out.println("<h1 style='color:green; text-align:center;'>Employee NOT Register</h1>");
		
	}else{
		// get the data from database using select operation
		ResultSet resultSet=pstmtSelect.executeQuery();
		out.println("<table bgcolor='pink' align='center' border='1'>");
		out.println("<tr><th>EID</><th>ENAME</><th>EADDR</><th>ESAL</></tr>");
		while(resultSet.next()){
			out.println("<tr><td>"+resultSet.getInt(1)+"</td>");
			out.println("<tr><td>"+resultSet.getString(2)+"</td>");
			out.println("<tr><td>"+resultSet.getString(3)+"</td>");
			out.println("<tr><td>"+resultSet.getInt(4)+"</td></tr>");
		}
		out.println("</table>");
	}

%>
<br/><br/><br/>
<h1 style='color:blue; text-align:center;'><a href='./index.html'>Home Page</a></h1>


<!-- De-Instantiation -->
<%!
 public void jspDestroy(){
	System.out.println("Cleaning the environment...... ");
	try{
	if(pstmtInsert!=null)
		pstmtInsert.close();
	}
	catch(SQLException se){
		se.printStackTrace();
	}
	try{
		if(pstmtSelect!=null)
			pstmtSelect.close();
		}
		catch(SQLException se){
			se.printStackTrace();
		}
	try{
		if(con!=null)
			con.close();
		}
		catch(SQLException se){
			se.printStackTrace();
		}
	
}

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>