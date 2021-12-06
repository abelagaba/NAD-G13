<%-- 
    Document   : index.jsp
    Created on : Dec 5, 2021, 6:33:35 PM
    Author     : musinguzi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>  

<%
if(session.getAttribute("login")!=null) //check login session user not access or back to index.jsp page
{
        response.sendRedirect("services.jsp");
}
%>

<%
try
{
        Class.forName("com.mysql.jdbc.Driver"); //load driver
	
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine_administration_tracker","nadUser","password"); //create connection
	
        if(request.getParameter("btn_login")!=null) //check login button click event not null
        {
                String dbemail,dbpassword;
		
                String email,password;
		
                email=request.getParameter("txt_email"); //txt_email
                password=request.getParameter("txt_password"); //txt_password
		
                PreparedStatement pstmt=null; //create statement
		
                pstmt=con.prepareStatement("select * from login where email=? AND password=?"); //sql select query 
                pstmt.setString(1,email);
                pstmt.setString(2,password);
		
                ResultSet rs=pstmt.executeQuery(); //execute query and store in resultset object rs.
		
                if(rs.next())
                {
                        dbemail=rs.getString("email");
                        dbpassword=rs.getString("password");
			
                        if(email.equals(dbemail) && password.equals(dbpassword))
                        {
                                session.setAttribute("login",dbemail); //session name is login and store fetchable database email address
                                response.sendRedirect("services.jsp"); //after login success redirect to welcome.jsp page
                        }
                }
                else
                {
                        request.setAttribute("errorMsg","invalid email or password"); //invalid error message for email or password wrong
                }
		
                con.close(); //close connection	
        }
	
}
catch(Exception e)
{
        out.println(e);
}
%>

<!DOCTYPE html>
<html>

    <head>
        <title>Admin Panel Login</title>
        <script>

            function validate()
            {
                var email = document.myform.txt_email;
                var password = document.myform.txt_password;

                if (email.value == null || email.value == "") //check email textbox not blank
                {
                    window.alert("please enter email ?"); //alert message
                    email.style.background = '#f08080';
                    email.focus();
                    return false;
                }
                if (password.value == null || password.value == "") //check password textbox not blank
                {
                    window.alert("please enter password ?"); //alert message
                    password.style.background = '#f08080';
                    password.focus();
                    return false;
                }
            }

        </script>

    </head>

    <body>

        <div class="main-content">

            <form class="form-register" method="post" name="myform" onsubmit="return validate();">
                <div class="form-title-row">
                    <h3>Administrator Panel</h3>
                </div>

                <p style="color:red">				   		
                    <%
                    if(request.getAttribute("errorMsg")!=null)
                    {
                            out.println(request.getAttribute("errorMsg")); //error message for email or password 
                    }
                    %>
                </p>

                </br>

                <table>
                    <tr>
                        <td><span>Email</span></td>
                        <td><input type="text" name="txt_email" id="email" placeholder="enter email"></td>
                    </tr>





                    <tr>
                        <td><span>Password</span></td>
                        <td><input type="password" name="txt_password" id="password" placeholder="enter password"></td>
                    </tr>       


                    <td><input type="submit" name="btn_login" value="Login"></td>
                </table>
        </div>

        <p>You Don't have an account? <a href="register.jsp" class="form-log-in-with-existing"><b> Register here </b></a></p>

    </div>

</form>

</div>

</body>

</html>