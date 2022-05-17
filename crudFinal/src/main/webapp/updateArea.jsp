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
String id = request.getParameter("eid");
SessionFactory sf = new Configuration().configure().buildSessionFactory();
Session s = sf.openSession();
employee emp = s.find(employee.class,Integer.parseInt(id));

%>
<div id='main'>
<table align = 'center'>
<form action= 'updateProcess.jsp'>
<tr><td>ID</td><td> <input type='text' name='tid' value='<%= emp.getEmployeeID()%>'/></td></tr>
<tr><td>Name</td><td> <input type='text' name='tname' value='<%= emp.getName()%>' /></td></tr>
<tr><td>Salary </td><td><input type='text' name='tsalary'value='<%= emp.getSalary()%>' /></td></tr>
<tr><td colspan='2'><input type='submit' value='Update' /></td>
</form>
</table>

</div>

</body>
</html>