<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table cellpadding="0"  cellspacing="0" width="50%">
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