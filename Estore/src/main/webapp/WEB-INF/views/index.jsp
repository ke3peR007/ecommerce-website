<html>
<head>
<title>Home</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: #8e7d79;
  color: white;
  text-align: center;
}
</style>
</head>

<body>
	<!-- header -->
	<%@include file="header.jsp" %>


	<div class="container-fuild">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="resources/images/smartphones.jpg" alt="smartphones" width="100%" height="50%">
					<div class="carousel-caption">
						<h3>SmartPhones</h3>
						<p>Here are some of smartphones</p>
					</div>
				</div>

				<div class="item">
					<img src="resources/images/smartwatches.jpg" alt="smartwatches">
					<div class="carousel-caption">
						<h3>smartwatches</h3>
						<p>Here are some of smartwatches</p>
					</div>
				</div>

				<div class="item">
					<img src="resources/images/headphones.jpg" alt="headphones">
					<div class="carousel-caption">
						<h3>headphones</h3>
						<p>here are some headphones</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

	</div>
	
	<!-- foooter -->
	
	<%@include file="footer.jsp" %>
	

</body>
</html>
