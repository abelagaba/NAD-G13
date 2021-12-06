

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="vaccination" uri="/WEB-INF/tlds/select"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Vaccines</title>
    </head>
    <body>
        <h3>All Vaccines</h3>
        <%--<vaccination:select table="Received_Vaccines" displayFormat="table" where="AdminID='1'" />--%>
        <vaccine:select table="Received_Vaccines" displayFormat="list" />
    </body>
</html>
