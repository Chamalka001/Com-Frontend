<%-- 
    Document   : staff-table
    Created on : 12-Sep-2024, 15:26:58
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
                const apiEndpoint = 'http://localhost:8080/Backend/resources/staff/'; // Replace with your API endpoint

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

                        const tds_name = document.createElement("td");
                        tds_name.textContent = row.s_name;

                        const tdemail = document.createElement("td");
                        tdemail.textContent = row.email;

                        const tds_contact = document.createElement("td");
                        tds_contact.textContent = row.s_contact;

                        const tds_password = document.createElement("td");
                        tds_password.textContent = row.s_password;


                        tr.appendChild(tdid);
                        tr.appendChild(tds_name);
                        tr.appendChild(tdemail);
                        tr.appendChild(tds_contact);
                        tr.appendChild(tds_password);
                        
                      
                                tableBody.appendChild(tr);
                    });
                }

                fetchData();
            });
        </script>
        
        
        
        <h1>Staff Data</h1>
        <table id="paymentTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Contact</th>
                    <th>Password</th>
                </tr>
            </thead>
            <tbody >
                <!-- Data will be inserted here by JavaScript -->
            </tbody>
        </table>
        <a href="staff-details.jsp" id="reserve-button">Manage Staff</a>
    </body>
</html>
