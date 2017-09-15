<!DOCTYPE HTML>
<html>
    <head>
	<title>MHi-REQUEST</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="./assets/css/main.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>      
    </head>
    
    <!-- BODY STARTS -->
    <body class="no-sidebar">
	<div id="page-wrapper">

            <!-- HEADER -->
            <div id="header-wrapper">
		<div id="header" class="container">

                    <!-- LOGO -->
                    <h1 id="logo"><a href="./index.html">MHi-CARE</a></h1>

                    <!-- NAV -->
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
            
            <!-- MAIN -->
            <div class="wrapper">
		<div class="container" id="main">

                    <!-- CONTENT -->
                    <header>
                        <h2>MHi-REQUEST</h2>
                        <p>When completing the form below please be as specific as possible so that we can be of the greatest assistance.
                            We will respond to your request as quickly as we are able.</p>
                    </header>
                            
                    <form class="ws-validate" id="requestform" method="post" action="doMHIRequestTest">
                        <h3><strong>Study Team Information:</strong></h3>
                        <h3 class="quest-header"><strong>PI:</strong></h3>
                        <div class="row 33%">
                            <div class="4u 8u(mobile)">
                                <label for="piName">Name2: </label>
                                <input  name="piName" id="piName" placeholder="Last Name First Name" type="text" required />
                            </div>
                            <div class="4u 8u(mobile)">
                                <label for="piJhed">JHED ID: </label>
                                <input  name="piJhed" id="piJhed" type="text" required />
                            </div>
                            <div class="4u 8u(mobile)">
                                <label for="piEmail">Email: </label>
                                <input  name="piEmail" id="piEmail" placeholder="you@example.com" type="email" required />
                            </div>
                        </div>
                        <br />
                        <br />
                        <h3 class="quest-header"><strong>Other Study Team Members:</strong></h3>
                        <table id="stmember">
                            <tbody>
                                <tr class="model-row" id="stmemberrow">
                                    <td>Name:
                                        <label for="studyTeamMemberName"></label>
                                        <input type="text"  name="studyTeamMemberName" id="studyTeamMemberName" placeholder="Last Name, First Name"  required disabled/>
                                    </td>
                                    <td>JHED ID:
                                        <label for="studyTeamMemberJHED"></label>
                                        <input type="text"  name="studyTeamMemberJHED" id="studyTeamMemberJHED"   required  disabled/>
                                    </td>
                                    <td>Email:
                                        <label for="studyTeamMemberEmail"></label>
                                        <input type="email"  name="studyTeamMemberEmail" id="studyTeamMemberEmail" placeholder="you@example.com"  required disabled/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <center>                           
                            <button type="button" id="add" onclick="document.getElementById('studyTeamMemberName').disabled=false; document.getElementById('studyTeamMemberJHED').disabled=false; document.getElementById('studyTeamMemberEmail').disabled=false;">Add Study Team Member</button>
                            <button type="button" id="delete" onclick="document.getElementById('studyTeamMemberName').disabled=true; document.getElementById('studyTeamMemberJHED').disabled=true; document.getElementById('studyTeamMemberEmail').disabled=true;">Remove Study Team Member</button>
      
                        </center>
                        <br />                        
                        <div class="row 100%">
                            <div class="12u">
				<center>
                                    <ul class="actions">
                                        <li><input type="submit" value="Submit Request"  /></li>
					<li><input type="reset" value="Clear Form" onclick="window.location.reload(); return confirm('Are you sure you want to clear the form?');" /></li>
                                    </ul>
				</center>
                            </div>
                        </div>
                    </form>                    
                   
		
        <!-- Scripts -->
        <script src="./assets/js/js-webshim/minified/polyfiller.js"></script>
	<script>
            webshim.setOptions('forms', {
                lazyCustomMessages: true,
                addValidators: true  
            }); 
                    
            webshim.setOptions('forms-ext', {
                replaceUI: 'auto',
                widgets: {
                    startView: 2
                }
            });
                    
            webshim.polyfill('forms forms-ext');
                    
            $(function(){
                $('[type="date"].submissionDate').prop('defaultValue', function(){
                    return new Date().toJSON().split('T')[0];
                });
            });
        
            // Study Team Members Table - Add/Remove Rows
            function addTableRow() {
                var $tableRow = $('tr.model-row:first-child');
                var idRow=$tableRow.attr("id");
                
                if(idRow=="stmemberrow")
                {
                    $tableRow.attr("id", " ");
                    $tableRow.show();
                    //alert("first row added");
                }
                else
                {
                    var $clonedRow = $tableRow.clone().show();
                    $clonedRow.find('input').val('').end(); //Remove text from input fields
                    $('#stmember').append($clonedRow);
                    
                }            
                      
  
            }

            function myDeleteFunction() {
                var $memberTRs = $('tr', '#stmember');
	  	// If rowcount === 1, hide first row, don't remove it!!
                var rowCount = $memberTRs.length;
                    if (rowCount === 1) {
                            $('tr.model-row:first-child').hide();
                            $('tr.model-row:first-child').attr("id", "stmemberrow");
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
                
             $('form').submit(function() {
                    alert($(this).serialize());
                    return false;
                });
            });
            

       

        </script>
        <script src="./assets/js/jquery.dropotron.min.js"></script>
	<script src="./assets/js/skel.min.js"></script>
	<script src="./assets/js/util.js"></script>
	<script src="./assets/js/main.js"></script>
    </body>
</html>