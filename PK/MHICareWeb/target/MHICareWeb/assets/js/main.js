(function($) {

	skel.breakpoints({
		normal: '(max-width: 1280px)',
		narrow: '(max-width: 1080px)',
		narrower: '(max-width: 820px)',
		mobile: '(max-width: 736px)',
		mobilep: '(max-width: 480px)'
	});

	$(function() {

		var	$window = $(window),
			$body = $('body');

		// Disable animations/transitions until the page has loaded.
			$body.addClass('is-loading');

			$window.on('load', function() {
				$body.removeClass('is-loading');
			});

		// Fix: Placeholder polyfill.
			$('form').placeholder();

		// Prioritize "important" elements on narrower.
			skel.on('+narrower -narrower', function() {
				$.prioritize(
					'.important\\28 narrower\\29',
					skel.breakpoint('narrower').active
				);
			});

		// CSS polyfills (IE<9).
			if (skel.vars.IEVersion < 9)
				$(':last-child').addClass('last-child');

		// Dropdowns.
			$('#nav > ul').dropotron({
				mode: 'fade',
				speed: 300,
				alignment: 'center',
				noOpenerFade: true
			});

		// Off-Canvas Navigation.

			// Navigation Button.
				$(
					'<div id="navButton">' +
						'<a href="#navPanel" class="toggle"></a>' +
					'</div>'
				)
					.appendTo($body);

			// Navigation Panel.
				$(
					'<div id="navPanel">' +
						'<nav>' +
							'<a href="index.html" class="link depth-0">Home</a>' +
							$('#nav').navList() +
						'</nav>' +
					'</div>'
				)
					.appendTo($body)
					.panel({
						delay: 500,
						hideOnClick: true,
						resetScroll: true,
						resetForms: true,
						side: 'top',
						target: $body,
						visibleClass: 'navPanel-visible'
					});

			// Fix: Remove navPanel transitions on WP<10 (poor/buggy performance).
				if (skel.vars.os == 'wp' && skel.vars.osVersion < 10)
					$('#navButton, #navPanel, #page-wrapper')
						.css('transition', 'none');

	});
        
        // // MHi-REQUEST 
    // Study Team Members Table - Add/Remove Rows
   /*
           function addTableRow() {
                var $tableRow = $('tr.model-row:first-child');
                var $clonedRow = $tableRow.clone().show();
                    $('#stmember').append($clonedRow);
            }

            function myDeleteFunction() {
                var $memberTRs = $('tr', '#stmember');
	  	// If rowcount === 1, hide first row, don't remove it!!
                var rowCount = $memberTRs.length;
                    if (rowCount === 1) {
                        $('tr.model-row:first-child').hide();
                            return;
                        }
                    $memberTRs.last().remove();
            }

            jQuery(function() {
                $('#delete').click(function() {
                    myDeleteFunction();
                });

                $('#add').click(function() {
                    addTableRow();
                });
            });
            
        // Electronic Data Capture Entrant/Platform Table - Add/Remove Rows
            function addEDCTableRow() {
                var $tableRow = $('tr.edc-row:first-child');
                var $clonedRow = $tableRow.clone().show();
                    $('#edc-how').append($clonedRow);
            }
                
            function myEDCDeleteFunction() {
                var $memberTRs = $('tr', '#edc-how');
                // If rowcount === 1, hide first row, don't remove it!!
                var rowCount = $memberTRs.length;
                    if (rowCount === 1) {
                        $('tr.edc-row:first-child').hide();
                            return;
                        }
                    $memberTRs.last().remove();
            }
                
            jQuery(function() {
                $('#delete-edc').click(function() {
                    myEDCDeleteFunction();
                });

                $('#add-edc').click(function() {
                    addEDCTableRow();
                });
            });
         
        // Contact Study Team Member Table - Add/Remove Rows
            function addConTableRow() {
                var $tableRow = $('tr.contact-row:nth-child(3)');
                var $clonedRow = $tableRow.clone().show();
                    $('#stm-con').append($clonedRow);
            }
                
            function myConDeleteFunction() {
                var $memberTRs = $('tr', '#stm-con');
	  	// If rowcount === 1, hide first row, don't remove it!!
                var rowCount = $memberTRs.length;
                    if (rowCount === 4) {
                        $('tr.contact-row:first-child').hide();
                            return;
                        }
                    $memberTRs.last().remove();
            }
            
            jQuery(function() {
                $('#delete-contact').click(function() {
                    myConDeleteFunction();
                });

                $('#add-contact').click(function() {
                    addConTableRow();
                });
            });
            
        // Patient Study Estimate Gender Other - Fade In/Out 
            $(document).ready(function(){
                $('#patStudyEstimateGenderOther').change(function(){
                    if(this.checked)
                $('#patStudyEstimateGenderOtherValue').fadeIn('slow');
                    else
                $('#patStudyEstimateGenderOtherValue').fadeOut('slow');
                });
            });

        // Patient Study Estimate Race Other - Fade In/Out 
            $(document).ready(function(){
                $('#patStudyEstimateRaceOther').change(function(){
                    if(this.checked)
                $('#patStudyEstimateRaceOtherValue').fadeIn('slow');
                    else
                $('#patStudyEstimateRaceOtherValue').fadeOut('slow');
                });
            });
            
        // Patient Study Estimate Ethnicity Other - Fade In/Out 
            $(document).ready(function(){
                $('#patStudyEstimateEthnicityOther').change(function(){
                    if(this.checked)
                $('#patStudyEstimateEthnicityOtherValue').fadeIn('slow');
                    else
                $('#patStudyEstimateEthnicityOtherValue').fadeOut('slow');
                });
            });
       
        // Patient Study Estimate Location Other - Fade In/Out 
            $(document).ready(function(){
                $('#patStudyEstimateLocationOther').change(function(){
                    if(this.checked)
                $('#patStudyEstimateLocationOtherValue').fadeIn('slow');
                    else
                $('#patStudyEstimateLocationOtherValue').fadeOut('slow');
                });
            });
        
        // Patient Study Estimate Level of Care Other - Fade In/Out 
            $(document).ready(function(){
                $('#patStudyEstimateLevelOfCareOther').change(function(){
                    if(this.checked)
                $('#patStudyEstimateLevelOfCareOtherValue').fadeIn('slow');
                    else
                $('#patStudyEstimateLevelOfCareOtherValue').fadeOut('slow');
                });
            });

        // Patient Registry Gender Other - Fade In/Out 
            $(document).ready(function(){
                $('#patRegistryGenderOther').change(function(){
                    if(this.checked)
                $('#patRegistryGenderOtherValue').fadeIn('slow');
                    else
                $('#patRegistryGenderOtherValue').fadeOut('slow');
                });
            });
        
        // Patient Registry Race Other - Fade In/Out 
            $(document).ready(function(){
                $('#patRegistryRaceOther').change(function(){
                    if(this.checked)
                $('#patRegistryRaceOtherValue').fadeIn('slow');
                    else
                $('#patRegistryRaceOtherValue').fadeOut('slow');
                });
            });
            
        // Patient Registry Ethnicity Other - Fade In/Out 
            $(document).ready(function(){
                $('#patRegistryEthnicityOther').change(function(){
                    if(this.checked)
                $('#patRegistryEthnicityOtherValue').fadeIn('slow');
                    else
                $('#patRegistryEthnicityOtherValue').fadeOut('slow');
                });
            });
       
        // Patient Registry Location Other - Fade In/Out 
            $(document).ready(function(){
                $('#patRegistryLocationOther').change(function(){
                    if(this.checked)
                $('#patRegistryLocationOtherValue').fadeIn('slow');
                    else
                $('#patRegistryLocationOtherValue').fadeOut('slow');
                });
            });
        
        // Patient Registry Level of Care Other - Fade In/Out 
            $(document).ready(function(){
                $('#patRegistryLevelOfCareOther').change(function(){
                    if(this.checked)
                $('#patRegistryLevelOfCareOtherValue').fadeIn('slow');
                    else
                $('#patRegistryLevelOfCareOtherValue').fadeOut('slow');
                });
            });
  
        // Electronic Data Capture Gender Other - Fade In/Out 
            $(document).ready(function(){
                $('#eDataCaptureGenderOther').change(function(){
                    if(this.checked)
                $('#eDataCaptureGenderOtherValue').fadeIn('slow');
                    else
                $('#eDataCaptureGenderOtherValue').fadeOut('slow');
                });
            });
        
        // Electronic Data Capture Race Other - Fade In/Out 
            $(document).ready(function(){
                $('#eDataCaptureRaceOther').change(function(){
                    if(this.checked)
                $('#eDataCaptureRaceOtherValue').fadeIn('slow');
                    else
                $('#eDataCaptureRaceOtherValue').fadeOut('slow');
                });
            });
            
        // Electronic Data Capture Ethnicity Other - Fade In/Out 
            $(document).ready(function(){
                $('#eDataCaptureEthnicityOther').change(function(){
                    if(this.checked)
                $('#eDataCaptureEthnicityOtherValue').fadeIn('slow');
                    else
                $('#eDataCaptureEthnicityOtherValue').fadeOut('slow');
                });
            });
       
        // Electronic Data Capture Location Other - Fade In/Out 
            $(document).ready(function(){
                $('#eDataCaptureLocationOther').change(function(){
                    if(this.checked)
                $('#eDataCaptureLocationOtherValue').fadeIn('slow');
                    else
                $('#eDataCaptureLocationOtherValue').fadeOut('slow');
                });
            });
        
        // Electronic Data Capture Level of Care Other - Fade In/Out 
            $(document).ready(function(){
                $('#eDataCaptureLevelOfCareOther').change(function(){
                    if(this.checked)
                $('#eDataCaptureLevelOfCareOtherValue').fadeIn('slow');
                    else
                $('#eDataCaptureLevelOfCareOtherValue').fadeOut('slow');
                });
            });

        // Data Extraction Gender Other - Fade In/Out 
            $(document).ready(function(){
                $('#dataExtractionGenderOther').change(function(){
                    if(this.checked)
                $('#dataExtractionGenderOtherValue').fadeIn('slow');
                    else
                $('#dataExtractionGenderOtherValue').fadeOut('slow');
                });
            });
        
        // Data Extraction Race Other - Fade In/Out 
            $(document).ready(function(){
                $('#dataExtractionRaceOther').change(function(){
                    if(this.checked)
                $('#dataExtractionRaceOtherValue').fadeIn('slow');
                    else
                $('#dataExtractionRaceOtherValue').fadeOut('slow');
                });
            });
            
        // Data Extraction Ethnicity Other - Fade In/Out 
            $(document).ready(function(){
                $('#dataExtractionEthnicityOther').change(function(){
                    if(this.checked)
                $('#dataExtractionEthnicityOtherValue').fadeIn('slow');
                    else
                $('#dataExtractionEthnicityOtherValue').fadeOut('slow');
                });
            });
       
        // Data Extraction Location Other - Fade In/Out 
            $(document).ready(function(){
                $('#dataExtractionLocationOther').change(function(){
                    if(this.checked)
                $('#dataExtractionLocationOtherValue').fadeIn('slow');
                    else
                $('#dataExtractionLocationOtherValue').fadeOut('slow');
                });
            });
        
        // Data Extraction Level of Care Other - Fade In/Out 
            $(document).ready(function(){
                $('#dataExtractionLevelOfCareOther').change(function(){
                    if(this.checked)
                $('#dataExtractionLevelOfCareOtherValue').fadeIn('slow');
                    else
                $('#dataExtractionLevelOfCareOtherValue').fadeOut('slow');
                });
            });

        // Patient Recruitment Gender Other - Fade In/Out 
            $(document).ready(function(){
                $('#patRecruitmentGenderOther').change(function(){
                    if(this.checked)
                $('#patRecruitmentGenderOtherValue').fadeIn('slow');
                    else
                $('#patRecruitmentGenderOtherValue').fadeOut('slow');
                });
            });
        
        // Patient Recruitment Race Other - Fade In/Out 
            $(document).ready(function(){
                $('#patRecruitmentRaceOther').change(function(){
                    if(this.checked)
                $('#patRecruitmentRaceOtherValue').fadeIn('slow');
                    else
                $('#patRecruitmentRaceOtherValue').fadeOut('slow');
                });
            });
            
        // Patient Recruitment Ethnicity Other - Fade In/Out 
            $(document).ready(function(){
                $('#patRecruitmentEthnicityOther').change(function(){
                    if(this.checked)
                $('#patRecruitmentEthnicityOtherValue').fadeIn('slow');
                    else
                $('#patRecruitmentEthnicityOtherValue').fadeOut('slow');
                });
            });
       
        // Patient Recruitment Location Other - Fade In/Out 
            $(document).ready(function(){
                $('#patRecruitmentLocationOther').change(function(){
                    if(this.checked)
                $('#patRecruitmentLocationOtherValue').fadeIn('slow');
                    else
                $('#patRecruitmentLocationOtherValue').fadeOut('slow');
                });
            });
        
        // Patient Recruitment Level of Care Other - Fade In/Out 
            $(document).ready(function(){
                $('#patRecruitmentLevelOfCareOther').change(function(){
                    if(this.checked)
                $('#patRecruitmentLevelOfCareOtherValue').fadeIn('slow');
                    else
                $('#patRecruitmentLevelOfCareOtherValue').fadeOut('slow');
                });
            });

        // Submitter Info - Fade In/Out 
            $(document).ready(function() {
                $('input[type=radio][name=submitterCheck]').change(function() {
                    if (this.value == 'submitterDifferent') {
                        $('#submitter').fadeIn('slow');
                    }
                    else if (this.value == 'submitterSame') {
                        $('#submitter').fadeOut('slow');
                    }
                });
            });
            
        // Patient Study Estimate - Fade In/Out 
            $(document).ready(function(){
                $('#patStudyEstimateCheck').change(function(){
                    if(this.checked)
                $('#snapshot').fadeIn('slow');
                    else
                $('#snapshot').fadeOut('slow');
                });
            });
       
        // Patient Registry - Fade In/Out
            $(document).ready(function(){
                $('#patRegistryCheck').change(function(){
                    if(this.checked)
                $('#registry').fadeIn('slow');
                    else
                $('#registry').fadeOut('slow');
                });
            });
          
        // Electronic Data Capture - Fade In/Out 
            $(document).ready(function(){
                $('#electronicDataCaptureCheck').change(function(){
                    if(this.checked)
                $('#edc').fadeIn('slow');
                    else
                $('#edc').fadeOut('slow');

                });
            });
           
        // Data Extraction - Fade In/Out
            $(document).ready(function(){
                $('#dataExtractionCheck').change(function(){
                    if(this.checked)
                $('#dex').fadeIn('slow');
                    else
                $('#dex').fadeOut('slow');
                });
            });
       
        // Patient Recruitment - Fade In/Out 
            $(document).ready(function(){
                $('#patRecruitmentCheck').change(function(){
                    if(this.checked)
                $('#recruit').fadeIn('slow');
                    else
                $('#recruit').fadeOut('slow');
                });
            });
      
        // Patient Registry Demographic Info - Fade In/Out
            $(document).ready(function() {
                $('input[type=radio][name=patRegistryDemoInfo]').change(function() {
                    if (this.value == 'patRegistryDemoInfoDifferent') {
                        $('#reg-hide').fadeIn('slow');
                    }
                    else if (this.value == 'patRegistryDemoInfoSame') {
                        $('#reg-hide').fadeOut('slow');
                    }
                });
            });
             
        // Electronic Data Capture Demographic Info - Fade In/Out
            $(document).ready(function() {
                $('input[type=radio][name=eDataCaptureDemoInfo]').change(function() {
                    if (this.value == 'eDataCaptureDemoInfoDifferent') {
                        $('#edc-hide').fadeIn('slow');
                    }
                    else if (this.value == 'eDataCaptureDemoInfoSame') {
                        $('#edc-hide').fadeOut('slow');
                    }
                });
            });
         
        // Data Extraction Demographic Info - Fade In/Out
            $(document).ready(function() {
                $('input[type=radio][name=dataExtractionDemoInfo]').change(function() {
                    if (this.value == 'dataExtractionDemoInfoDifferent') {
                        $('#dex-hide').fadeIn('slow');
                    }
                    else if (this.value == 'dataExtractionDemoInfoSame') {
                        $('#dex-hide').fadeOut('slow');
                    }
                });
            });
            
        // Patient Recruitment Demographic Info - Fade In/Out 
            $(document).ready(function() {
                $('input[type=radio][name=patRecruitmentDemoInfo]').change(function() {
                    if (this.value == 'patRecruitmentDemoInfoDifferent') {
                        $('#rec-hide').fadeIn('slow');
                    }
                    else if (this.value == 'patRecruitmentDemoInfoSame') {
                        $('#rec-hide').fadeOut('slow');
                    }
                });
            });
           
        // Contact Member of Study Team - Fade In/Out - Who to Contact? 
            $(document).ready(function(){
                $('#patRecruitmentContactStudyTeam').change(function(){
                    if(this.checked)
                $('#contact').fadeIn('slow');
                    else
                $('#contact').fadeOut('slow');
                });
            }); 
          
        // How Would You Like Your Data to be Visualized - Fade In/Out
            $(document).ready(function() {
                $('input[type=radio][name=eDataCaptureVisualize]').change(function() {
                    if (this.value == 'visual-yes') {
                        $('#visual-text').fadeIn('slow');
                    }
                    else if (this.value == 'visual-no') {
                        $('#visual-text').fadeOut('slow');
                    }
                });
            });
            */
//MHi-LIBRARY
        $(document).ready(function() {
                $('#mtable').DataTable( {
                    "pagingType": "full_numbers"
		} );
            } );
})(jQuery);
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
            };
