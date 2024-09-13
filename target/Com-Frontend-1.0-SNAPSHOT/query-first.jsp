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
        
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th, td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #f2f2f2;
            }
            #debug {
                margin-top: 20px;
                padding: 10px;
                background-color: #f0f0f0;
                border: 1px solid #ccc;
                white-space: pre-wrap;
                font-family: monospace;
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
        
        
        <h1>Payment Data</h1>
        <table id="paymentTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody >
                <!-- Data will be inserted here by JavaScript -->
            </tbody>
        </table>
        
        <a href="staff-queryDet.jsp" id="reserve-button">Get Query Details by ID</a>
    </body>
</html>
