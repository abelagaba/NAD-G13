<%-- 
    Document   : services
    Created on : Dec 5, 2021, 11:20:57 PM
    Author     : musinguzi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>

    <head>

        <title>Services Panel></title>
    </head>

    <body>
        <div class="main-content">

            <center>



                <h3> Welcome </h3>

                <form method="post" style="position: absolute">
                    <table>
                        <tr><td><h4 style="left: 0">Register New patients</h4></td></tr>
                        <tr>
                            <td>Full Name</td>
                            <td><input type="text" name="fname"></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="text" name="email"></td>
                        </tr>
                        <tr>
                            <td>Vaccine Admission Date</td>
                            <td><input type="date" name="date_1"></td>
                        </tr>
                        <tr>
                            <td>Next Date Admission</td>
                            <td><input type="date" name="date_2"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="submit"></td>
                        </tr>
                    </table>
                    <vaccination:insert table="patients" values="'test', 'email', '2021-12-12', 56"  />
                </form> 

                <p><a href="show.jsp">Show users<p/>
                <p style="position: absolute; bottom: 0; left: 0; text-align: center;"><a href="logout.jsp">Logout</a></p>

            </center>

        </div>

    </body>

</html>
