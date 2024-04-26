
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Parking Management System</title>
  <!-- Link to your custom CSS file -->
  <link rel="stylesheet" href="all_component/style.css"> 
</head>
<body>

<div class="container-fluid" style="height:10px; background-color:#00695c"> </div>

<!-- For adding the website name on the top left side -->
<div class="container-fluid p-4">
  <div class="row">
    <div class="col-md-3">
     
      <a class="navbar-brand" href="#"> ParkMyGadi</a> 
    </div>

    <!-- Search bar -->
    <div class="col-md-6">
      <form class="d-flex ml-auto" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>

    <!-- For login and sign up buttons -->
    <div class="col-md-3">
      <a href="login.jsp" class="btn btn-success"> <i class="fa-solid fa-right-to-bracket"></i> Login</a>
      <a href="register.jsp" class="btn btn-primary"><i class="fa-solid fa-user-plus"></i> Sign up</a>
    </div>
  </div>
</div>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <div class="container-fluid">
       
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp"> <i class="fa-solid fa-house"></i> Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Find Parking</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">My Reservation</a>
                </li>
                
                <!-- <li class="nav-item">
                    <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                </li> -->
            </ul>
            <form class="form-inline">
             <!-- <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"> -->
                <button class="btn btn-light" type="submit"><i class="fa-solid fa-gear"></i> Settings</button>
                 <button class="btn btn-light" type="submit"> <i class="fa-solid fa-address-book"></i> Contact Us</button>
            </form>
        </div>
    </div>
</nav>

</body>
</html>