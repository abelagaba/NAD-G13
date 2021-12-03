package org.health.administration;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


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
public class VaccinationProgress extends SimpleTagSupport {  
    
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();            
        try {
            Class.forName("com.mysql.jdbc.Driver");            
            try {
                Connection conn =
                DriverManager.getConnection("jdbc:mysql://localhost/vaccine_administration_tracker","nadUser","password");
            
                Statement countStatement = conn.createStatement();
                
                ResultSet rs1 = countStatement.executeQuery("SELECT COUNT(*) FROM Bookings");                
                rs1.next();
                int count1 = rs1.getInt(1); 
                
                ResultSet rs2 = countStatement.executeQuery("SELECT COUNT(*) FROM Vaccinated_Patients");
                rs2.next();
                int count2 = rs2.getInt(1);
                
                out.println("Total Bookings: "+count1);
                out.println("<br />Total Vaccinated: "+count2); 
                out.println("<br />Progress: "+(count2/count1)*100+"%<br />");                
                                              
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
