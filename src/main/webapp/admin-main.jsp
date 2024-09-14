<%-- 
    Document   : admin-main
    Created on : 06-Sep-2024, 20:32:44
    Author     : Dinindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            #hero-section {
            position: relative;
            height: 100vh;
            background-image: url('images/back-hero.jpg');
            background-size: cover;
            background-position: center;
            color: #fff;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Adjust the opacity as needed */
        }

        #hero-content {
            position: relative;
            z-index: 1;
        }

        #hero-title {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 0.5rem;
        }

        #hero-subtitle {
            font-size: 1.5rem;
            margin-bottom: 2rem;
        }

        #reserve-button {
            font-size: 1.25rem;
            font-weight: bold;
            padding: 0.75rem 1.5rem;
            border-radius: 5px;
            background-color: #28a745;
            color: #fff;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        #reserve-button:hover {
            background-color: #218838;
        }
        </style>
        
    </head>
    <body>
        <section id="hero-section">
            <div id="hero-overlay"></div>
            <div id="hero-content">
                <h1 id="hero-title">Welcome to Our Valuable Staff</h1>
                <p id="hero-subtitle">We highly appreciate your service.</p>
                <a href="staff-table.jsp" id="reserve-button">Manage Staff</a>
                <a href="customer-table.jsp" id="reserve-button">Manage Customer</a>
                <a href="index.html" id="reserve-button">Log Out</a>
            </div>
        </section>
    </body>
</html>

