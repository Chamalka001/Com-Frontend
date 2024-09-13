<%-- 
    Document   : customer-queries
    Created on : 04-Sep-2024, 00:31:39
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
        textarea.form-control {
            min-height: 150px;
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
            const url =  "http://localhost:8080/Backend/resources/query/";

            function addQuery() {
                document.getElementById("btnAddQuery").innerHTML = document.getElementById("name").value;
                const person = {
                    //"id" : document.getElementById("txtID").value,
                    "name" : document.getElementById("name").value,
                    "query" :  document.getElementById("query").value
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
            
            
            function getQuery() {
                let id = document.getElementById("id").value;
                const options = {
                    method : "GET"
                };
                fetch(url + id, options)
                 .then(res => res.json())
                 .then(data => {
                            if (data !== null) {
                               document.getElementById("name").value = data.name;
                               document.getElementById("query").value = data.query;
                            } else {
                                alert("Not found");
                            }
                        });
            }
        </script>
        
    </head>
    <body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h2>Tell us about your experience</h2>
                <form action="#" method="post">
                    
                    <div class="mb-3">
                        <label for="name" class="form-label">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="query" class="form-label">Your Query:</label>
                        <textarea class="form-control" id="query" name="query" required></textarea>
                    </div>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                        <button type="submit" class="btn btn-primary" id="btnAddQuery" onclick="addQuery()">Add</button>
                        
                        <button type="button" class="btn btn-warning" id="btnClearQuery" onclick="clearQuery()">Clear</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
