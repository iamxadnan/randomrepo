<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Home</title>
    <link rel="stylesheet" type="text/css" href="style.css"> <!-- Link to your CSS file -->
    <style>
        body {
            background-color: #2e0854; /* Dark purple background */
            color: #ffffff; /* White text color */
            font-family: Arial, sans-serif; /* Font family */
        }

        .welcome-text {
            font-size: 24px; /* Font size for the welcome text */
            text-align: center; /* Center align the text */
            opacity: 0; 
            animation: fadeIn 2s forwards; 
        }

        /* Define the fadeIn animation */
        @keyframes fadeIn {
            to {
                opacity: 1; /* Final opacity */
            }
        }
    </style>
</head>
<body>
    <%@include file="empnavbar.jsp" %>
    <div class="welcome-text">Welcome <%=emp.getName() %></div> <!-- Added class for animation -->
</body>
</html>
