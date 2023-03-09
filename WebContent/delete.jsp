<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
    <%@include file="DBConnect.jsp" %>

    <sql:update dataSource="${con}" var="count">
    
    DELETE FROM watchtb WHERE id="${param.id}"
    </sql:update>
    
    <c:if test="${count>=1}">
	<c:redirect url="index.jsp">Record Deleted Succesfully.</c:redirect> 
	 </c:if>