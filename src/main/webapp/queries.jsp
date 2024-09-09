<%-- 
    Document   : query
    Created on : 04-Sep-2024, 00:52:21
    Author     : Dinindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Query Page</title>
        
        <script>
            const url =  "http://localhost:8080/Backend/resources/query/";

            function addQuery() {
                document.getElementById("btnAddQuery").innerHTML = document.getElementById("name").value;
                const person = {
                    //"id" : document.getElementById("txtID").value,
                    "name" : document.getElementById("name").value,
                    "query" : document.getElementById("query").value
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
        <div class="form-container">
            <h2>Customer Query Form</h2>
            <form action="#" method="post">
                ID : <input type="text" id="id" />
                
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
                
                <label for="query">Your Query:</label>
                    <textarea id="query" name="query" required></textarea>
                
                
                <button type="submit" id='btnAddQuery' onclick='addQuery()'>Add </button>
                <button type="submit" id='btnGetQuery' onclick='getQuery()'>View </button>
                
                <button type="submit" id='btnClearQuery' onclick='clearQuery()'>Clear</button>
                
                
                
            </form>
        </div>
    </body>
</html>
