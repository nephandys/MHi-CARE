<!DOCTYPE HTML>
<html>   
    <head>
        <title>MHi-CARE</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />       
    </head>
    
    <body class="homepage">
        <div id="page-wrapper">
                
                <!-- Header -->
                <jsp:include page="/WEB-INF/templates/header.jsp"/>

		<!-- Hero -->
		<section id="hero" class="container">
                    <header>
			<h2>MHi-CARE
                            <br />
                        </h2>
                    </header>
                    <p>MHi-CARE	is a cutting edge initiative to develop a learning health system that
                        integrates patient care and research in order to achieve better patient outcomes. </p>
                    <ul class="actions">
			<li><a href="#" class="button">Learn More</a></li>
                    </ul>
		</section>
            </div>

            <!-- Features 1 -->
            <div class="wrapper">
		<div class="container">
                    <div class="row">
			<section class="6u 12u(narrower) feature">
                            <div class="image-wrapper first">
				<a href="patient.html" class="image featured first"><img src="images/ptportal.jpg" alt="" /></a>
                            </div>
                            <header>
				<h2>Patient Portal</h2>
                            </header>
                            <p class="blueText">If you are a patient receiving care at Johns Hopkins Psychiatry and would like 
                                to access your MHi-CARE portal. Here you can access surveys and learn about research
                                opportunities</p>
                            <ul class="actions">
				<li><a href="patient.html" class="button">Click Here</a></li>
                            </ul>
			</section>
			<section class="6u 12u(narrower) feature">
                            <div class="image-wrapper">
				<a href="provider.html" class="image featured"><img src="images/providerportal.jpg" alt="" /></a>
                            </div>
                            <header>
				<h2>Provider Portal</h2>
                            </header>
                            <p class="blueText">If you are a provider or researcher at Johns Hopkins Psychiatry and want 
                                information on how to use the tools provided by MHi-CARE to improve patient 
                                care in your clinic.</p>
                            <ul class="actions">
				<li><a href="provider.html" class="button">Click Here</a></li>
                            </ul>
			</section>
                    </div>
		</div>
            </div>
            <!-- Footer -->
            <jsp:include page="/WEB-INF/templates/footer.jsp"/>
	</div>

	<!-- Scripts -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
    </body>
</html>