<%-- 
    Document   : customer-payment
    Created on : 10-Sep-2024, 12:28:14
    Author     : Dinindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
         <title>Payment Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #1a1a1a;
            color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        .container {
            background-color: #2c2c2c;
            border-radius: 15px;
            padding: 30px;
            margin-top: 50px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
        }
        h2 {
            color: #ffc107;
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
        }
        label {
            color: #ffc107;
            font-weight: 500;
        }
        .form-control {
            background-color: #3a3a3a;
            border: none;
            color: #fff;
            border-radius: 8px;
        }
        .form-control:focus {
            background-color: #454545;
            box-shadow: 0 0 0 0.2rem rgba(255, 193, 7, 0.25);
        }
        #btnAddPayment {
            background-color: #ffc107;
            border: none;
            color: #1a1a1a;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 8px;
            transition: all 0.3s ease;
        }
        #btnAddPayment:hover {
            background-color: #e0a800;
            transform: translateY(-2px);
        }
    </style>
        
        
        
        
        
        <script>
            const url =  "http://localhost:8080/Backend/resources/payment/";

            function addPayment() {
                document.getElementById("btnAddPayment").innerHTML = document.getElementById("c_name").value;
                const person = {
                    //"id" : document.getElementById("txtID").value,
                    "c_name" : document.getElementById("c_name").value,
                    "amount" : document.getElementById("amount").value,
                    "card_number" : document.getElementById("card_number").value,
                    "exp_date" : document.getElementById("exp_date").value,
                    "cvv" :  document.getElementById("cvv").value
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

        </script>
        
    </head>
    <body>
    <div class="container">
        <h2>Payment Form</h2>
        <form id="paymentForm">
            <div class="mb-3">
                <label for="c_name" class="form-label">Customer Name:</label>
                <input type="text" class="form-control" id="c_name" name="patientName" required>
            </div>
            <div class="mb-3">
                <label for="amount" class="form-label">Amount:</label>
                <input type="number" class="form-control" id="amount" name="amount" min="0" step="0.01" required>
            </div>
            <div class="mb-3">
                <label for="card_number" class="form-label">Card Number:</label>
                <input type="text" class="form-control" id="card_number" name="cardNumber" placeholder="**** **** **** ****" required>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="exp_date" class="form-label">Expiry Date:</label>
                    <input type="date" class="form-control" id="exp_date" name="date" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="cvv" class="form-label">CVV:</label>
                    <input type="text" class="form-control" id="cvv" name="cvv" maxlength="3" required>
                </div>
            </div>
            <div class="text-center mt-4">
                <button type="button" id="btnAddPayment" onclick="addPayment()">Make Payment</button>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>
