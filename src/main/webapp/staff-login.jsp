<%-- 
    Document   : staff-login
    Created on : 06-Sep-2024, 20:16:15
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
        
        <script>
            
        
            async function StaffUserLogin(){
            const url = "http://localhost:8080/Backend/resources/slogin/suserlogin";
            
            //values ganakota mehema denna variable name ekai database eke name ekai match karala denna
            
            
            const email = document.getElementById("email").value;
            const s_password = document.getElementById("password").value;
            
            const options = {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({email,s_password})
            };
            
            const response = await fetch(url, options);
            
            if(response.ok){
                
                window.location.href = 'admin-main.jsp';
            
            }else{
                Swal.fire({
                    icon: "error",
                    title: "Login Failed",
                    text: "Invalid email or password. Please try again."
                });
                
                document.getElementById("email").value="";
                document.getElementById("password").value="";
            }
            
            
        }
        
        </script>
        
    </head>
    <body>
        <div class="login-container">
            <h1>Staff Login</h1>
            <form id="loginForm">
                <input type="email" id="email" name="email" placeholder="Email" required><br>
                <input type="password" id="password" name="password" placeholder="Password" required><br>
                
                <button type="button" onclick='StaffUserLogin()'>Login </button>
               
                <label>Don't you have an account - <a href="#">Sign up</a></label>
            </form>
            <div id="message" class="message"></div>
        </div>

    </body>
</html>

