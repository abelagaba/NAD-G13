<%-- 
    Document   : Bookingreport
    Created on : Dec 5, 2021, 2:42:39 PM
    Author     : PC LIFE COMPUTERS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="vaccination" uri="WEB-INF/tlds/select.tld"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking reports</title>
    </head>
    <body>
        <h3>All Booking Reports</h3>
        <%--<vaccination:select table="Vaccinated_Patients" displayFormat="table" where="PatientID='1'" />--%>
        <vaccination:select table="booking" displayFormat="list" />
    </body>
</html>
