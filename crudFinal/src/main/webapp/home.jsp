<%@  page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    h1
         {
			background-color:blue;
			color :white;
			position :absolute;
			margin-top :5px;
			margin-left :5px;
         }
    ul 
    {
    	list-style-type :none;
    	text-align :center;
    }     
    li {
        display: inline;
        margin: 20px;    
    }  
    
    li :hover
     {
    	background-color:red;
    }
    header {
    	    background-color:blue;
			color :white;
			width :100%;
			height :50px;
    }
    
    a{
       color :white;
    }
</style>
</head>
<body>
<header>
<h1>
My Employee Website
</h1>

<ul>
<li><a href = "home.jsp">Home</a></li>
<li><a href = "index.jsp">Registration</a></li>
<li><a href = "view.jsp">View</a></li>
<li><a href = "update.jsp">Update</a></li>
<li><a href = "delete.jsp">Delete</a></li>
</ul>
</header>
</body>
</html>