<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
    <%@include file="DBConnect.jsp" %>
    
    <sql:update dataSource="${con}" var="count">
    
    UPDATE watchtb SET fname=?, wname=?, wtype=?, price=? WHERE id="${param.id}"
    
     <sql:param value="${param.fname }"/>
	 <sql:param value="${param.wname }"/>
	 <sql:param value="${param.wtype }"/>
	 <sql:param value="${param.price }"/>
	 </sql:update>

	 <c:if test="${count>=1}">
	<c:redirect url="index.jsp">Record Updated Succesfully.</c:redirect> 
	 </c:if>