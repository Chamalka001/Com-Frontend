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
        <title>Customer SignUp</title>
        
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
        .btn-danger {
            background-color: #fc5c65;
            border: none;
        }
        .btn-danger:hover {
            background-color: #eb3b5a;
        }
    </style>
        
        
        
     
        <script>
            const url =  "http://localhost:8080/Backend/resources/customer/";

            function addCustomer() {
                document.getElementById("btnAddCustomer").innerHTML = document.getElementById("c_name").value;
                const person = {
                    //"id" : document.getElementById("txtID").value,
                    "c_name" : document.getElementById("c_name").value,
                    "email" : document.getElementById("email").value,
                    "c_contact" : document.getElementById("c_contact").value,
                    "c_password" :  document.getElementById("c_password").value
                };
                
                const options = {
                   method : "POST", 
                   headers : {
                       "content-type" : "application/json"
                   },
                   body : JSON.stringify(person)
               };
                
                 fetch(url, options);

            }
            
            
            function getCustomer() {
                let id = document.getElementById("id").value;
                const options = {
                    method : "GET"
                };
                fetch(url + id, options)
                 .then(res => res.json())
                 .then(data => {
                            if (data !== null) {
                               document.getElementById("c_name").value = data.c_name;
                               document.getElementById("email").value = data.email;
                               document.getElementById("c_contact").value = data.c_contact;
                               document.getElementById("c_password").value = data.c_password;
                            } else {
                                alert("Not found");
                            }
                        });
            }
            
            function updateCustomer() {
                let id =  document.getElementById("id").value;
                const person = {
                    "id" : id,
                    "c_name" : document.getElementById("c_name").value,
                    "email" : document.getElementById("email").value,
                    "c_contact" : document.getElementById("c_contact").value,
                    "c_password" :  document.getElementById("c_password").value
                };
                
                const options = {
                   method : "PUT", 
                   headers : {
                       "content-type" : "application/json"
                   },
                   body : JSON.stringify(person)
               };
                
                 fetch(url + id, options);
            }

            function deleteCustomer() {
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
                <h2>Manage Customer</h2>
                <form action="#" method="post">
                    <div class="mb-3">
                        <label for="id" class="form-label">ID:</label>
                        <input type="text" class="form-control" id="id" name="id">
                    </div>
                    <div class="mb-3">
                        <label for="c_name" class="form-label">Name:</label>
                        <input type="text" class="form-control" id="c_name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="c_contact" class="form-label">Contact:</label>
                        <input type="tel" class="form-control" id="c_contact" name="contact" required placeholder="Phone number">
                    </div>
                    <div class="mb-3">
                        <label for="c_password" class="form-label">Password:</label>
                        <input type="password" class="form-control" id="c_password" name="password" required>
                    </div>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                        <button type="submit" class="btn btn-primary" id="btnAddCustomer" onclick="addCustomer()">Add</button>
                        <button type="submit" class="btn btn-secondary" id="btnGetCustomer" onclick="getCustomer()">View</button>
                        <button type="submit" class="btn btn-info" id="btnUpdateCustomer" onclick="updateCustomer()">Update</button>
                        <button type="submit" class="btn btn-danger" id="btnDeleteCustomer" onclick="deleteCustomer()">Delete</button>
                        <button type="button" class="btn btn-warning" id="btnClearCustomer" onclick="clearCustomer()">Clear</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
