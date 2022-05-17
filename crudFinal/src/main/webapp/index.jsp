<html>
<head>
<link rel="stylesheet"  href="style.css" />
</head>
<body>
<jsp:include page="home.jsp"/>
<h2 align='center'>Employee Registration Form</h2>
<hr/>
<div id='main'>
<table>
<form action='reg.jsp'>
<tr><td>Name</td><td> <input type='text' name='tname' /></td></tr>
<tr><td>Salary </td><td><input type='text' name='tsalary' /></td></tr>
<tr><td colspan='2'><input type='submit' value='Save' /></td>
</form>
</table>
</div>
</body>
</html>
