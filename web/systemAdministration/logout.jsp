<%-- 
    Document   : logout
    Created on : Dec 5, 2021, 11:59:17 PM
    Author     : musinguzi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
session.invalidate(); //destroy session
response.sendRedirect("index.jsp");
%>
