package edu.campusfind.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Creates JDBC connections using environment-based configuration.
 * Keep credentials out of source control.
 */
public final class DatabaseConnection {
    private DatabaseConnection() {}

    public static Connection getConnection() throws SQLException {
        String url = System.getenv().getOrDefault(
                "CAMPUSFIND_DB_URL",
                "jdbc:mysql://localhost:3306/campusfind"
        );
        String user = System.getenv().getOrDefault("CAMPUSFIND_DB_USER", "root");
        String password = System.getenv().getOrDefault("CAMPUSFIND_DB_PASSWORD", "");
        return DriverManager.getConnection(url, user, password);
    }
}
