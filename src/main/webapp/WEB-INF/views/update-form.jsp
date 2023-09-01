<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/handle-student" name="insert" method="post">
    	<div class="form-group">
    	<input type="hidden" value="${s.id }" name="id">
        <table>
        
            <tr>
                <td >first Name</td>
                <td><input name="fname" type="text" placeholder="enter first name" value="${s.fname }"></td>
            </tr>
            
            <tr>
                <td >last Name</td>
                <td><input name="lname" type="text" placeholder="enter last name" value="${s.lname }"></td>
            </tr>

             <tr>
                <td >Email id</td>
                <td><input name="email" type="email" placeholder="enter Email id" value="${s.email }"></td>
            </tr>

            <tr>
                <td >Phone no.</td>
                <td> <input type="text" name="phone" placeholder="Enter phone number" value="${s.phone }"> </td>
            </tr>

            <tr>
            <td>Submit by click</td>
            	<td>
                <div>
                	<button id="t1" type="submit" name="action" value="update">Update</button>
                </div>
                </td>
            </tr>
        </table>
     </div>
    </form>
    
    <a class="btn btn-danger" href="<%= request.getContextPath() %>/" >Back</a>
</body>
</html>