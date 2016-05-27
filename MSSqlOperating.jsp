<%@page import="java.sql.*"%>

<% 
	 String connectionUrl = "jdbc:sqlserver://localhost:1433;databasename=javasql;user=sa;password=passw0rd";
	
	 String strSQLStatement ="SELECT * FROM book";
	 
	 Connection con = null;
	 Statement statement = null;
	 ResultSet resultset = null;
	 
	 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
	 con = DriverManager.getConnection(connectionUrl); 
	 statement = con.createStatement() ; 
	 resultset = statement.executeQuery(strSQLStatement);
 %>  
 
<html>
	<body>	 
		<table border="1" width="100%">
			 <tr>
				 <th><b>Serial number</b></th>
				 <th><b>Book Name </b></th>
				 <th><b>Book Price</b></th>
				 <th><b>Last Quantity </b></th>		
				 <th><b>First Writer</b></th>
			 </tr>		
			<% 
			 while (resultset.next())
			 { 
			%>		 
			<tr> 		
				 <td><%= resultset.getString("number") %></td> 
				 <td><%= resultset.getString("bkname") %></td>
				 <td><%= resultset.getString("bkprice") %></td> 
				 <td><%= resultset.getString("bkquantity") %></td> 
				 <td><%= resultset.getString("bkwriter") %></td> 
			</tr>
		
			<% 
			} 
			%> 
		</table>
	</body> 
</html> 