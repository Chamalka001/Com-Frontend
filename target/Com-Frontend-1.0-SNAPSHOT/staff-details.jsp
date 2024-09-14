<%-- 
    Document   : customer-signup
    Created on : 28-Aug-2024, 20:24:29
    Author     : Dinindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff SignUp</title>
        
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #1a1a1a;
            color: #f0f0f0;
            font-family: 'Poppins', sans-serif;
        }
        .container {
            background-color: #2a2a2a;
            border-radius: 15px;
            padding: 30px;
            margin-top: 50px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
        }
        h2 {
            color: #ff6b6b;
            margin-bottom: 30px;
            text-align: center;
            font-weight: 600;
        }
        label {
            color: #4ecdc4;
            font-weight: 400;
        }
        .form-control {
            background-color: #3a3a3a;
            border: none;
            color: #f0f0f0;
            margin-bottom: 20px;
            font-weight: 300;
        }
        .form-control:focus {
            background-color: #3a3a3a;
            box-shadow: 0 0 0 0.2rem rgba(78, 205, 196, 0.25);
            color: #f0f0f0;
        }
        .btn {
            font-weight: 400;
            padding: 10px 20px;
            margin-right: 10px;
            margin-bottom: 10px;
        }
        .btn-primary {
            background-color: #ff6b6b;
            border: none;
        }
        .btn-primary:hover {
            background-color: #ff8787;
        }
        .btn-secondary {
            background-color: #4ecdc4;
            border: none;
        }
        .btn-secondary:hover {
            background-color: #45b7ae;
        }
        .btn-info {
            background-color: #45aaf2;
            border: none;
            color: #ffffff;
        }
        .btn-info:hover {
            background-color: #4b7bec;
            color: #ffffff;
        }
        .btn-danger {
            background-color: #fc5c65;
            border: none;
        }
        .btn-danger:hover {
            background-color: #eb3b5a;
        }
        .btn-warning {
            background-color: #fed330;
            border: none;
            color: #2d3436;
        }
        .btn-warning:hover {
            background-color: #f7b731;
            color: #2d3436;
        }
    </style>
     
        <script>
            const url =  "http://localhost:8080/Backend/resources/staff/";

            function addStaff() {
                document.getElementById("btnAddStaff").innerHTML = document.getElementById("s_name").value;
                const person = {
                    //"id" : document.getElementById("txtID").value,
                    "s_name" : document.getElementById("s_name").value,
                    "email" : document.getElementById("email").value,
                    "s_contact" : document.getElementById("s_contact").value,
                    "s_password" :  document.getElementById("s_password").value
                };
                
                const options = {
                   method : "POST", 
                   headers : {
                       "content-type" : "application/json"
                   },
                   body : JSON.stringify(person)
               };
                
                 fetch(url, options)
                        .then(response => {
                            if (response.ok) {
                                alert("Staff Added successfully!");
                                document.getElementById("staffForm").reset();
                                window.history.back();

                            } else {
                                throw new Error("staff successfull!");
                            }
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            alert("An error occurred. Please try again later.");
                        });

            }
            
            
            function getStaff() {
                let id = document.getElementById("id").value;
                const options = {
                    method : "GET"
                };
                fetch(url + id, options)
                 .then(res => res.json())
                 .then(data => {
                            if (data !== null) {
                               document.getElementById("s_name").value = data.s_name;
                               document.getElementById("email").value = data.email;
                               document.getElementById("s_contact").value = data.s_contact;
                               document.getElementById("s_password").value = data.s_password;
                            } else {
                                alert("Not found");
                            }
                        });
            }
            
            function updateStaff() {
                let id =  document.getElementById("id").value;
                const person = {
                    "id" : id,
                    "s_name" : document.getElementById("s_name").value,
                    "email" : document.getElementById("email").value,
                    "s_contact" : document.getElementById("s_contact").value,
                    "s_password" :  document.getElementById("s_password").value
                };
                
                const options = {
                   method : "PUT", 
                   headers : {
                       "content-type" : "application/json"
                   },
                   body : JSON.stringify(person)
               };
                 
                 fetch(url + id, options)
                .then(response => {
                    if (response.ok) {
                        alert("Staff details updated successfully!");
                        document.getElementById("staffForm").reset();
                    } else {
                        throw new Error("Failed to update staff details. Please try again later.");
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert("An error occurred. Please try again later.");
                });
                 
            }

            function deleteStaff() {
                let id = document.getElementById("id").value;
                const options = {
                    method : "DELETE"
                };
                fetch(url + id, options);
                
            }

            
            
            
            

        </script>
        
        
        
    </head>
    <body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h2>Manage Staff</h2>
                <form id="staffForm" action="#" method="post">
                    <div class="mb-3">
                        <label for="id" class="form-label">ID:</label>
                        <input type="text" class="form-control" id="id" name="id">
                    </div>
                    <div class="mb-3">
                        <label for="s_name" class="form-label">Name:</label>
                        <input type="text" class="form-control" id="s_name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="s_contact" class="form-label">Contact:</label>
                        <input type="tel" class="form-control" id="s_contact" name="contact" required placeholder="Phone number">
                    </div>
                    <div class="mb-3">
                        <label for="s_password" class="form-label">Password:</label>
                        <input type="password" class="form-control" id="s_password" name="password" required>
                    </div>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                        <button type="submit" class="btn btn-primary" id="btnAddStaff" onclick="addStaff()">Add</button>
                        <button type="submit" class="btn btn-secondary" id="btnGetStaff" onclick="getStaff()">View</button>
                        <button type="submit" class="btn btn-info" id="btnUpdateStaff" onclick="updateStaff()">Update</button>
                        <button type="submit" class="btn btn-danger" id="btnDeleteStaff" onclick="deleteStaff()">Delete</button>
                        <button type="button" class="btn btn-warning" id="btnClearStaff" onclick="clearStaff()">Clear</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

