<%@ page language="java" import='org.hibernate.*, org.hibernate.cfg.*,hiber.employee,java.util.List' contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="home.jsp"/>

<%
SessionFactory sf = new Configuration().configure().buildSessionFactory();
Session s = sf.openSession();
Query<employee> q = s.createQuery("from employee");
List<employee> e = q.list();

%>
<div id='main'>
<table border = '1' align = 'center'>
<tr><th>ID<th>Name</th><th>Salary</th><th>Delete</th></tr>
<%
for(employee emp : e) {%>
	<tr>
	<td><%=emp.getEmployeeID()%></td>
	<td><%=emp.getName()%></td>
	<td><%=emp.getSalary()%></td>
	<td bgcolor ="black"><a href = 'deleteArea.jsp?eid=<%= emp.getEmployeeID()%>'>Delete</a></td>
	</tr>
<%}
%>
</table>
</div>
</body>
</html>