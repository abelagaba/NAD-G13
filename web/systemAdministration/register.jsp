<%-- 
    Document   : register
    Created on : Dec 5, 2021, 10:38:11 PM
    Author     : musinguzi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@taglib prefix="vaccination" uri="/WEB-INF/tlds/insert" %>

<%
if(session.getAttribute("login")!=null) //check login session user not access or back to register.jsp page
{
        response.sendRedirect("services.jsp");
}
%>


<%
try
{
        Class.forName("com.mysql.jdbc.Driver"); //load driver
	
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine_administration_tracker","nadUser","password"); //create connection
	
        if(request.getParameter("btn_register")!=null) //check register button click event not null
        {
                String fullname,username,email,password;
		
                fullname=request.getParameter("txt_fullname"); //txt_fullname
                username=request.getParameter("txt_username"); //txt_username
                email=request.getParameter("txt_email"); //txt_email
                password=request.getParameter("txt_password"); //txt_password
		
                PreparedStatement pstmt=null; //create statement
		
                pstmt=con.prepareStatement("insert into login(fullname,username,email,password) values(?,?,?,?)"); //sql insert query
                pstmt.setString(1,fullname);
                pstmt.setString(2,username);
                pstmt.setString(3,email);
                pstmt.setString(4,password);
		
                pstmt.executeUpdate(); //execute query
		
                request.setAttribute("successMsg","Register Successfully...! Please login"); //register success messeage

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
        <title>Admin Panel Register</title>
        <!-- javascript for registeration form validation-->
        <script>

            function validate()
            {
                var full_name = /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
                var user_name = /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
                var email_valid = /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/; //pattern valid email validation
                var password_valid = /^[a-z A-Z]+$/; //pattern password allowed A to Z, a to z

                var fname = document.getElementById("fname"); //textbox id fullname
                var uname = document.getElementById("uname"); //textbox id username
                var email = document.getElementById("email"); //textbox id email
                var password = document.getElementById("password"); //textbox id password

                if (!full_name.test(fname.value) || fname.value == '')
                {
                    alert("Enter Full name Alphabet Only....!");
                    fname.focus();
                    return false;
                }
                if (!user_name.test(uname.value) || uname.value == '')
                {
                    alert("Enter Username Alphabet Only....!");
                    uname.focus();
                    return false;
                }
                if (!email_valid.test(email.value) || email.value == '')
                {
                    alert("Enter Valid Email....!");
                    email.focus();
                    email.style.background = '#f08080';
                    return false;
                }
                if (!password_valid.test(password.value) || password.value == '')
                {
                    alert("Password should be text");
                    password.focus();
                    password.style.background = '#f08080';
                    return false;
                }
            }

        </script>	

    </head>

    <body>

        <ul>
        </ul>

        <div class="main-content">

            <form class="form-register" method="post" onsubmit="return validate();">

                <div class="form-register-with-email">

                    <div class="form-white-background">

                        <div class="form-title-row">
                            <h3>Register New Administrator</h3>
                        </div>

                        <p style="color:green">				   		
                            <%
                            if(request.getAttribute("successMsg")!=null)
                            {
                                    out.println(request.getAttribute("successMsg")); //register success message
                            }
                            %>
                        </p>

                        </br>

                        <div class="form-row">
                            <table>
                                <tr>
                                    <td><span>full Name</span></td>
                                    <td> <input type="text" name="txt_fullname" id="fname" placeholder="enter fullname"></td>
                                </tr>
                        </div>
                        <div class="form-row">
                            <label>
                                <tr>
                                    <td>  <span>User Name</span></td>
                                    <td><input type="text" name="txt_username" id="uname" placeholder="enter User Name"></td>
                                </tr>
                            </label>
                        </div>

                        <div class="form-row">
                            <label>
                                <tr>
                                    <td><span>Email</span></td>
                                    <td><input type="text" name="txt_email" id="email" placeholder="enter email"></td>
                                </tr>
                            </label>
                        </div>

                        <div class="form-row">
                            <label><tr>
                                    <td> <span>Password</span></td>
                                    <td> <input type="password" name="txt_password" id="password" placeholder="enter password"></td>
                                </tr>
                            </label>
                        </div>
                        <tr>
                            <td><input type="submit" name="btn_register" value="Register"></td>
                        </tr>
                        </table>
                            <vaccination:insert table="login" values="'alex','aleku','alexalex','alex@alex.gmail'">
                                Already have an account?<a href="index.jsp"><b> Login</b></a>

                    </div>

            </form>

        </div>

    </body>

</html>

