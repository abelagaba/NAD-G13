package org.health.inventory;


   
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;



/**
 *
 * @author mike
 */
public class SubmitReceivedVaccines extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String AdminID = request.getParameter("ID");
            String NIN = request.getParameter("NIN");
            String FName = request.getParameter("FName");
            String LName = request.getParameter("LName");
            String HealthCentre = request.getParameter("HealthCentre");
            String Vaccine = request.getParameter("Vaccine");
            String Batch_Number = request.getParameter("Batch_Number");
            String Date = request.getParameter("Date");
            String VaccineAmount = request.getParameter("Vaccine_Amount");
            
            try {
            Class.forName("com.mysql.jdbc.Driver");            
            try {
                try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/vaccine_administration_tracker","nadUser","password")) {
                    Statement st = conn.createStatement();
                    
                    Statement insertInto;
                    
                    insertInto = conn.createStatement();
                    String query = "INSERT INTO Recieved_Vaccines VALUES ("+AdminID+", '"+NIN+"', '"+FName+"', '"+LName+"', '"+HealthCentre+"', '"+Vaccine+"', '"+Batch_Number+"', '"+Date+"', '"+VaccineAmount+"')";
                    insertInto.executeUpdate(query);
                }
                
               
//            RequestDispatcher re = request.getRequestDispatcher("allVaccines.jsp");
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Redirection</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h2>Record added successfully</h2>");
//            out.println("<p>Redirect failed!</p>");
            out.println("<a href='allVaccines.jsp'>View all vaccines</a>");
            out.println("</body>");
            out.println("</html>"); 
                
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

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}