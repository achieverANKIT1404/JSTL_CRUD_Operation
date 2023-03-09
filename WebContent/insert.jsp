<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
    <%@include file="DBConnect.jsp" %>
         
	    <sql:update dataSource = "${con}" var = "result">
	         INSERT INTO watchtb(fname,wname,wtype,price) VALUES (?,?,?,?);
	         
	         <sql:param value="${param.fname }"/>
	         <sql:param value="${param.wname }"/>
	         <sql:param value="${param.wtype }"/>
	         <sql:param value="${param.price }"/>
	         
	      </sql:update>
	      
	       <c:if test="${result > 0 }">
	    
	     <c:redirect url="register.jsp">Watch Buyed succesfully</c:redirect>

         </c:if>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       
</body>
</html>