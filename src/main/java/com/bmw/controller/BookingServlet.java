package com.bmw.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

import com.bmw.util.DBConnection;

public class BookingServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("userId");

        if (userId == null) {
            response.sendRedirect("login.html");
            return;
        }

        String carName = request.getParameter("carName");
        String phone = request.getParameter("phone");
        String downPayment = request.getParameter("downPayment");

        try {
            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO bookings(user_id, car_name, phone, down_payment) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setString(2, carName);
            ps.setString(3, phone);
            ps.setString(4, downPayment);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("cart");
    }
}