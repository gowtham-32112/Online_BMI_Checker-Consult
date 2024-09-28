package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignInServices
 */
@WebServlet("/SignInServices")
public class SignInServices extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bmi", "root", "Amma@2005")) {
            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, password);

                HttpSession session = request.getSession();

                try (ResultSet rs = preparedStatement.executeQuery()) {
                    if (rs.next()) {
                        String name = rs.getString("name");
                        username = rs.getString("username");
                        password = rs.getString("password");

                        session.setAttribute("name", name);
                        session.setAttribute("username", username);
                        session.setAttribute("password", password);

                        response.sendRedirect("bmicalc.jsp");
                    } else {
                        // Login failed, return to login page with error message
                        request.setAttribute("errorMessage", "Invalid username or password");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                }
            }
        } catch (SQLException e) {
            throw new ServletException("Database error during login", e);
        }
    }
}
