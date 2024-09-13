<%-- 
    Document   : customer-login
    Created on : 03-Sep-2024, 21:53:10
    Author     : Dinindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
        <style>
            body {
                background-color: #1a1a1a;
                color: #f0f0f0;
                font-family: 'Poppins', sans-serif;
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100vh;
                margin: 0;
            }
            .login-container {
                background-color: #2a2a2a;
                border-radius: 15px;
                padding: 30px;
                box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
                width: 100%;
                max-width: 400px;
            }
            h1 {
                color: #ff6b6b;
                margin-bottom: 30px;
                text-align: center;
                font-weight: 600;
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
            .btn-primary {
                background-color: #ff6b6b;
                border: none;
                width: 100%;
                padding: 10px;
                font-weight: 400;
            }
            .btn-primary:hover {
                background-color: #ff8787;
            }
            .signup-link {
                text-align: center;
                margin-top: 20px;
            }
            .signup-link a {
                color: #4ecdc4;
                text-decoration: none;
            }
            .signup-link a:hover {
                text-decoration: underline;
            }
            .message {
                margin-top: 20px;
                padding: 10px;
                border-radius: 5px;
                background-color: #3a3a3a;
                text-align: center;
            }
        </style>

        <script>
            async function userLogin() {
                const url = "http://localhost:8080/Backend/resources/login/userlogin";

                const email = document.getElementById("email").value;
                const c_password = document.getElementById("password").value;

                const options = {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json"
                    },
                    body: JSON.stringify({email, c_password})
                };

                const response = await fetch(url, options);

                if (response.ok) {
                    Swal.fire({
                        icon: "success",
                        title: "Login Successful",
                        text: "You will be redirected to the main page."
                    }).then(() => {
                        window.location.href = 'customer-main.jsp';
                    });
                } else {
                    Swal.fire({
                        icon: "error",
                        title: "Login Failed",
                        text: "Invalid email or password. Please try again."
                    });
                }

                document.getElementById("email").value = "";
                document.getElementById("password").value = "";
            }
        </script>


    </head>
    <body>
        <div class="login-container">
            <h1>Customer Login</h1>
            <form id="loginForm">
                <input type="email" id="email" name="email" class="form-control" placeholder="Email" required>
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                <button type="button" class="btn btn-primary" onclick="userLogin()">Login</button>
            </form>
            <div class="signup-link">
                <label>Don't you have an account - <a href="customer-signup.jsp">Sign up</a></label>
            </div>
            <div id="message" class="message"></div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
