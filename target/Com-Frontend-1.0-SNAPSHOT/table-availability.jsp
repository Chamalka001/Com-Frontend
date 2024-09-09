<%-- 
    Document   : table-details
    Created on : 03-Sep-2024, 18:11:40
    Author     : Dinindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tABLE AVAILABILITY</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .container {
            width: 90%;
            max-width: 1000px;
        }
        .table-container {
            background-color: #1e1e1e;
            border-radius: 15px;
            padding: 2rem;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }
        .table {
            background-color: transparent;
            font-size: 1.1rem;
        }
        .table thead {
            background-color: #2c2c2c;
        }
        .table thead th {
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            padding: 1.2rem 1rem;
        }
        .table tbody td {
            padding: 1.2rem 1rem;
            vertical-align: middle;
        }
        .status-badge {
            font-size: 0.9rem;
            padding: 0.5em 1em;
            border-radius: 50px;
            font-weight: 600;
        }
        .status-available {
            background-color: #4CAF50;
        }
        .status-occupied {
            background-color: #F44336;
        }
        .status-reserved {
            background-color: #FFC107;
            color: #000;
        }
        h1 {
            font-size: 2.5rem;
            font-weight: 600;
            margin-bottom: 2rem;
            text-align: center;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="table-container">
            <h1>Table Availability</h1>
            <div class="table-responsive">
                <table class="table table-dark table-hover">
                    <thead>
                        <tr>
                            <th>Table</th>
                            <th>Seats</th>
                            <th>Location</th>
                            <th>Status</th>
                            <th>Next Available</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>2</td>
                            <td>Window</td>
                            <td><span class="status-badge status-available">Available</span></td>
                            <td>Now</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>4</td>
                            <td>Outdoor</td>
                            <td><span class="status-badge status-occupied">Occupied</span></td>
                            <td>7:30 PM</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>6</td>
                            <td>Indoor</td>
                            <td><span class="status-badge status-reserved">Reserved</span></td>
                            <td>8:00 PM</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>2</td>
                            <td>Bar</td>
                            <td><span class="status-badge status-available">Available</span></td>
                            <td>Now</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>8</td>
                            <td>Private Room</td>
                            <td><span class="status-badge status-occupied">Occupied</span></td>
                            <td>9:00 PM</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
