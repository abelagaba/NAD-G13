package org.health.administration;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author mike
 */
public class UpdateTable extends SimpleTagSupport {   
    
    private String table;
    private String newValue;  
    private String where;   
    
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();            
        try {
            Class.forName("com.mysql.jdbc.Driver");            
            try {
                Connection conn =
                DriverManager.getConnection("jdbc:mysql://localhost/vaccine_administration_tracker","nadUser","password");
            
                Statement update = conn.createStatement();
                update.executeUpdate("UPDATE "+table+" SET "+newValue+" WHERE "+where);
                                              
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
    
    public void setTable(String Table) {
        this.table = Table;
    }
    public void setWhere(String Where) {
        this.where = Where;
    }
    public void setNewValue(String NewValue) {
        this.newValue = NewValue;
    }
    
}
