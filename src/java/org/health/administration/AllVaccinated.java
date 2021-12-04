/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.health.administration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author mike
 */
public class AllVaccinated extends SimpleTagSupport {      
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();            
        try {
            Class.forName("com.mysql.jdbc.Driver");            
            try {
                Connection conn =
                DriverManager.getConnection("jdbc:mysql://localhost/vaccine_administration_tracker","nadUser","password");
            
                Statement readAll = conn.createStatement();
                ResultSet rs = readAll.executeQuery("SELECT * FROM Vaccinated_Patients");
               
                out.println("<table border='1'>");
                out.println("<tr>"
                        + "<th>PatientID</th>"
                        + "<th>NIN</th>"
                        + "<th>Name</th>"
                        + "<th>Centre</th>"
                        + "<th>Vaccine</th>"
                        + "<th>Batch NO.</th>"
                        + "<th>Date</th>"
                        + "<th>Doses Taken</th>"
                        + "</tr>");
                while(rs.next())  out.println("<tr><td>"
                        +rs.getInt(1)+"</td><td>"
                        +rs.getString(2)+"</td><td>"
                        +rs.getString(3)+" "+rs.getString(4)+"</td><td>"
                        +rs.getString(5)+"</td><td>"
                        +rs.getString(6)+"</td><td>"
                        +rs.getString(7)+"</td><td>"
                        +rs.getDate(8)+"</td><td>"
                        +rs.getInt(9)
                        +"</td></tr>");  
                out.println("</table>");
                
                conn.close();
                
            } catch (SQLException ex) {
                out.println("SQLException: " + ex.getMessage());
                out.println("<br />SQLState: " + ex.getSQLState());
                out.println("<br />VendorError: " + ex.getErrorCode());
            }            
        } catch (ClassNotFoundException ex) {
            out.println("Error: Class '"+ex.getMessage()+"' not found");
        }
    }    
}
