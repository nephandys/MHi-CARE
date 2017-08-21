<!DOCTYPE HTML>
<html>
    <head>
	<title>MHi-RESOURCES</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="./assets/css/main.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    </head>
    
    <!-- BODY STARTS -->
    <body class="no-sidebar">
	<div id="page-wrapper">

            <!-- Header -->
            <div id="header-wrapper">
		<div id="header" class="container">

                    <!-- Logo -->
                    <h1 id="logo"><a href="./index.html">MHi-CARE</a></h1>

                    <!-- Nav -->
                    <nav id="nav">
			<ul>
                            <li><a href="./patient.html">Patient</a></li>
                            <li><a href="./provider.html">Provider</a>
                                <ul>
                                    <li><a href="./account">MHi-ACCOUNT</a></li>
                                    <li><a href="./request">MHi-REQUEST</a></li>
                                    <li><a href="./library">MHi-LIBRARY</a></li>
                                    <li><a href="#">MHi-FAQ</a></li>											
				</ul>
                            </li>
                            <li class="break"><a href="./resources">MHi-RESOURCES</a></li>
                            <li><a href="./about.html">About</a></li>
			</ul>
                    </nav>
		</div>
            </div>
            
            <!-- Main -->
            <div class="wrapper">
                <div class="container" id="main">

                    <!-- Content -->
                    <header>
			<h2>Welcome to MHi-RESOURCES</h2>
                        <p>Your one stop for the most up to date information
                            and resources regarding the MHi-CARE initiative.</p>
                    </header>	
                    <h3><em>MHi-CARE Toolset Use Case Diagrams</em></h3>
                    <div id="mhiResourcesSlideShow">
                        <div class="slideshow-container">
                            <div class="mySlides fade">
                                <img class='use-case' id="ss-use" src="./images/ss-use.png">
                            </div>
                            <div id="ssModal" class="modal">
                                <!-- The Close Button -->
                                <span class="close" onclick="document.getElementById('ssModal').style.display='none'">&times;</span>

                                <!-- Modal Content (The Image) -->
                                <img class="modal-content" id="img01">

                                <!-- Modal Caption (Image Text) -->
                                <div id="caption"></div>
                            </div>
                            <div class="mySlides fade">
                                <img class='use-case' id="reg-use" src="./images/reg-use.png">
                            </div>
                            <div id="regModal" class="modal">
                            <!-- The Close Button -->
                                <span class="close" onclick="document.getElementById('regModal').style.display='none'">&times;</span>

                                <!-- Modal Content (The Image) -->
                                <img class="modal-content" id="img02">

                                <!-- Modal Caption (Image Text) -->
                                <div id="caption"></div>
                            </div>
                            <div class="mySlides fade">
                                <img class='use-case' id="edc-use" src="./images/edc-use.png">
                            </div>
                            <div id="edcModal" class="modal">
                                <!-- The Close Button -->
                                <span class="close" onclick="document.getElementById('edcModal').style.display='none'">&times;</span>

                                <!-- Modal Content (The Image) -->
                                <img class="modal-content" id="img03">

                                <!-- Modal Caption (Image Text) -->
                                <div id="caption"></div>
                            </div>
                            <div class="mySlides fade">
                                <img class='use-case' id="dex-use" src="./images/dex-use.png">
                            </div> 
                            <div id="dexModal" class="modal">
                                <!-- The Close Button -->
                                <span class="close" onclick="document.getElementById('dexModal').style.display='none'">&times;</span>

                                <!-- Modal Content (The Image) -->
                                <img class="modal-content" id="img04">

                                <!-- Modal Caption (Image Text) -->
                                <div id="caption"></div>
                            </div>
                            <div class="mySlides fade">
                                <img class='use-case' id="rec-use" src="./images/rec-use.png">
                            </div>
                            <div id="recModal" class="modal">
                                <!-- The Close Button -->
                                <span class="close" onclick="document.getElementById('recModal').style.display='none'">&times;</span>

                                <!-- Modal Content (The Image) -->
                                <img class="modal-content" id="img05">

                                <!-- Modal Caption (Image Text) -->
                                <div id="caption"></div>
                            </div>
                            <div class="resourcesSlideShowPrevNext">
                                <a class="prev" id="prev" onclick="plusSlides(-1)">&#10094;</a>
                                <a class="next" id="next" onclick="plusSlides(1)">&#10095;</a>
                            </div>
                        </div>
                        <br />
                        <div class="slideShowDots" style="text-align:center">
                            <span class="dot" onclick="currentSlide(1)"></span> 
                            <span class="dot" onclick="currentSlide(2)"></span> 
                            <span class="dot" onclick="currentSlide(3)"></span>
                            <span class="dot" onclick="currentSlide(4)"></span> 
                            <span class="dot" onclick="currentSlide(5)"></span> 
                        </div>
                    </div>
                    <br />
                    <div class="row features">
                        <section class="4u 12u(narrower) feature">
                            <div class="image-wrapper first resourcesImageWrapper">
                                <a href="./track" class="image featured"><img src="./images/gradient.png" alt="" /></a>
                            </div>
                            <header>
                                <h3>MHi-ACCOUNT</h3>
                            </header>
                            <p class="blueText">Already submitted your research proposal? You can keep track your progress
                                by checking your account. Progress will be updated regularly.</p>
                                <ul class="actions">
                                    <li><a href="#" class="button">Click Here</a></li>
				</ul>
                        </section>
                        <section class="4u 12u(narrower) feature">
                            <div class="image-wrapper resourcesImageWrapper">
                                <a href="#" class="image featured"><img src="./images/gradient.png" alt="" /></a>
                            </div>
                            <header>
                                <h3>MHi-LIBRARY</h3>
                            </header>
                            <p class="blueText">A growing library of measures spanning function and symptom domains. Widely
                                accepted and used in clinical practice and research.</p>
                                <ul class="actions">
                                    <li><a href="#" class="button">Click Here</a></li>
                                </ul>
                        </section>
                        <section class="4u 12u(narrower) feature">
                            <div class="image-wrapper resourcesImageWrapper">
                                <a href="#" class="image featured"><img src="./images/gradient.png" alt="" /></a>
                            </div>
                            <header>
                                <h3>MHi-RESOURCES</h3>
                            </header>
                            <p class="blueText">Would you like more information about MHi-CARE? Are you interested
                                in finding out how to make use of MHi-CARE in your clinical practice?</p>
                                <ul class="actions">
                                    <li><a href="./library" class="button">Click Here</a></li>
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
                            <em><a href="./provider.html">Provider Portal</a></em> for resources specific to your needs.</p>
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
                    <ul>
                        <li><a href="http://www.hopkinsmedicine.org/psychiatry"><img src="./images/hopkins.png" /></a></li>
                        <li>&copy; Untitled. All rights reserved.</li>
                    </ul>
                </div>
            </div>
	</div>
        
        <!-- Scripts -->
	<script type="text/javascript">
            // Get the modal
            var modal = document.getElementById('ssModal');
            
            // Get the image and insert it inside the modal - use its "alt" text as a caption
            var img = document.getElementById('ss-use');
            var modalImg = document.getElementById("img01");
            var captionText = document.getElementById("caption");
            img.onclick = function(){
                modal.style.display = "block";
                modalImg.src = this.src;
                captionText.innerHTML = this.alt;
            }  
            
            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];
            
            // When the user clicks on <span> (x), close the modal
            span.onclick = function() { 
                modal.style.display = "none";
            };    
            // Get the modal
            var modal = document.getElementById('regModal');
            
            // Get the image and insert it inside the modal - use its "alt" text as a caption
            var img = document.getElementById('reg-use');
            var modalImg = document.getElementById("img02");
            var captionText = document.getElementById("caption");
            img.onclick = function(){
                modal.style.display = "block";
                modalImg.src = this.src;
                captionText.innerHTML = this.alt;
            };
            
            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];
            
            // When the user clicks on <span> (x), close the modal
            span.onclick = function() { 
                modal.style.display = "none";
            };
            
            // Get the modal
            var modal = document.getElementById('edcModal');

            // Get the image and insert it inside the modal - use its "alt" text as a caption
            var img = document.getElementById('edc-use');
            var modalImg = document.getElementById("img03");
            var captionText = document.getElementById("caption");
            img.onclick = function(){
                modal.style.display = "block";
                modalImg.src = this.src;
                captionText.innerHTML = this.alt;
            };

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks on <span> (x), close the modal
            span.onclick = function() { 
                modal.style.display = "none";
            };
       
            // Get the modal
            var modal = document.getElementById('dexModal');

            // Get the image and insert it inside the modal - use its "alt" text as a caption
            var img = document.getElementById('dex-use');
            var modalImg = document.getElementById("img04");
            var captionText = document.getElementById("caption");
            img.onclick = function(){
                modal.style.display = "block";
                modalImg.src = this.src;
                captionText.innerHTML = this.alt;
            };

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks on <span> (x), close the modal
            span.onclick = function() { 
                modal.style.display = "none";
            };
        
            // Get the modal
            var modal = document.getElementById('recModal');

            // Get the image and insert it inside the modal - use its "alt" text as a caption
            var img = document.getElementById('rec-use');
            var modalImg = document.getElementById("img05");
            var captionText = document.getElementById("caption");
            img.onclick = function(){
                modal.style.display = "block";
                modalImg.src = this.src;
                captionText.innerHTML = this.alt;
            };

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks on <span> (x), close the modal
            span.onclick = function() { 
                modal.style.display = "none";
            };
      
            var slideIndex = 1;
                showSlides(slideIndex);

            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                if (n > slides.length) {slideIndex = 1;} 
                if (n < 1) {slideIndex = slides.length;}
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none"; 
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex-1].style.display = "block"; 
                dots[slideIndex-1].className += " active";
            }
        </script>
        <script src="./assets/js/jquery.dropotron.min.js"></script>
	<script src="./assets/js/skel.min.js"></script>
	<script src="./assets/js/util.js"></script>
	<script src="./assets/js/main.js"></script>
    </body>
</html>