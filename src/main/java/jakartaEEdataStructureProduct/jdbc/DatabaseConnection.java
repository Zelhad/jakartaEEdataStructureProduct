package jakartaEEdataStructureProduct.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Logger;

public class DatabaseConnection {
    private static final Logger logger = Logger.getLogger(DatabaseConnection.class.getName());

    // Database configuration 
    private static final String URL = "jdbc:postgresql://localhost:5433/productdb";
    private static final String USER = "postgres";
    private static final String PASSWORD = "admin";
    private static final String DRIVER = "org.postgresql.Driver";

    static {
        try {
           
            Class.forName(DRIVER);
            logger.info("PostgreSQL JDBC Driver Registered!");
        } catch (ClassNotFoundException e) {
            logger.log(java.util.logging.Level.SEVERE, "PostgreSQL JDBC Driver not found!", e);
            throw new RuntimeException("PostgreSQL JDBC Driver not found", e);
        }
    }

    public static Connection getConnection() throws SQLException {
        try {
            Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            logger.info("Database connection established successfully!");
            return connection;
        } catch (SQLException e) {
            logger.severe("Failed to establish database connection: " + e.getMessage());
            throw e;
        }
    }

    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close(); 
                logger.info("Database connection closed successfully!");
            } catch (SQLException e) {
                logger.warning("Error closing database connection: " + e.getMessage());
            }
        }
    }
    
    
    public static boolean testConnection() {
        Connection conn = null;
        try {
            conn = getConnection();
            return conn != null && !conn.isClosed();  // Here isClosed() is correct
        } catch (SQLException e) {
            logger.severe("Connection test failed: " + e.getMessage());
            return false;
        } finally {
            closeConnection(conn);  

        }
    }
    
  
    public static void main(String[] args) {
        System.out.println("Testing database connection...");
        if (testConnection()) {
            System.out.println("✅ Database connection test PASSED!");
        } else {
            System.out.println("❌ Database connection test FAILED!");
        }
    }
}