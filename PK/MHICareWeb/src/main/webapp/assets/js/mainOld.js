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
        
        // // MHi-RESOURCES 
    // Study Team Members Table - Add/Remove Rows
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
        
        // Show Hidden Div 
            function showMe (it, box) {
                var vis = (box.checked) ? "block" : "none";
                document.getElementById(it).style.display = vis;
            }
        
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
                    if(!this.checked)
                $('#snapshot').fadeOut('slow');
                    else
                $('#snapshot').fadeIn('slow');
                });
            });
       
        // Patient Registry - Fade In/Out
            $(document).ready(function(){
                $('#patRegistryCheck').change(function(){
                    if(!this.checked)
                $('#registry').fadeOut('slow');
                    else
                $('#registry').fadeIn('slow');
                });
            });
          
        // Electronic Data Capture - Fade In/Out 
            $(document).ready(function(){
                $('#electronicDataCaptureCheck').change(function(){
                    if(!this.checked)
                $('#edc').fadeOut('slow');
                    else
                $('#edc').fadeIn('slow');

                });
            });
           
        // Data Extraction - Fade In/Out
            $(document).ready(function(){
                $('#dataExtractionCheck').change(function(){
                    if(!this.checked)
                $('#dex').fadeOut('slow');
                    else
                $('#dex').fadeIn('slow');
                });
            });
       
        // Patient Recruitment - Fade In/Out 
            $(document).ready(function(){
                $('#patRecruitmentCheck').change(function(){
                    if(!this.checked)
                $('#recruit').fadeOut('slow');
                    else
                $('#recruit').fadeIn('slow');
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
                    if(!this.checked)
                $('#contact').fadeOut('slow');
                    else
                $('#contact').fadeIn('slow');
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
            
//MHi-LIBRARY
        $(document).ready(function() {
                $('#mtable').DataTable( {
                    "pagingType": "full_numbers"
		} );
            } );
})(jQuery);
