<%-- 
    Document   : registerHealthCentres
    Created on : Dec 8, 2021, 10:38:14 PM
    Author     : Agaba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Health Centres</title>
    </head>
    <body>
        <h1>Register Health Centres</h1>
        <form action='/NAD-G13-main/submitHealthCentres' method='POST'>
            <table>
                <tr>
                    <td><b>No.</b></td>
                    <td><b>Health Centre</b></td>
                    <td><b>Location</b></td>
                    <td><b>Vaccinated last month?</b></td>
                </tr>
                <tr>
                    <td>1</td>
                    <td><input type='text' name='centre'></td>
                    <td><input type='text' name='loc'></td>
                    <td align=center><input type='checkbox' name='vaccinated' value='yes'></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><input type='text' name='centre'></td>
                    <td><input type='text' name='loc'></td>
                    <td align=center><input type='checkbox' name='vaccinated' value='yes'></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><input type='text' name='centre'></td>
                    <td><input type='text' name='loc'></td>
                    <td align=center><input type='checkbox' name='vaccinated' value='yes'></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td><input type='text' name='centre'></td>
                    <td><input type='text' name='loc'></td>
                    <td align=center><input type='checkbox' name='vaccinated' value='yes'></td>
                <tr>
                    <td>5</td>
                    <td><input type='text' name='centre'></td>
                    <td><input type='text' name='loc'></td>
                    <td align=center><input type='checkbox' name='vaccinated' value='yes'></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td align=center><input type='submit' name='submit' value='Save'></td>  
                </tr>
            </table>
        </form>
        <vaccine:insert
            table="Health_Centres"
            values="'Centre1', 'Location', 'Yes'"
        />
    </body>
</html>
