<%-- 
    Document   : allVaccinated
    Created on : Dec 4, 2021, 9:44:20 PM
    Author     : marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="vaccination" uri="WEB-INF/tlds/select.tld"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Booking </title>
    </head>
    <body>
        <h3>All Booking records</h3>
        <%--<vaccination:select table="Vaccinated_Patients" displayFormat="table" where="PatientID='1'" />--%>
        <vaccination:select table="booking" displayFormat="table" />
        
       <ol>
            <li><a href="Bookingreport.jsp">Booking reports</a></li>
            
        </ol>
        
        
    </body>
</html>
