<%-- 
    Document   : monthlyNeedsAssessment
    Created on : Dec 8, 2021, 10:38:43 PM
    Author     : Agaba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monthly needs assessment</title>
    </head>
    <body>
        <h1>Monthly Needs Assessment for Vaccines</h1>
        <i>For centres which didn't vaccinate in the last month</i>
        
        <form action='/NAD-G13-main/needsAssessment' method='POST'>
            <table>
                <tr>
                    <td><b>Health Centre</b></td>
                    <td><b>Number of patients last month</b></td>
                </tr>
                <tr>
                    <td><input type='text' name='centre'></td>
                    <td><input type='text' name='nop'></td>
                </tr>
                <tr>
                    <td><input type='text' name='centre'></td>
                    <td><input type='text' name='nop'></td>
                </tr>
                <tr>
                    <td><input type='text' name='centre'></td>
                    <td><input type='text' name='nop'></td>
                </tr>
                <tr>
                    <td><input type='text' name='centre'></td>
                    <td><input type='text' name='nop'></td>
                </tr>
                <tr>
                    <td><input type='text' name='centre'></td>
                    <td><input type='text' name='nop'></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type='submit' name='submit' value='Save'></td>
                </tr>
            </table>
        </form>
        
        <br><br><b>NB: </b><i>Give priority in descending order of number of patients</i>
            
        <vaccine:insert
            table="Vaccine_Needs"
            values="'Centre1', '2000'"
        />
    </body>
</html>
