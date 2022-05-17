<%@ page import='org.hibernate.*, org.hibernate.cfg.*,hiber.employee' language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% String name = request.getParameter("tname");
   String salary = request.getParameter("tsalary");
 
   
   SessionFactory factory = new Configuration().configure().buildSessionFactory();
   Session session1 = factory.openSession();
   
   session1.beginTransaction();
   employee e1 = new employee();
   e1.setName(name);
   e1.setSalary(Integer.parseInt(salary));
 
   session1.getTransaction().commit();
   
   session1.save(e1);
   session1.close();
  
%>
<jsp:include page="index.jsp"/>
<h4 align='center'>Record saved</h4>
</body>
</html>