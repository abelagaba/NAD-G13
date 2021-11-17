<%-- 
    Document   : search_patient
    Created on : Dec 4, 2021, 9:53:06 PM
    Author     : mike
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="certificates" uri="WEB-INF/tlds/patientCetificate.tld"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccination Certificates</title>
    </head>
    <body>
        <u>Vaccination Certificates</u>
<!--        <table>
            <form action="getCertificate" method="post">
                <tr>
                    <td>PatientID</td>
                    <td><input name="PatientID" /></td>
                    <td></td>
                    <td><input type="submit" name="submit" value="submit" /></td>
                </tr>
            </form>
        </table>-->
        <%--<certificate:patientCertificateTag patientID='1' />--%>
        <certificates:patientCertificate />
    </body>
</html>
