<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Detail</title>
    <style>
        .main{
            width: 30%;
            margin: auto;
        }
        th{
            text-align: left;
        }
    </style>
</head>
<body>
    <div>
        <div class="main">
            <h1>Student Detail</h1>
        <table>
            <tr>
                <th>StudentID</th>
                <td>${stu.id}</td>
            </tr>
            <tr>
                <th>Name</th>
                <td>${stu.name}</td>
            </tr>
            <tr>
                <th>Male</th>
                <c:choose>
				    <c:when test="${stu.male}">
				         <td><input type="checkbox" checked="checked" ></td>
				    </c:when>    
				    <c:otherwise>
				        <td><input type="checkbox"></td>
				    </c:otherwise>
				</c:choose>  
            </tr>
            <tr>
                <th>Birthday</th>
                <td><fmt:formatDate value="${stu.birthday.time}" type="date" pattern="dd/MM/yyyy" /></td>
            </tr>
            <tr>
                <th>Place of birth</th>
                <td>${stu.placeOfBirth}</td>
            </tr>
            <tr>
                <th>Address</th>
                <td>${stu.address}</td>
            </tr>
            <tr>
                <th>Department</th>
                <td>${stu.depName}</td>
            </tr>
            <tr>
                <td><button onclick="window.location='studentList'"  >Student List</button></td>
                <td><button onclick="window.location='editStudent?id=${stu.id}'" >Edit...</button></td>
            </tr>
        </table>
        </div>
    </div>
</body>
</html>