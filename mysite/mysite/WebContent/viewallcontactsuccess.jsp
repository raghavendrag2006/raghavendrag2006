<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.html"%>
<html>
<head>
<title>View All Contacts</title>
</head>

<body bgcolor="#ffffee" leftmargin="10px" rightmargin="10px">

<center>
<h2>View All Contacts</h2>
</center>
<!--Body: view all information-->
<center>
<form method="post">
	<table cellpadding="0"  cellspacing="0" width="100%">
<tr>
<td> First Name </br> </td>
<td> Last Name </br> </td>
<td> Middle Name </br> </td>
<td> Email</br> </td>
<td> Home Phone</br> </td>
<td> Work Phone</br> </td>
<td> Mobile </br> </td>
</tr>
	<%if(request.getSession().getAttribute("emaillist") !=null) {%>
	<c:forEach var="list" items ="${sessionScope.emaillist}">

<tr>
<td><c:out value= "${list.fName}"></c:out></td>
<td><c:out value= "${list.lName}"></c:out></td>
<td><c:out value= "${list.mName}"></c:out></td>
<td><c:out value= "${list.eMailID}"></c:out></td>
<td><c:out value= "${list.hPhone}"></c:out></td>
<td><c:out value= "${list.wPhone}"></c:out></td>
<td><c:out value= "${list.mPhone}"></c:out></td>
</tr>
</c:forEach>
<% }%>

</body>
</html>