<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body style="background: #f0f1f2">

  <!-- Register Form -->
  
   <div class = "container-fluid mt-4">
	       <div class = "row p-5">
	           <div class = "col-md-4 offset-md-4">
	                <div class = "card">
	                    <div class = "card-body">
	                         <div class = "text-center text-info mb-4">
	                           
	                            <c:if test="${not empty msg}">
		                        <div class="alert alert-success" role="alert">${ msg}</div>
		                        <c:remove var="msg"/>
	                           </c:if>
	                           
	                           <h2 style="color: navy"><b>Watch Buy Info</b></h2>
	                         </div>
	                         <form action = "insert.jsp" method = "post">
	                               <div class = "form-group">
	                                   <label>Enter Buyer Name</label>
	                                   <input type = "text" required = "required" class = "form-control" id = "exampleInputEmail1"
	                                   aria-describedby = "emailHelp" name = "fname">
	                               </div>
	                                <div class = "form-group">
	                                   <label>Enter Watch Name</label>
	                                   <input type = "text" required = "required" class = "form-control" id = "exampleInputEmail1"
	                                   aria-describedby = "emailHelp" name = "wname">
	                               </div>
	                                <div class = "form-group">
	                                   <label>Enter Type</label>
	                                   <input type = "text" required = "required" class = "form-control" id = "exampleInputEmail1"
	                                   aria-describedby = "emailHelp" name = "wtype">
	                               </div>
	                                <div class = "form-group">
	                                   <label>Enter Price</label>
	                                   <input type = "text" required = "required" class = "form-control" id = "exampleInputEmail1"
	                                   aria-describedby = "emailHelp" name = "price">
	                               </div>
	                               
	                               <button type = "submit" class = "btn badge-pill btn-block" style="background-color: navy; color: #fff">  Add</button>
	                                 <br>
	                               <p style="text-align: center;">Wan't view records? <a href="index.jsp" class="reg">Go</a></p>
	                         </form>
	                    </div>
	                </div>
	           </div>
	       </div>
	 </div>
  <!-- End -->
</body>
</html>