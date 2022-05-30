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
    <title>New student</title>
     <style>
     .error{
     color: red;
     }
     
     </style>
</head>
<body>
    <div>
        <div class="main">
            <h1>New Student</h1>
        <form:form action="saveStudent" method="post" modelAttribute="student">
        <table>
                <tr>
                    <th><form:label path="name">*name:</form:label></th>
                    <td>	<form:input path="name"/><br/></td>
                     <td>	<form:errors path="name" cssClass="error"/></td>
                </tr>
                <tr>
                    <th><form:label path="male">Male:</form:label></th>
                    <td><form:checkbox path="male"/></td>
                </tr>
                <tr>
                    <th><form:label path="birthday">Birthday:</form:label></th>
                    <td><form:input type="date" path="birthday"/><br/></td>
                    <td>	<form:errors path="birthday" cssClass="error"/></td>
                </tr>
                <tr>
                    <th><form:label path="placeOfBirth">Place of birth:</form:label></th>
                    <td><form:input path="placeOfBirth"/><br/></td>
                     <td>	<form:errors path="placeOfBirth" cssClass="error"/></td>
                </tr>
                <tr>
                    <th><form:label path="address">Address:</form:label></th>
                    <td><form:input path="address"/><br/></td>
                     <td>	<form:errors path="address" cssClass="error"/></td>
                </tr>
                <tr>
                    <th><form:label path="depName">Department:</form:label></th>
                    <td><form:select path="depName" items="${professionList}" /><br/></td>
                     <td>	<form:errors path="depName" cssClass="error"/></td>
                </tr>
                 <tr>
                    <td><form:button>Submit</form:button></td>
                    <td><button onclick="window.location='/'">Cancel</button></td>
                </tr>
              </table>
		</form:form>
        </div>
    </div>
</body>
</html>