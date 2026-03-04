package com.bmw.controller;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

import com.bmw.util.DBConnection;

public class CartServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("userId");

        if (userId == null) {
            response.sendRedirect("login.html");
            return;
        }

        List<String[]> bookings = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            String query = "SELECT * FROM bookings WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String[] row = {
                        rs.getString("id"),
                        rs.getString("car_name"),
                        rs.getString("phone"),
                        rs.getString("down_payment"),
                        rs.getString("booking_date")
                };
                bookings.add(row);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        session.setAttribute("bookingCount", bookings.size());

        request.setAttribute("bookings", bookings);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }
}