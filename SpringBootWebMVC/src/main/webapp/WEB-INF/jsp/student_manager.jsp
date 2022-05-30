<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Manager</title>
    <style>
    
        table, th, td {
            border: 1px solid black;
            padding: 5px;
        }
        h3{
            margin-bottom: 2px;
		    background-color: #c0ffea;
		   
        }
        table{
            margin: auto;
        }
        th{
            background-color: aquamarine;
        }
        td{
       		text-align: center;
        }
    </style>
</head>
<body>
    <h1>Student Manager</h1>
    <h3>Student List (${listStudent.size()})</h3>
    <button onclick="window.location='new'">New</button>
    <table>
        <tr>
            <th>Edit</th>
            <th>Delete</th>
            <th>StudentId</th>
            <th>Name</th>
            <th>Birthday</th>
        </tr>
        <c:forEach items="${listStudent}" var="student">
        <tr>
            <td><button onclick="window.location='editStudent?id=${student.id}'" >Edit</button></td>
            <td><button onclick="window.location='delete?id=${student.id}'" >Delete</button></td>
            <td><a href="detailStudent?id=${student.id}">${student.id}</a></td>
            <td>${student.name}</td>
            <td><fmt:formatDate value="${student.birthday.time}" type="date" pattern="dd/MM/yyyy" /></td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>