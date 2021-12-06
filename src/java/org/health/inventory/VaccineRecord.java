package org.health.inventory;

   
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;




/**
 *
 * @author mike
 */
public class VaccineRecord extends SimpleTagSupport {
    //tag attribute
//	private int PatientID;

    /**
     *
     * @throws JspException
     * @throws IOException
     */
 
        @Override
	public void doTag() throws JspException, IOException {
            JspWriter out = getJspContext().getOut();
            
        try {
            Class.forName("com.mysql.jdbc.Driver");            
            try {
                try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/vaccine_register","root","")) {
                    Statement readAll = conn.createStatement();
//                ResultSet rs = readAll.executeQuery("SELECT * FROM Vaccinated_Patients WHERE PatientID = "+PatientID);
ResultSet rs = readAll.executeQuery("SELECT * FROM Received_Vaccine");

while(rs.next()){
    out.println("<h3>Administrator of ID "+rs.getString(1)+"</h3>");
    out.println("<p>This is to certfy that "+rs.getString(3)+" "+rs.getString(4)+",</p>");
    out.println("<p>with a National ID Number "+rs.getString(2)+",</p>");
    out.println("<p>received "+rs.getInt(9)+" dose(s) of "+rs.getString(6)+",</p>");
    out.println("<p>on "+rs.getDate(8)+" at "+rs.getString(5)+" Health Centre.</p>");
}
                }
                
            } catch (SQLException ex) {
                out.println("SQLException: " + ex.getMessage());
                out.println("<br />SQLState: " + ex.getSQLState());
                out.println("<br />VendorError: " + ex.getErrorCode());
            }            
        } catch (ClassNotFoundException ex) {
            out.println("Error: Class '"+ex.getMessage()+"' not found");
        }
    }
 
//	public void setPatientID(int patientID) {
//		this.PatientID = patientID;
//	}
}
