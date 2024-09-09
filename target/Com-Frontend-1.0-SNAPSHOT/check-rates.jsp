<%-- 
    Document   : ratings
    Created on : 04-Sep-2024, 00:25:20
    Author     : Dinindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        html, body {
            height: 100%;
        }
        body {
            background-color: #121212;
            font-family: 'Poppins', sans-serif;
            color: #e0e0e0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }
        .ratings-container {
            max-width: 900px;
            width: 100%;
            margin: 2rem auto;
            padding: 2rem;
        }
        .card {
            background-color: #1e1e1e;
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            transition: all 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.5);
        }
        .card-header {
            background-color: #2c2c2c;
            color: #ffffff;
            border-radius: 15px 15px 0 0 !important;
            font-weight: 600;
            font-size: 1.2rem;
            padding: 1rem;
        }
        .rating-big {
            font-size: 4rem;
            font-weight: bold;
            color: #00e6e6;
            text-shadow: 0 0 10px rgba(0, 230, 230, 0.5);
        }
        .rating-stars {
            font-size: 1.5rem;
            color: #00e6e6;
        }
        .progress {
            height: 10px;
            border-radius: 5px;
            background-color: #2c2c2c;
        }
        .progress-bar {
            border-radius: 5px;
        }
        .category-name {
            color: #b0b0b0;
        }
        .category-rating {
            font-weight: 600;
            color: #ffffff;
        }
        h1 {
            color: #00e6e6;
            font-weight: 600;
            margin-bottom: 2rem;
            text-shadow: 0 0 10px rgba(0, 230, 230, 0.3);
        }
        .review-author {
            color: #00e6e6;
        }
        .gradient-overlay {
            background: linear-gradient(45deg, #00e6e6, #4ecdc4);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="container ratings-container">
        <br /><!-- comment -->
        <br />
        <h1 class="text-center mb-5">
            <i class="bi bi-star-fill me-2"></i>
            Gourmet Delight Ratings
        </h1>
        
        <div class="row g-4">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <i class="bi bi-bar-chart-fill me-2"></i>Overall Rating
                    </div>
                    <div class="card-body text-center">
                        <div class="rating-big mb-2">4.7</div>
                        <div class="rating-stars">
                            <i class="bi bi-star-fill"></i>
                            <i class="bi bi-star-fill"></i>
                            <i class="bi bi-star-fill"></i>
                            <i class="bi bi-star-fill"></i>
                            <i class="bi bi-star-half"></i>
                        </div>
                        <p class="mt-3 text-muted">Based on 1,234 reviews</p>
                    </div>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <i class="bi bi-pie-chart-fill me-2"></i>Category Ratings
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <div class="d-flex justify-content-between mb-1">
                                <span class="category-name">Food Quality</span>
                                <span class="category-rating">4.8</span>
                            </div>
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 96%" aria-valuenow="96" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="d-flex justify-content-between mb-1">
                                <span class="category-name">Service</span>
                                <span class="category-rating">4.6</span>
                            </div>
                            <div class="progress">
                                <div class="progress-bar bg-info" role="progressbar" style="width: 92%" aria-valuenow="92" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="d-flex justify-content-between mb-1">
                                <span class="category-name">Ambience</span>
                                <span class="category-rating">4.5</span>
                            </div>
                            <div class="progress">
                                <div class="progress-bar bg-warning" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div>
                            <div class="d-flex justify-content-between mb-1">
                                <span class="category-name">Value for Money</span>
                                <span class="category-rating">4.4</span>
                            </div>
                            <div class="progress">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 88%" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <i class="bi bi-chat-quote-fill me-2"></i>Recent Reviews
                    </div>
                    <div class="card-body">
                        <div class="mb-4">
                            <div class="d-flex justify-content-between">
                                <strong class="review-author">John D.</strong>
                                <div class="rating-stars">
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                </div>
                            </div>
                            <p class="mb-0 mt-2">Absolutely <span class="gradient-overlay">fantastic</span> dining experience! The flavors were exquisite and the service was impeccable.</p>
                        </div>
                        <div>
                            <div class="d-flex justify-content-between">
                                <strong class="review-author">Sarah M.</strong>
                                <div class="rating-stars">
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star"></i>
                                </div>
                            </div>
                            <p class="mb-0 mt-2">Great food and atmosphere. Slightly pricey but <span class="gradient-overlay">worth it</span> for a special occasion.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
