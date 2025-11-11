package jakartaEEdataStructureProduct.servlets;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/testConnexion")
public class TestConnecionJDBCServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        java.io.PrintWriter out = resp.getWriter();
        resp.setContentType("text/plain");
        String url = "jdbc:postgresql://localhost:5433/productdb";
        
        try {
        	//There 3 solutions to make the connection  between JEE applications and DATABASES 
        	//Load the driver via Class helper  or the DriverManager
            // Explicitly load the driver with Class helper and forName
            //Class.forName("org.postgresql.Driver");
        	//Or the server.xml in Tomcat configuration
        	// Explicitly load the driver with DriverManager
        	 DriverManager.registerDriver(new org.postgresql.Driver());
            java.sql.Connection cnx = DriverManager.getConnection(url, "postgres", "admin");
            out.print("La connexion est " + (cnx.isClosed() ? "fermée" : "ouverte"));
            cnx.close();
        } catch (SQLException e) {
            out.println("Driver PostgreSQL non trouvé");
            e.printStackTrace();
        } 
        out.close();
    }
    }
