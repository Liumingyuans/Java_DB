<!-- MySQL(JSTL)  http://www.runoob.com/jsp/jsp-database-access.html-->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
  
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://127.0.0.1/javasql"
     user="root"  password=""/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from book;
</sql:query>
<html>
	<head>
		<title>SELECT Operation</title>
	</head>
	<body>
	
	 
	<table border="1" width="100%">
		<tr>
			<th><b>Serial number</b></th>
			<th><b>Book Name </b></th>
			<th><b>Book Price</b></th>
			<th><b>Last Quantity </b></th>		
			<th><b>First Writer</b></th>
		</tr>		
		<c:forEach var="row" items="${result.rows}">
		<tr>
			<td><c:out value="${row.number}"/></td>
			<td><c:out value="${row.bkname}"/></td>
			<td><c:out value="${row.bkprice}"/></td>
			<td><c:out value="${row.bkquantity}"/></td>
			<td><c:out value="${row.bkwriter}"/></td>
		</tr>
		</c:forEach>
	</table>
	 
	</body>
</html>