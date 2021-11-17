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
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author mike
 */
public class SelectFromTable extends SimpleTagSupport {   
    
    private String table;
    private String where = null;
    private String displayformat;    
    
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();            
        try {
            Class.forName("com.mysql.jdbc.Driver");            
            try {
                Connection conn =
                DriverManager.getConnection("jdbc:mysql://localhost/vaccine_administration_tracker","nadUser","password");
            
                Statement readAll = conn.createStatement();
                ResultSet rs = null;
                if(where == null){
                   rs = readAll.executeQuery("SELECT * FROM "+table); 
                }else{  
                    rs = readAll.executeQuery("SELECT * FROM "+table+" WHERE "+where);
                }
                
                ResultSetMetaData rsmd = rs.getMetaData();
                int columnCount = rsmd.getColumnCount();
                
                if(displayformat == "table"){                    
                    out.println("<table border='1'>");
                    out.println("<tr>");
                    for (int i = 1; i <= columnCount; i++ ) {
                        String columnName = rsmd.getColumnName(i);                        
                        out.println("<th>"+columnName+"</th>");
                    }
                    out.println("</tr>");
                    
                    while (rs.next()) {
                        out.println("<tr>");
                        for (int i = 1; i <= columnCount; i++) {
                            String columnValue = rs.getString(i);
                            out.print("<td>"+columnValue+"</td>");
                        }
                        out.println("</tr>");
                    }                   
                    
                    out.println("</table>");
                }  

                if(displayformat == "list"){    
                    
                    while (rs.next()) {
                        for (int i = 1; i <= columnCount; i++) {
                            String columnName = rsmd.getColumnName(i);                        
                            String columnValue = rs.getString(i);
                            out.print(columnName+": "+columnValue+"<br />");
                        }
                        out.println("<br />");
                    }                   
                }
                
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
    public void setDisplayFormat(String DisplayFormat) {
        this.displayformat = DisplayFormat;
    }
    public void setWhere(String Where) {
        this.where = Where;
    }
    
}
