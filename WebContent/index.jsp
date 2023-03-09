<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
    <%@include file="DBConnect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!--Fontowesome  -->
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
crossorigin="anonymous">  
<style type="text/css">
.table{

width: 80%;
}
.btn .btn-sm{
width: 2pc;
}
.alert{
 width: 30%;
}

.rwback:nth-child(odd){background-color:#eeeeee;}
</style>
</head>
<body>
    
    <sql:query dataSource="${con}" var="result">
    
    SELECT * FROM watchtb
    </sql:query>

    <div class="container mt-4">
   <center><h3 style="text-align: center;  color: navy; padding: 4px; border-radius: 6px; font-weight: bold;">Watch Buyers Report</h3></center> 
   </div>
  
  <center>
  <table class="table mt-5 text-center">
	   <thead class="thead-dark">
	    <tr>
	      <th scope="col">ID</th>
	      <th scope="col">Buyer Name</th>
	      <th scope="col">Brand Name</th>
	      <th scope="col">Watch Type</th>
	      <th scope="col">Price</th>
	      <th scope="col">Actions</th>
	    </tr>
	  </thead>
	 
	  <tbody>
	  
	  <c:forEach var="rows" items="${result.rows}">
	  
	    <tr>
	      <td><c:out value="${rows.id}"/></td>
	      <td><c:out value="${rows.fname}"/></td>
	      <td><c:out value="${rows.wname}"/></td>
	      <td><c:out value="${rows.wtype}"/></td>
	      <td><c:out value="${rows.price}"/></td>
	       <td><a href="edit.jsp?id=<c:out value="${rows.id}"></c:out>" class = 'btn btn-sm  text-success' ><i class="fa-solid fa-pen-to-square"></i></a>&nbsp;&nbsp;
	       <a href="delete.jsp?id=<c:out value="${rows.id}"></c:out>" class = 'btn btn-sm  text-danger'><i class="fa-solid fa-trash-can"></i></a>
	       <a href="register.jsp" class = 'btn btn-sm  text-primary'><b><i class="fa-solid fa-plus"></i></b></a>
	       </td>
	    </tr>
	    
	  </c:forEach>  
	  </tbody>
	  </table>
	  </center>
</body>
</html>