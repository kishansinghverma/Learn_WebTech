<%--
  Created by IntelliJ IDEA.
  User: Kishan Verma
  Date: 27-11-2019
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<HTML>
    <HEAD>
        <TITLE>The Publishers Database Table </TITLE>
    </HEAD>
    <BODY>
    <%
            Connection connection = DriverManager.getConnection("jdbc:odbc:data", "userName", "password");
            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from Publishers") ;
    %>
        <TABLE BORDER="1“>
            <TR>
                <TH>ID</TH>
                <TH>Name</TH>
                <TH>City</TH>
                <TH>State</TH>\
                <TH>Country</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></TD>
                <TD> <%= resultset.getString(2) %></TD>
               	<TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
          		<TD> <%= resultset.getString(5) %></TD>
            </TR>
            <% } %>
        </TABLE>
     </BODY>
</HTML>

