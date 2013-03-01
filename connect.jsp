<%@ page language="java" import="java.sql.*" %>
<% 

Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/ted","db2inst1","v");
Statement statement=con.createStatement();

%>
