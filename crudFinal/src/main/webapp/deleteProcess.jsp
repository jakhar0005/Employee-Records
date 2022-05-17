<%@ page language="java" import='org.hibernate.*, org.hibernate.cfg.*,hiber.employee,java.util.List' contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("tid");
String name = request.getParameter("tname");
String salary = request.getParameter("tsalary");
%>
<%

SessionFactory sf = new Configuration().configure().buildSessionFactory();
Session s = sf.openSession();
s.beginTransaction();
employee emp = s.find(employee.class,Integer.parseInt(id));
emp.setName(name);
emp.setSalary(Integer.parseInt(salary));
s.delete(emp);
s.getTransaction().commit();
s.close();
%>
<%response.sendRedirect("view.jsp"); %>
</body>
</html>