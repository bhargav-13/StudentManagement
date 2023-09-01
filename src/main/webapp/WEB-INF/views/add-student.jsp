<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>

</head>
<body>
	<form action="handle-student" name="insert" method="post">
    <div class="form-group">
        <table>
        
            <tr>
                <td >first Name</td>
                <td><input name="fname" type="text" placeholder="enter first name"></td>
            </tr>
            
            <tr>
                <td >last Name</td>
                <td><input name="lname" type="text" placeholder="enter last name"></td>
            </tr>

             <tr>
                <td >Email id</td>
                <td><input name="email" type="email" placeholder="enter Email id"></td>
            </tr>

            <tr>
                <td >Phone no.</td>
                <td> <input type="text" name="phone" placeholder="Enter phone number"> </td>
            </tr>

            <tr>
            <td>Submit by click</td>
            	<td>
                <div>
                	<button id="t1" type="submit" name="action" value="add">Add</button>
                </div>
                </td>
            </tr>
        </table>
     </div>
    </form>
    
    <a class="btn btn-danger" href="<%= request.getContextPath() %>/" >Back</a>

</body>
</html>