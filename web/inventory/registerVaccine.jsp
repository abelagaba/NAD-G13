<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="vaccination" uri="/WEB-INF/tlds/insert"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Vaccines</title>
    </head>
    <body>
        <h1>Register Vaccines</h1>
        <table>
            <form action="SubmitReceivedVaccines" method="post">
                <tr>
                    <td>AdminID</td>
                    <td><input name="AdminID" /></td>
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
                    <td>Vaccine Amount</td>
                    <td><input type="text" name="Vaccine_Amount"
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="submit" value="submit" /></td>
                </tr>
            </form>
        </table>
        
        <vaccine:insert
            table="Received_Vaccines"
            values="'768', 'NIN', 'John', 'Mande', 'Zirobwe', 'Pfizer', 'BatchNo', '2021-12-05', '2'"
        />
    </body>
</html>
