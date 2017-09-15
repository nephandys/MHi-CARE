<!DOCTYPE HTML>
<html>
	<head>
		<title>MHi-TRACK</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="static/assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="static/assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="static/assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="static/assets/css/ie9.css" /><![endif]-->
	</head>
	<body class="no-sidebar">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<div id="header" class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.html">MHi-CARE</a></h1>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a href="patient.html">Patient</a></li>
									<li><a href="provider.html">Provider</a>
										<ul>
											<li><a href="request">MHi-REQUEST</a></li>
											<li><a href="#">MHi-TRACK</a></li>
											<li><a href="library">MHi-LIBRARY</a></li>
											<li><a href="faq">MHi-FAQ</a></li>											
										</ul>
									</li>
									<li class="break"><a href="resources">Resources</a>
										<ul>
											<li><a href="resources/patresource.html">Patient</a></li>
											<li><a href="resources/proresource.html">Provider</a></li>										
										</ul>
									</li>
									<li><a href="about.html">About</a></li>
								</ul>
							</nav>

					</div>
				</div>

			<!-- Main -->
				<div class="wrapper">
					<div class="container" id="main">

						<!-- Content -->
								<header>
									<h2>Welcome to MHi-TRACK</h2>
									<p>Please complete the form below and we will respond to your
									request as soon as possible.</p>
								</header>
								<a href="#" class="image featured"><img src="static/images/gradient2.png" alt="" /></a>
								<form method="post" action="mailto:jstraub2@jhmi.edu" enctype="text/plain">
									<div class="row 50%">
										<div class="6u 12u(mobile)">
											<input name="name" placeholder="Name" type="text" />
										</div>
										<div class="6u 12u(mobile)">
											<input name="date" placeholder="Date" type="text" />
										</div>
									</div>
									<div class="row 50%">
										<div class="6u 12u(mobile)">
											<input name="email" placeholder="Email" type="email" />
										</div>
										<div class="6u 12u(mobile)">
											<input name="department" placeholder="Department" type="text" />
										</div>
									</div>
									<div class="row 50%">
										<div class="6u 12u(mobile)">
											<input name="study pi" placeholder="Study PI" type="text" />
										</div>
										<div class="6u 12u(mobile)">
											<input name="study title" placeholder="Study Title" type="text" />
										</div>
									</div>
									<div class="row 50%">
										<div class="6u 12u(mobile)">
											<input name="contact" placeholder="Contact (if different from PI)" type="text" />
										</div>
										<div class="6u 12u(mobile)">
											<input name="irb" placeholder="IRB Status (IRB number/name and status)" type="text" />
										</div>
									</div>
									<div class="row 50%">
										<div class="6u 12u(mobile)">
											<input name="funding" placeholder="Funding Available (enter cost center number)" type="text" />
										</div>
										<div class="6u 12u(mobile)">
											<input name="frequency" placeholder="Extract Frequency (1x/daily/weekly/monthly/etc)" type="text" />
										</div>
									</div>
									<div class="row 50%">
										<div class="6u 12u(mobile)">
											<input name="data source" placeholder="Data Source (EPIC/REDCap/etc)" type="text" />
										</div>
										<div class="6u 12u(mobile)">
											<input name="structure" placeholder="Extract Structure (Excel/pipe-delimited/CSV/SQL tables)" type="text" />
										</div>
									</div>
									<div class="row 50%">
										<div class="6u 12u(mobile)">
											<input name="delivery" placeholder="Data Delivered to... (sever-name/share name/JHBox/etc)" type="text" />
										</div>
										<div class="6u 12u(mobile)">
											<input name="work" placeholder="Work Estimate (estimate in hours)" type="text" />
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<textarea name="extract purpose" placeholder="Extract Purpose - Brief description of study as well as purpose for extracting data"></textarea>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<textarea name="inclusion" placeholder="Data shared with external entity? - Include information on researcher's intent to share outside of JHM. This includes corporate sponsors and multi-site studies. Also include information on what data elements are proposed to be shared and in what format (PHI, limited data set, etc)"></textarea>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<textarea name="inclusion" placeholder="Inclusion Criteria - Only patients with the following criteria will be included in the extract results: Who? (adult or pediatrics?)/Where? (outpatient or inpatient? in specific clinics?)/When? (date/time range)/What? (disease/lab results/meds/other conditions?)"></textarea>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<textarea name="exclusion" placeholder="Exclusion Criteria - Patients with the following criteria will be excluded in the extract results: (Deceased? Other comorbidities? Other exclusions?)"></textarea>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<textarea name="comments" placeholder="Additional Comments or Questions"></textarea>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
										<center>
											<ul class="actions">
												<li><input type="submit" value="Submit Request" /></li>
												<li><input type="reset" value="Clear form" /></li>
											</ul>
											</center>
										</div>
									</div>
								</form>
								<div class="row features">
							<section class="4u 12u(narrower) feature">
								<div class="image-wrapper first">
									<a href="request" class="image featured"><img src="static/images/gradient.png" alt="" /></a>
								</div>
								<header>
									<h3>MHi-REQUEST</h3>
								</header>
								<p><font color="#0b5dba">Do you have a research proposal in mind? Follow the link to learn more
								about submitting your request and moving forward.</font></p>
								<ul class="actions">
									<li><a href="request" class="button">Click Here</a></li>
								</ul>
							</section>
							<section class="4u 12u(narrower) feature">
								<div class="image-wrapper">
									<a href="#" class="image featured"><img src="static/images/gradient.png" alt="" /></a>
								</div>
								<header>
									<h3>MHi-TRACK</h3>
								</header>
								<p><font color="#0b5dba">Already submitted your research proposal? You can keep track your progress
								 by following the link. Progress will be updated on a regular basis.</font></p>
								<ul class="actions">
									<li><a href="#" class="button">Click Here</a></li>
								</ul>
							</section>
							<section class="4u 12u(narrower) feature">
								<div class="image-wrapper">
									<a href="library" class="image featured"><img src="static/images/gradient.png" alt="" /></a>
								</div>
								<header>
									<h3>MHi-LIBRARY</h3>
								</header>
								<p><font color="#0b5dba">A growing library of measures spanning function and symptom domains. Widely
								accepted and used in clinical practice and research.</font></p>
								<ul class="actions">
									<li><a href="library" class="button">Click Here</a></li>
								</ul>
							</section>
						</div>
					</div>
				</div>

			<!-- Footer -->
				<div id="footer-wrapper">
					<div id="footer" class="container">
						<header class="major">
							<h2>Have a question? Contact us!</h2>
							<p>For information and inquiries please use the contact form below. If you are a 
							researcher/provider who would like to use the MHi-CARE toolset see the 
							<em><a href="provider.html">Provider Portal</a></em>
							for resources specific to your needs.</p>
						</header>
						<div class="row">
							<section class="6u 12u(narrower)">
								<form method="post" action="#">
									<div class="row 50%">
										<div class="6u 12u(mobile)">
											<input name="name" placeholder="Name" type="text" />
										</div>
										<div class="6u 12u(mobile)">
											<input name="email" placeholder="Email" type="text" />
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<textarea name="message" placeholder="Message"></textarea>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<ul class="actions">
												<li><input type="submit" value="Send Message" /></li>
												<li><input type="reset" value="Clear form" /></li>
											</ul>
										</div>
									</div>
								</form>
							</section>
							<section class="6u 12u(narrower)">
								<div class="row 0%">
									<ul class="divided icons 6u 12u(mobile)">
										<li class="icon fa-facebook"><a href="https://www.facebook.com/Johns.Hopkins.Medicine/">Facebook</a></li>
										<li class="icon fa-twitter"><a href="https://twitter.com/HopkinsMedicine">Twitter</a></li>
									</ul>
									<ul class="divided icons 6u 12u(mobile)">
										<li class="icon fa-youtube"><a href="https://www.youtube.com/JohnsHopkinsMedicine">YouTube</a></li>
									</ul>
								</div>
							</section>
						</div>
					</div>
					<div id="copyright" class="container">
						<ul class="menu">
							<li><a href="http://www.hopkinsmedicine.org/psychiatry"><img src="static/images/hopkins.png" /></a></li> <br/>
							<li>&copy; Untitled. All rights reserved.</li>
						</ul>
					</div>
				</div>

		</div>

		<!-- Scripts -->

			<script src="static/assets/js/jquery.min.js"></script>
			<script src="static/assets/js/jquery.dropotron.min.js"></script>
			<script src="static/assets/js/skel.min.js"></script>
			<script src="static/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="static/assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="static/assets/js/main.js"></script>

	</body>
</html>