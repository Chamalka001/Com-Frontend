<%-- 
    Document   : query-first
    Created on : 12-Sep-2024, 14:49:02
    Author     : Dinindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
        <style>
            body {
                font-family: 'Poppins', sans-serif;
                background-color: #f8f9fa;
            }
            .reservation-container {
                max-width: 800px;
                margin: 50px auto;
                padding: 30px;
                background-color: #ffffff;
                border-radius: 15px;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
            }
            h1 {
                color: #3c4858;
                font-weight: 600;
                margin-bottom: 30px;
                text-align: center;
            }
            #reservationTable {
                border-collapse: separate;
                border-spacing: 0;
            }
            #reservationTable th, #reservationTable td {
                border: none;
                padding: 12px 15px;
                text-align: left;
            }
            #reservationTable thead {
                background-color: #6c757d;
                color: #ffffff;
            }
            #reservationTable thead th {
                font-weight: 500;
            }
            #reservationTable tbody tr:nth-child(even) {
                background-color: #f8f9fa;
            }
            #reservationTable tbody tr:hover {
                background-color: #e9ecef;
                transition: background-color 0.3s ease;
            }
            #reserve-button {
                background-color: #007bff;
                border: none;
                padding: 10px 20px;
                color: white;
                border-radius: 5px;
                text-decoration: none;
                transition: background-color 0.3s ease;
                display: inline-block;
                margin-top: 20px;
            }
            #reserve-button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>

        <script>

            document.addEventListener('DOMContentLoaded', () => {
                const apiEndpoint = 'http://localhost:8080/Backend/resources/query/'; // Replace with your API endpoint

                async function fetchData() {
                    try {
//            const response = await fetch(apiEndpoint);
//            if (!response.ok) {
//                throw new Error('Network response was not ok');
//            }
//            const data = await response.json();
//            populateTable(data);

                        const options = {
                            method: "GET",
                        };

                        fetch(apiEndpoint, options)
                                .then((res) => res.json())
                                .then((data) => {
                                    if (Array.isArray(data) && data.length > 0) {
                                        populateTable(data);
                                    }
                                });

                    } catch (error) {
                        console.error('There was a problem with the fetch operation:', error);
                    }
                }

                function populateTable(data) {

                    const tableBody = document.querySelector("#paymentTable tbody");
                    // tableBody.innerHTML = "";

                    data.forEach((row) => {
                        const tr = document.createElement("tr");
                        const tdid = document.createElement("td");
                        tdid.textContent = row.id;

                        const tdname = document.createElement("td");
                        tdname.textContent = row.name;


                        tr.appendChild(tdid);
                        tr.appendChild(tdname);

                        tableBody.appendChild(tr);
                    });
                }

                fetchData();
            });
        </script>


        <div class="container reservation-container">
            <h1>Query Data</h1>
            <div class="table-responsive">
                <table id="paymentTable" class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Data will be inserted here by JavaScript -->
                    </tbody>
                </table>
            </div>
            <a href="staff-queryDet.jsp" id="reserve-button" class="btn">Get Query Details by ID</a>
        </div>

    </body>
</html>
