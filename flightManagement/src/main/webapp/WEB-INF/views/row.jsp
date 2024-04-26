
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Parking Management System : Index Page</title>

<%--   <%@ include file="component/bootStrap.jsp"> --%>
<%@ include file="component/bootStrap.jsp" %>

<style type="text/css">
.back-img {
	background: url("static/img/img.jpg");
	height: 550px;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.card-body p {
	margin-top: 5px;
}

.container h3 {
	margin-top: 20px;
	margin-bottom: 28px;
}

.crd-ho {
	color: #
}

body {
	background-color: #f7f7f7;
}

.crd-ho:hover {
	background-color: #f7f7f7;
}

.disabled-link {
	pointer-events: none;
	cursor: not-allowed;
}

</style>

</head>
<body>

	<%@ include file="component/navbar.jsp"%> 

	<div class="container-fluid back-img">
		<h2 class="text-center text-white">Parking Management System</h2>
	</div>



	<!-- Start of we provide section  -->
	<div class="container">
		<h3 class="text-center">We Provide</h3>
		<div class="row">
			<div class="col-md-6">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="Image of a bike" src="Vehicle/classic.jpg"
							class="img-thumbnail">
						<p>Two Wheelers</p>
						<div>
							<a href="" class="btn btn-success btn-lg"><i
								class="fas fa-motorcycle"></i> Book Parking</a> <a href=""
								class="btn btn-danger btn-lg disabled-link">Nrs 20/h</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="Image of a bike" src="Vehicle/i5.jpg"
							class="img-thumbnail">
						<p>Four Wheelers</p>
						<div>
							<a href="" class="btn btn-success btn-lg"><i
								class="fas fa-car"></i> Book Parking</a> <a href=""
								class="btn btn-danger btn-lg disabled-link">Nrs 25/h</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End of we provide section  -->

	<!-- FOOTER -->
	<%-- <%@ include file="component/footer.jsp"%> --%>
</body>
</html>