<%@ page import="java.util.List" %>

<%
    List<String[]> bookings = (List<String[]>) request.getAttribute("bookings");
%>

<!DOCTYPE html>
<html>
<head>
<title>My Bookings</title>
<link rel="stylesheet" href="styles.css">
<style>

body{
  font-family: Arial, sans-serif;
  background:#111;
  color:white;
  margin:0;
  padding:40px;
}

.container{
  width:80%;
  margin:auto;
}

h2{
  text-align:center;
  margin-bottom:30px;
}

.cart-table{
  width:100%;
  border-collapse: collapse;
  background:#1c1c1c;
  border-radius:10px;
  overflow:hidden;
}

.cart-table th{
  background:#000;
  padding:15px;
  text-align:center;
  font-weight:bold;
}

.cart-table td{
  padding:15px;
  text-align:center;
  border-bottom:1px solid #333;
}

.cart-table tr:hover{
  background:#222;
}

.remove-btn{
  padding:6px 12px;
  background:red;
  color:white;
  text-decoration:none;
  border-radius:6px;
  font-size:14px;
}

.remove-btn:hover{
  background:darkred;
}

.back-btn{
  display:inline-block;
  margin-top:20px;
  padding:10px 15px;
  background:#007bff;
  color:white;
  text-decoration:none;
  border-radius:6px;
}

</style>
</head>

<body>

<div class="container">

<h2>🚗 My Bookings</h2>

<table class="cart-table">
<tr>
    <th>Car</th>
    <th>Phone</th>
    <th>Down Payment</th>
    <th>Date</th>
    <th>Action</th>
</tr>

<%
    if (bookings != null && !bookings.isEmpty()) {
        for (String[] row : bookings) {
%>
<tr>
    <td><%= row[1] %></td>
    <td><%= row[2] %></td>
    <td>₹<%= row[3] %></td>
    <td><%= row[4] %></td>
    <td>
        <a class="remove-btn" href="removeBooking?id=<%= row[0] %>">Remove</a>
    </td>
</tr>
<%
        }
    } else {
%>
<tr>
    <td colspan="5">No bookings yet 🚘</td>
</tr>
<%
    }
%>

</table>

<a class="back-btn" href="index.jsp">⬅ Back to Home</a>

</div>

</body>
</html>