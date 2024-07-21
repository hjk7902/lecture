<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<DOCTYPE html>
<html>
<head><title>Index</title></head>
<body>
<h1>Welcome...</h1>
<%
Connection con = null;
try {
  out.println("1");
  Class.forName("oracle.jdbc.OracleDriver");
  out.println("2");
  con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.119.131:1521:xe", "hr", "hr");
  out.println("OK");
}catch(Exception e) {
  out.println(e.getMessage());
}finally {
  if(con!=null) try {con.close();}catch(Exception e) { }
}
%>
</body>
</html>
