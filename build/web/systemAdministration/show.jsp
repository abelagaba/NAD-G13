<%-- 
    Document   : show.jsp
    Created on : Dec 6, 2021, 7:01:00 AM
    Author     : musinguzi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Panel</title>
    </head>
    <body>
        <h3>Patients</h3>
            <vaccination:select table="patients" displayFormat="list" />
            
            <p style="position: absolute; bottom: 0; left: 0; text-align: center;"><a href="logout.jsp">Logout</a></p>
                        </body>
                        
                        <<h3>Health Centeres contacts</h3>
                        
                        <vaccination:select table="healthcentres" displayFormat="list" />
                        <table>
                            <tr>
                                
                            </tr>
                        </table>
                    </html>
