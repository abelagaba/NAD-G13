package org.health.booking;

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

/* CREATE A TAG HANDLER  JAVA CLASS*/
public class InsertIntoTable extends SimpleTagSupport {   
    /*DECLARE VARIABLES */
    private String table;
    private String values;    
    
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();  
        /*MAKING CONNECTION TO THE DATABASE*/
        try {
            /*LOADING THE DATABASE DRIVER*/
            Class.forName("com.mysql.jdbc.Driver");            
            try {
                /*ESTABLISHING CONNECTION TO THE DATABASE*/
                Connection conn =
                DriverManager.getConnection("jdbc:mysql://localhost/vaccineadministrationtracker","root","");
            /*EXECUTING QUERY STATEMENT*/
                Statement insertInto = conn.createStatement();
                insertInto.executeUpdate("INSERT INTO "+table+" VALUES ("+values+")");
                                              
                conn.close();
               /*CAPTURE ERROR MESSAGE*/ 
            } catch (SQLException ex) {
                out.println("SQLException: " + ex.getMessage());
                out.println("<br />SQLState: " + ex.getSQLState());
                out.println("<br />VendorError: " + ex.getErrorCode());
            }            
        } catch (ClassNotFoundException ex) {
            out.println("Error: Class '"+ex.getMessage()+"' not found");
        }
    }  
    /* USING THE SET METHOD TO SET VALUES TO THE PRIVATE VARIABLES*/
    public void setTable(String Table) {
        this.table = Table;
    }
    public void setValues(String Values) {
        this.values = Values;
    }
    
}
