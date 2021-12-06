
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Agaba Abel 19/U/0215
 */
@WebServlet(urlPatterns = {"/HealthCentreAdministration"})
public class HealthCentreAdministration extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String form1=null;
        String form2=null;
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Health Centre Administration Module</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1  align =center>Health Centre Administration</h1>");
            out.println("<h3>Register Health Centres</h3>");       
            form1 ="<form action='"getContextPath()+"/inventory/index.jsp' method='POST'>"
                    + "<table>"
                    + "<tr>"
                    + "<td><b>No.</b></td>"
                    + "<td><b>Health Centre</b></td>"
                    + "<td><b>Location</b></td>"
                    + "<td><b>Vaccinated last month?</b></td>"
                    + "</tr>"
                    + "<tr>"
                    + "<td>1</td>"
                    + "<td><input type='text' name='centre1'></td>"
                    + "<td><input type='text' name='loc1'></td>"
                    + "<td><input type='checkbox' name='vaccinated' value='yes'></td>"
                    + "</tr>"
                    + "<tr>"
                    + "<td>2</td>"
                    + "<td><input type='text' name='centre2'></td>"
                    + "<td><input type='text' name='loc1'></td>"
                    + "<td><input type='checkbox' name='vaccinated' value='yes'></td>"
                    + "</tr>"
                    + "<tr>"
                    + "<td>3</td>"
                    + "<td><input type='text' name='centre3'></td>"
                    + "<td><input type='text' name='loc1'></td>"
                    + "<td><input type='checkbox' name='vaccinated' value='yes'></td>"
                    + "</tr>"
                    + "<tr>"
                    + "<td>4</td>"
                    + "<td><input type='text' name='centre4'></td>"
                    + "<td><input type='text' name='loc1'></td>"
                    + "<td><input type='checkbox' name='vaccinated' value='yes'></td>"
                    + "<tr>"
                    + "<td>5</td>"
                    + "<td><input type='text' name='centre5'></td>"
                    + "<td><input type='text' name='loc1'></td>"
                    + "<td><input type='checkbox' name='vaccinated' value='yes'></td>"
                    + "</tr>"
                    + "</table>"
                    + "<input type='submit' name='submit' value='Save'>"
                    + "</form>";
            out.println(form1);
            out.println("<h3>Monthly Needs Assessment for Vaccines</h3>");
            out.println("(<i>For centres which didn't vaccinate in the last month</i>)");
            form2 ="<form action='"getContextPath()+"/inventory/index.jsp' method='POST'>"
                    + "<table>"
                    + "<tr>"
                    + "<td><b>Health Centre</b></td>"
                    + "<td><b>Number of patients last month<b></td>"
                    + "</tr>"
                    + "<tr>"
                    + "<td><input type='text' name='centre1'></td>"
                    + "<td><input type='text' name='nop1'></td>"
                    + "</tr>"
                    + "<tr>"
                    + "<td><input type='text' name='centre2'></td>"
                    + "<td><input type='text' name='nop2'></td>"
                    + "</tr>"
                    + "<tr>"
                    + "<td><input type='text' name='centre3'></td>"
                    + "<td><input type='text' name='nop3'></td>"
                    + "</tr>"
                    + "<tr>"
                    + "<td><input type='text' name='centre4'></td>"
                    + "<td><input type='text' name='nop4'></td>"
                    + "<tr>"
                    + "<td><input type='text' name='centre5'></td>"
                    + "<td><input type='text' name='nop5'></td>"
                    + "</tr>"
                    + "</table>"
                    + "<input type='submit' name='submit' value='Save'>"
                    + "</form>";
            out.println(form2);
            out.println("<br><br><b>NB: </b><i>Give priority in descending order of number of patients<i>");
            out.println("</body>");
            out.println("</html>");
        }finally {
            out.close();
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
