<%-- 
    Document   : register_vaccinated
    Created on : Dec 3, 2021, 11:05:19 AM
    Author     : mike
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
        <table>
            <form action="SubmitVaccinated" method="post">
                <tr>
                    <td>PatientID</td>
                    <td><input name="PatientID" /></td>
                </tr>
                <tr>
                    <td>NIN</td>
                    <td><input name="NIN" /></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input name="FName" /></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input name="LName" /></td>
                </tr>
                <tr>
                    <td>Health Centre</td>
                    <td><input name="HealthCentre" /></td>
                </tr>
                <tr>
                    <td>Vaccine</td>
                    <td><input name="Vaccine" /></td>
                </tr>
                <tr>
                    <td>Vaccine Batch NO.</td>
                    <td><input name="Batch_Number" /></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><input type="date" name="Date" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="submit" value="submit" /></td>
                </tr>
            </form>
        </table>
        
        <vaccination:insert table="Vaccinated_Patients" values="'767'," />
    </body>
</html>
