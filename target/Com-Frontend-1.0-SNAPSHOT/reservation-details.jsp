<%-- 
    Document   : reservation-details
    Created on : 03-Sep-2024, 18:11:25
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
        .form-control, .form-select {
            background-color: #3a3a3a;
            border: none;
            color: #f0f0f0;
            margin-bottom: 20px;
            font-weight: 300;
        }
        .form-control:focus, .form-select:focus {
            background-color: #3a3a3a;
            box-shadow: 0 0 0 0.2rem rgba(78, 205, 196, 0.25);
            color: #f0f0f0;
        }
        .btn {
            font-weight: 400;
            padding: 10px 20px;
        }
        .btn-primary {
            background-color: #ff6b6b;
            border: none;
            margin-right: 10px;
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
            const url =  "http://localhost:8080/Backend/resources/reservation/";

            function addReservation() {
                document.getElementById("btnAddReservation").innerHTML = document.getElementById("c_name").value;
                const person = {
                    //"id" : document.getElementById("txtID").value,
                    "c_name" : document.getElementById("c_name").value,
                    "date" : document.getElementById("date").value,
                    "time" : document.getElementById("time").value,
                    "tables" : document.getElementById("tables").value,
                    "guests" : document.getElementById("guests").value,
                    "decoration" : document.getElementById("decoration").value,
                    "meal" : document.getElementById("meal").value,
                    "contact" :  document.getElementById("contact").value
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
            
            
            function getReservation() {
                let id = document.getElementById("id").value;
                const options = {
                    method : "GET"
                };
                fetch(url + id, options)
                 .then(res => res.json())
                 .then(data => {
                            if (data !== null) {
                               document.getElementById("c_name").value = data.c_name;
                               document.getElementById("date").value = data.date;
                               document.getElementById("time").value = data.time;
                               document.getElementById("tables").value = data.tables;
                               document.getElementById("guests").value = data.guests;
                               document.getElementById("decoration").value = data.decoration;
                               document.getElementById("meal").value = data.meal;
                               document.getElementById("contact").value = data.contact;
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
                <h2>Make a Reservation</h2>
                <form action="#" method="POST">
                    
                    <div class="mb-3">
                        <label for="c_name" class="form-label">Name:</label>
                        <input type="text" class="form-control" id="c_name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="date" class="form-label">Reservation Date:</label>
                        <input type="date" class="form-control" id="date" name="date" required>
                    </div>
                    <div class="mb-3">
                        <label for="time" class="form-label">Reservation Time:</label>
                        <input type="time" class="form-control" id="time" name="time" required>
                    </div>
                    <div class="mb-3">
                        <label for="tables" class="form-label">Number of Tables:</label>
                        <input type="number" class="form-control" id="tables" name="tables" min="1" max="10" required>
                    </div>
                    <div class="mb-3">
                        <label for="guests" class="form-label">Number of Guests:</label>
                        <input type="number" class="form-control" id="guests" name="guests" min="2" required>
                    </div>
                    <div class="mb-3">
                        <label for="decoration" class="form-label">Decoration:</label>
                        <select class="form-select" id="decoration" name="decoration" required>
                            <option value="">Select Decoration</option>
                            <option value="Birthday Party">Birthday Party</option>
                            <option value="Bride to Be">Bride to Be</option>
                            <option value="Get Together Party">Get Together Party</option>
                            <option value="Bachelor's Party">Bachelor's Party</option>
                            <option value="Valentine's day">Valentine's day</option>
                            <option value="Couple out">Couple out</option>
                            <option value="Dinning">Dining</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="meal" class="form-label">Meal Package:</label>
                        <select class="form-select" id="meal" name="meal" required>
                            <option value="">Select Meal</option>
                            <option value="Meal for 2">Meal for 2</option>
                            <option value="Meal for 4">Meal for 4</option>
                            <option value="Meal for 8">Meal for 8</option>
                            <option value="Meal for 10">Meal for 10</option>
                            <option value="Meal for 15">Meal for 15</option>
                            <option value="Meal for 15+">Meal for 15+</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="contact" class="form-label">Contact:</label>
                        <input type="tel" class="form-control" id="contact" name="contact" required placeholder="Phone number">
                    </div>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                        <button type="submit" class="btn btn-primary" id="btnAddReservation" onclick="addReservation()">Add</button>
                        
                        <button type="button" class="btn btn-secondary" id="pay" onclick="window.location.href='customer-payment.jsp'">Make Payment</button>
                        <button type="button" class="btn btn-danger" id="btnClearReservation" onclick="clearReservation()">Clear</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
