<%-- 
    Document   : register_vaccinated
    Created on : Dec 3, 2021, 11:05:19 AM
    Author     : marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="vaccination" uri="WEB-INF/tlds/insert.tld"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Vaccinated</title>
    </head>
    <body>
        <h1>Register Vaccinated</h1>
        
            <form>
                <tr>
                    <td>Patient ID</td>
                    <td><input name="PatientID" value="7" /></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input name="FName"value="opio" /></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input name="LName"value="mike" /></td>
                </tr>
                <tr>
                    <td>Health Centre</td>
                    <td><input name="HealthCentre"value="kibuli" /></td>
                </tr>
                <tr>
                    <td>Health Vaccine</td>
                    <td><input name="Vaccine" value="johson"/></td>
                </tr>
                <tr>
                    <td>Booking Time</td>
                    <td><input name="BookingTime"value="10" /></td>
                </tr>
           
                
<!--                    <td></td>
                    <td><input type="submit" name="submit" value="submit" /></td>-->
                
            </form>
        
        
        <vaccination:insert
            table="booking"
            values="'7', 'opio', 'mike', 'kibuli', 'johson', '10'"
        />
    </body>
</html>
