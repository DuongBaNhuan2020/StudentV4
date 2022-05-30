<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit student</title>
    <style>
     .error{
     color: red;
     }
     
     </style>
</head>
<body>
    <div>
        <div class="main">
            <h1>Edit Student</h1>
       <form:form action="saveEditedStudent" method="post" modelAttribute="student">
            <table>
                <tr>
                    <th>*StudentID:</th>
                    <td>${student.id}
						<form:hidden path="id"/></td>
                </tr>
                <tr>
                    <th>*Name:</th>
                    <td><form:input path="name" /></td>
                    <td>	<form:errors path="name" cssClass="error"/></td>
                </tr>
                <tr>
                    <th>Male:</th>
                    <td> <form:checkbox path="male" value="${student.male}"/> </td>
                   
                   
                </tr>
                <tr>
                    <th>Birthday:</th>
                    <td><form:input type="date" path="birthday" pattern="dd/MM/yyyy"/></td>
                    <td>	<form:errors path="birthday" cssClass="error"/></td>
                </tr>
                <tr>
                    <th>Place of birth:</th>
                    <td><form:input path="placeOfBirth" /></td>
                    <td>	<form:errors path="placeOfBirth" cssClass="error"/></td>
                </tr>
                <tr>
                    <th>Address:</th>
                    <td><form:input path="address" /></td>
                    <td>	<form:errors path="address" cssClass="error"/></td>
                </tr>
                <tr>
                    <th><form:label path="depName">Department:</form:label></th>
                    <td>
					<form:select path="depName" items="${professionList}"  /><br/>
                    </td>
                </tr>
                <tr>
                    <td><button type="submit">Update</button></td>
                    <td><button>Cancel</button></td>
                </tr>
            </table>
        </form:form>
        </div>
    </div>
</body>
</html>