<!DOCTYPE HTML>
<html>
    <head>
	<title>MHi-Request</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="./assets/css/main.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>   
         <script src="http://malsup.github.com/jquery.form.js"></script> 

 <!--   <script> 
 $.fn.serializeObject = function()
{
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};

$(function() {
    $('form').submit(function() {
        $('#result').text(JSON.stringify($('form').serializeObject()));
        return false;
    });
});  

    </script> -->
 
    
    
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
                                    <li><a href="./account">MHi-Account</a></li>
                                    <li><a href="./request">MHi-Request</a></li>
                                    <li><a href="./library">MHi-Library</a></li>											
				</ul>
                            </li>
                            <li class="break"><a href="./resources">MHi-Resources</a></li>
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
                        <h2>MHi-Request</h2>
                        <p>When completing the form below please be as specific as possible so that we can be of the greatest assistance.
                            We will respond to your request as quickly as we are able.</p>
                    </header>
                    
                    <h2>JSON</h2>
                    <p id="result"></p>
                    
                    <form id="requestform" method="post" action="doMHIRequestTest" enctype="text/plain">
                        <h3><strong>Study Team Information:</strong></h3>
                        <h3 class="quest-header"><strong>PI:</strong></h3>
                        <div class="row 33%">
                            <div class="4u 8u(mobile)">
                                <label for="piFirstName">First Name: </label>
                                <input  name="piFirstName" id="piFirstName" type="text" />
                            </div>
                            <div class="4u 8u(mobile)">
                                <label for="piLastName">Last Name: </label>
                                <input  name="piLastName" id="piLastName" type="text" />
                            </div>
                            <div class="4u 8u(mobile)">
                                <label for="piJhed">JHED ID: </label>
                                <input  name="piJhed" id="piJhed" type="text" />
                            </div>
                        </div>
                        <div class="row 33%">
                            <div class="4u 8u(mobile)">
                                <label for="piEmail">Email: </label>
                                <input  name="piEmail" id="piEmail" placeholder="you@example.com" type="email" />
                            </div>
                            <div class="4u 8u(mobile)">
                                <label for="phone">Contact Phone Number: </label>
                                <input  name="phone" id="phone" type="text" />
                            </div>
                            <div class="4u 8u(mobile)">
                                <label for="submissionDate">Submission Date: </label>
                                <input class="submissionDate" name="submissionDate" id="submissionDate" type="date" />
                            </div>
                        </div>
                        <br />
                        Is the person making the submission different from the PI?
                        <input type="radio"  name="submitterCheck" id="submitterDifferent" value='submitterDifferent' onchange="document.getElementById('submitterFirstName').disabled = !this.checked; document.getElementById('submitterLastName').disabled = !this.checked; document.getElementById('submitterJhedID').disabled = !this.checked; document.getElementById('submitterEmail').disabled = !this.checked;" />
                        <label for='submitterDifferent' class="inline"> Yes </label>
                        <input type="radio" name="submitterCheck" id="submitterSame" value='submitterSame' onchange="document.getElementById('submitterFirstName').disabled = this.checked; document.getElementById('submitterLastName').disabled = this.checked; document.getElementById('submitterJhedID').disabled = this.checked; document.getElementById('submitterEmail').disabled = this.checked;" > 
                        <label for='submitterSame' class="inline"> No </label>
  
                        <div class='hidden' id="submitter">
                            <br />
                            <h3 class="quest-header"><strong>Submitter:</strong></h3>
                            <div class="row 25%">
                                <div class="3u 6u(mobile)">
                                    <label for="submitterFirstName">First Name: </label>
                                    <input  name="submitterFirstName" id="submitterFirstName" type="text" disabled />
                                </div>
                                <div class="3u 6u(mobile)">
                                    <label for="submitterLastName">Last Name: </label>
                                    <input  name="submitterLastName" id="submitterLastName" type="text" disabled />
                                </div>
                                <div class="3u 6u(mobile)">
                                    <label for="submitterJhedID">JHED ID: </label>
                                    <input  name="submitterJhedID" id="submitterJhedID" type="text" disabled />
                                </div>
                                <div class="3u 6u(mobile)">
                                    <label for="submitterEmail">Email: </label>
                                    <input  name="submitterEmail" id="submitterEmail" placeholder="you@example.com" type="email" disabled />
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                        <h3 class="quest-header"><strong>Other Study Team Members:</strong></h3>
                        <table id="stmember">
                            <tbody>
                                <tr class="model-row">
                                    <td>First Name:
                                        <label for="studyTeamMemberFirstName"></label>
                                        <input type="text"  name="studyTeamMemberFirstName[]" id="studyTeamMemberFirstName" disabled />
                                    </td>
                                    <td>Last Name:
                                        <label for="studyTeamMemberLastName"></label>
                                        <input type="text"  name="studyTeamMemberLastName[]" id="studyTeamMemberLastName" disabled />
                                    </td>
                                    <td>JHED ID:
                                        <label for="studyTeamMemberJHED"></label>
                                        <input type="text"  name="studyTeamMemberJHED[]" id="studyTeamMemberJHED" disabled  />
                                    </td>
                                    <td>Email:
                                        <label for="studyTeamMemberEmail"></label>
                                        <input type="email"  name="studyTeamMemberEmail[]" id="studyTeamMemberEmail" placeholder="you@example.com" disabled />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <center>
                            <button type="button" id="add" onclick="document.getElementById('studyTeamMemberFirstName').disabled=this.clicked; document.getElementById('studyTeamMemberLastName').disabled=this.clicked; document.getElementById('studyTeamMemberJHED').disabled=this.clicked; document.getElementById('studyTeamMemberEmail').disabled=this.clicked;">Add Study Team Member</button>
                            <button type="button" id="delete" onclick="document.getElementById('studyTeamMemberFirstName').disabled=true; document.getElementById('studyTeamMemberLastName').disabled=true; document.getElementById('studyTeamMemberJHED').disabled=true; document.getElementById('studyTeamMemberEmail').disabled=true;">Remove Study Team Member</button>
                        </center>
                        <br />
                        <h3><strong>Study Information:</strong></h3>
                        <div class="row 100%">
                            <div class="12u">
                                <label for="studyTitle">Study Title: </label>
                                <input  name="studyTitle" id="studyTitle" type="text" />
                            </div>			
                        </div>
                        <div class="row 100%">
                            <div class="12u">
                                <label for="projectDescription">Brief Description of Project - please provide a brief overview of your research study </label>
                                <textarea  name="projectDescription" id="projectDescription"></textarea>
                            </div>
                        </div>
                        <br />
                        <div class="row 100%">
                            <div class="12u">
                                <h3><strong>MHi-CARE Tools:</strong></h3>
                                <h3 class="quest-header"><strong>Which of the following would you like to do with your specified patient population? Check all that apply</strong></h3>
                                <ul class="requestUOList">
                                    <li><input type="checkbox" name="toolset" id="patStudyEstimateCheck" value="Patient estimate for study design" onchange="document.getElementById('patStudyEstimateAge').disabled = !this.checked; document.getElementById('patStudyEstimateSexMale').disabled = !this.checked; document.getElementById('patStudyEstimateSexFemale').disabled = !this.checked; document.getElementById('patStudyEstimateSexNonBinary').disabled = !this.checked; document.getElementById('patStudyEstimateSexAll').disabled = !this.checked; document.getElementById('patStudyEstimateGenderCisMan').disabled = !this.checked; document.getElementById('patStudyEstimateGenderCisWoman').disabled = !this.checked; document.getElementById('patStudyEstimateGenderTransMan').disabled = !this.checked; document.getElementById('patStudyEstimateGenderTransWoman').disabled = !this.checked; document.getElementById('patStudyEstimateGenderOther').disabled = !this.checked; document.getElementById('patStudyEstimateGenderAll').disabled = !this.checked; document.getElementById('patStudyEstimateRaceAsian').disabled = !this.checked; document.getElementById('patStudyEstimateRaceNativeAmerican').disabled = !this.checked; document.getElementById('patStudyEstimateRaceWhite').disabled = !this.checked; document.getElementById('patStudyEstimateRaceBlack').disabled = !this.checked; document.getElementById('patStudyEstimateRaceHawaiiPacificIslander').disabled = !this.checked; document.getElementById('patStudyEstimateRaceOther').disabled = !this.checked; document.getElementById('patStudyEstimateRaceAll').disabled = !this.checked; document.getElementById('patStudyEstimateEthnicityLatino').disabled = !this.checked; document.getElementById('patStudyEstimateEthnicityNonLatino').disabled = !this.checked; document.getElementById('patStudyEstimateEthnicityOther').disabled = !this.checked; document.getElementById('patStudyEstimateEthnicityAll').disabled = !this.checked; document.getElementById('patStudyEstimateInclusion').disabled = !this.checked; document.getElementById('patStudyEstimateExclusion').disabled = !this.checked; document.getElementById('patStudyEstimateLocationJHH').disabled = !this.checked; document.getElementById('patStudyEstimateLocationJHBMC').disabled = !this.checked; document.getElementById('patStudyEstimateLocationAll').disabled = !this.checked; document.getElementById('patStudyEstimateLocationOther').disabled = !this.checked; document.getElementById('patStudyEstimateLocationInfo').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareOutpatient').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareCaseManagement').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCarePRP').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareSchool').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareMobile').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareDayHospital').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareInpatient').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareOther').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareAll').disabled = !this.checked; document.getElementById('patStudyEstimateLocation').disabled = !this.checked;" >
                                        <label for="patStudyEstimateCheck" class="tool-head inline"> Patient estimate for study design </label><img class="qmark" id="ss-help" src="./images/qmark-icon.png" alt="" title="Obtain an estimate of the number of patients in a specified population" /></li>
                                    <li><input type="checkbox" name="toolset" id="patRegistryCheck" value="Patient registry" onchange="document.getElementById('patRegistryDemoInfoSame').disabled = !this.checked; document.getElementById('patRegistryDemoInfoDifferent').disabled = !this.checked; document.getElementById('patRegistryAge').disabled = !this.checked; document.getElementById('patRegistrySexMale').disabled = !this.checked; document.getElementById('patRegistrySexFemale').disabled = !this.checked; document.getElementById('patRegistrySexNonBinary').disabled = !this.checked; document.getElementById('patRegistrySexAll').disabled = !this.checked; document.getElementById('patRegistryGenderCisMan').disabled = !this.checked; document.getElementById('patRegistryGenderCisWoman').disabled = !this.checked; document.getElementById('patRegistryGenderTransMan').disabled = !this.checked; document.getElementById('patRegistryGenderTransWoman').disabled = !this.checked; document.getElementById('patRegistryGenderOther').disabled = !this.checked; document.getElementById('patRegistryGenderAll').disabled = !this.checked; document.getElementById('patRegistryRaceAsian').disabled = !this.checked; document.getElementById('patRegistryRaceNativeAmerican').disabled = !this.checked; document.getElementById('patRegistryRaceWhite').disabled = !this.checked; document.getElementById('patRegistryRaceBlack').disabled = !this.checked; document.getElementById('patRegistryRaceHawaiiPacificIslander').disabled = !this.checked; document.getElementById('patRegistryRaceOther').disabled = !this.checked; document.getElementById('patRegistryRaceAll').disabled = !this.checked; document.getElementById('patRegistryEthnicityLatino').disabled = !this.checked; document.getElementById('patRegistryEthnicityNonLatino').disabled = !this.checked; document.getElementById('patRegistryEthnicityOther').disabled = !this.checked; document.getElementById('patRegistryEthnicityAll').disabled = !this.checked; document.getElementById('patRegistryInclusion').disabled = !this.checked; document.getElementById('patRegistryExclusion').disabled = !this.checked; document.getElementById('patRegistryLocationJHH').disabled = !this.checked; document.getElementById('patRegistryLocationJHBMC').disabled = !this.checked; document.getElementById('patRegistryLocationAll').disabled = !this.checked; document.getElementById('patRegistryLocationOther').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareOutpatient').disabled = !this.checked; document.getElementById('patRegistryLevelOfCarePRP').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareCaseManagement').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareSchool').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareMobile').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareDayHospital').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareInpatient').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareOther').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareAll').disabled = !this.checked; document.getElementById('patRegistryLocationInfo').disabled = !this.checked; document.getElementById('patRegistryMetricDiagnoses').disabled = !this.checked; document.getElementById('patRegistryMetricMeds').disabled = !this.checked; document.getElementById('patRegistryMetricLabs').disabled = !this.checked; document.getElementById('patRegistryMetricMeasures').disabled = !this.checked; document.getElementById('patRegistryMetricOther').disabled = !this.checked;">
                                        <label for="patRegistryCheck" class="tool-head inline"> Patient registry </label><img class="qmark" src="./images/qmark-icon.png" alt="" title="Track information on patients over time" /></li>
                                    <li><input type="checkbox" name="toolset" id="electronicDataCaptureCheck" value="Electronic data capture" onchange="document.getElementById('eDataCaptureDemoInfoSame').disabled = !this.checked; document.getElementById('eDataCaptureDemoInfoDifferent').disabled = !this.checked; document.getElementById('eDataCaptureAge').disabled = !this.checked; document.getElementById('eDataCaptureSexMale').disabled = !this.checked; document.getElementById('eDataCaptureSexFemale').disabled = !this.checked; document.getElementById('eDataCaptureSexNonBinary').disabled = !this.checked; document.getElementById('eDataCaptureSexAll').disabled = !this.checked; document.getElementById('eDataCaptureGenderCisMan').disabled = !this.checked; document.getElementById('eDataCaptureGenderCisWoman').disabled = !this.checked; document.getElementById('eDataCaptureGenderTransMan').disabled = !this.checked; document.getElementById('eDataCaptureGenderTransWoman').disabled = !this.checked; document.getElementById('eDataCaptureGenderOther').disabled = !this.checked; document.getElementById('eDataCaptureGenderAll').disabled = !this.checked; document.getElementById('eDataCaptureRaceAsian').disabled = !this.checked; document.getElementById('eDataCaptureRaceNativeAmerican').disabled = !this.checked; document.getElementById('eDataCaptureRaceWhite').disabled = !this.checked; document.getElementById('eDataCaptureRaceBlack').disabled = !this.checked; document.getElementById('eDataCaptureRaceHawaiiPacificIslander').disabled = !this.checked; document.getElementById('eDataCaptureRaceOther').disabled = !this.checked; document.getElementById('eDataCaptureRaceAll').disabled = !this.checked; document.getElementById('eDataCaptureEthnicityLatino').disabled = !this.checked; document.getElementById('eDataCaptureEthnicityNonLatino').disabled = !this.checked; document.getElementById('eDataCaptureEthnicityOther').disabled = !this.checked; document.getElementById('eDataCaptureEthnicityAll').disabled = !this.checked; document.getElementById('eDataCaptureInclusion').disabled = !this.checked; document.getElementById('eDataCaptureExclusion').disabled = !this.checked; document.getElementById('eDataCaptureLocationJHH').disabled = !this.checked; document.getElementById('eDataCaptureLocationJHBMC').disabled = !this.checked; document.getElementById('eDataCaptureLocationAll').disabled = !this.checked; document.getElementById('eDataCaptureLocationOther').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareOutpatient').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCarePRP').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareSchool').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareMobile').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareCaseManagement').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareDayHospital').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareInpatient').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareOther').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareAll').disabled = !this.checked; document.getElementById('eDataCaptureLocationInfo').disabled = !this.checked; document.getElementById('eDataCaptureStartDate').disabled = !this.checked; document.getElementById('eDataCaptureFrequency').disabled = !this.checked; document.getElementById('eDataCaptureLength').disabled = !this.checked; document.getElementById('eDataCaptureInfoToCapture').disabled = !this.checked; document.getElementById('eDataCaptureEntrantOfData').disabled = !this.checked; document.getElementById('eDataCapturePlatform').disabled = !this.checked; document.getElementById('eDataCaptureVisualize').disabled = !this.checked; document.getElementById('eDataCaptureDoNotVisualize').disabled = !this.checked;">
                                        <label for="electronicDataCaptureCheck" class="tool-head inline"> Electronic data capture </label><img class="qmark" src="./images/qmark-icon.png" alt="" title="Build tools within and alongside the EMR to capture patient data" /></li>
                                    <li><input type="checkbox" name="toolset" id="dataExtractionCheck" value="Data extraction" onchange="document.getElementById('dataExtractionDemoInfoSame').disabled = !this.checked; document.getElementById('dataExtractionDemoInfoDifferent').disabled = !this.checked; document.getElementById('dataExtractionAge').disabled = !this.checked; document.getElementById('dataExtractionSexMale').disabled = !this.checked; document.getElementById('dataExtractionSexFemale').disabled = !this.checked; document.getElementById('dataExtractionSexNonBinary').disabled = !this.checked; document.getElementById('dataExtractionSexAll').disabled = !this.checked; document.getElementById('dataExtractionGenderCisMan').disabled = !this.checked; document.getElementById('dataExtractionGenderCisWoman').disabled = !this.checked; document.getElementById('dataExtractionGenderTransMan').disabled = !this.checked; document.getElementById('dataExtractionGenderTransWoman').disabled = !this.checked; document.getElementById('dataExtractionGenderOther').disabled = !this.checked; document.getElementById('dataExtractionGenderAll').disabled = !this.checked; document.getElementById('dataExtractionRaceAsian').disabled = !this.checked; document.getElementById('dataExtractionRaceNativeAmerican').disabled = !this.checked; document.getElementById('dataExtractionRaceWhite').disabled = !this.checked; document.getElementById('dataExtractionRaceBlack').disabled = !this.checked; document.getElementById('dataExtractionRaceHawaiiPacificIslander').disabled = !this.checked; document.getElementById('dataExtractionRaceOther').disabled = !this.checked; document.getElementById('dataExtractionRaceAll').disabled = !this.checked; document.getElementById('dataExtractionEthnicityLatino').disabled = !this.checked; document.getElementById('dataExtractionEthnicityNonLatino').disabled = !this.checked; document.getElementById('dataExtractionEthnicityOther').disabled = !this.checked; document.getElementById('dataExtractionEthnicityAll').disabled = !this.checked; document.getElementById('dataExtractionInclusion').disabled = !this.checked; document.getElementById('dataExtractionExclusion').disabled = !this.checked; document.getElementById('dataExtractionLocationJHH').disabled = !this.checked; document.getElementById('dataExtractionLocationJHBMC').disabled = !this.checked; document.getElementById('dataExtractionLocationAll').disabled = !this.checked; document.getElementById('dataExtractionLocationOther').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareOutpatient').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCarePRP').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareCaseManagement').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareSchool').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareMobile').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareDayHospital').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareInpatient').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareOther').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareAll').disabled = !this.checked; document.getElementById('dataExtractionLocationInfo').disabled = !this.checked; document.getElementById('dataExtractionStartDate').disabled = !this.checked; document.getElementById('dataExtractionFrequency').disabled = !this.checked; document.getElementById('dataExtractionEndDate').disabled = !this.checked; document.getElementById('dataExtractionWhatDataToExtract').disabled = !this.checked; document.getElementById('dataExtractionDeliveryLocation').disabled = !this.checked; document.getElementById('dataExtractionDataFormat').disabled = !this.checked; document.getElementById('dataExtractionExternalCollaboration').disabled = !this.checked;">
                                        <label for="dataExtractionCheck" class="tool-head inline"> Data extraction </label><img class="qmark" src="./images/qmark-icon.png" alt="" title="Identify a patient population and extract specified data from the EMR"/></li>
                                    <li><input type="checkbox" name="toolset" id="patRecruitmentCheck" value="Recruitment for research" onchange="document.getElementById('patRecruitmentDemoInfoSame').disabled = !this.checked; document.getElementById('patRecruitmentDemoInfoDifferent').disabled = !this.checked; document.getElementById('patRecruitmentAge').disabled = !this.checked; document.getElementById('patRecruitmentSexMale').disabled = !this.checked; document.getElementById('patRecruitmentSexFemale').disabled = !this.checked; document.getElementById('patRecruitmentSexNonBinary').disabled = !this.checked; document.getElementById('patRecruitmentSexAll').disabled = !this.checked; document.getElementById('patRecruitmentGenderCisMan').disabled = !this.checked; document.getElementById('patRecruitmentGenderCisWoman').disabled = !this.checked; document.getElementById('patRecruitmentGenderTransMan').disabled = !this.checked; document.getElementById('patRecruitmentGenderTransWoman').disabled = !this.checked; document.getElementById('patRecruitmentGenderOther').disabled = !this.checked; document.getElementById('patRecruitmentGenderAll').disabled = !this.checked; document.getElementById('patRecruitmentRaceAsian').disabled = !this.checked; document.getElementById('patRecruitmentRaceNativeAmerican').disabled = !this.checked; document.getElementById('patRecruitmentRaceWhite').disabled = !this.checked; document.getElementById('patRecruitmentRaceBlack').disabled = !this.checked; document.getElementById('patRecruitmentRaceHawaiiPacificIslander').disabled = !this.checked; document.getElementById('patRecruitmentRaceOther').disabled = !this.checked; document.getElementById('patRecruitmentRaceAll').disabled = !this.checked; document.getElementById('patRecruitmentEthnicityLatino').disabled = !this.checked; document.getElementById('patRecruitmentEthnicityNonLatino').disabled = !this.checked; document.getElementById('patRecruitmentEthnicityOther').disabled = !this.checked; document.getElementById('patRecruitmentEthnicityAll').disabled = !this.checked; document.getElementById('patRecruitmentInclusion').disabled = !this.checked; document.getElementById('patRecruitmentExclusion').disabled = !this.checked; document.getElementById('patRecruitmentLocationJHH').disabled = !this.checked; document.getElementById('patRecruitmentLocationJHBMC').disabled = !this.checked; document.getElementById('patRecruitmentLocationAll').disabled = !this.checked; document.getElementById('patRecruitmentLocationOther').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareOutpatient').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCarePRP').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareSchool').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareCaseManagement').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareMobile').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareDayHospital').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareInpatient').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareOther').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareAll').disabled = !this.checked; document.getElementById('patRecruitmentLocationInfo').disabled = !this.checked; document.getElementById('patRecruitmentStartDate').disabled = !this.checked; document.getElementById('patRecruitmentLength').disabled = !this.checked; document.getElementById('patRecruitmentContactPatient').disabled = !this.checked; document.getElementById('patRecruitmentContactStudyTeam').disabled = !this.checked; document.getElementById('patRecruitmentContactProvider').disabled = !this.checked;">
                                        <label for="patRecruitmentCheck" class="tool-head inline"> Recruitment for research </label><img class="qmark" src="./images/qmark-icon.png" alt="" title="Utilize the EMR to recruit patients that meet specified criteria for your study" /></li>
                                </ul>
                            </div>
                        </div>
                        
                        <!-- PATIENT STUDY ESTIMATE -->
                        <div class="hidden" id="snapshot">
                        <h3><strong>Patient Estimate for Study Design:</strong></h3>
                        <h3 class="quest-header"><strong>Who composes the patient population you would like to estimate?</strong></h3>
                        <br />
                            <div class="row 33%">
                                <div class="4u 8u(mobile)">
                                    <label for="patStudyEstimateAge">Age(s) in numbers: </label>
                                    <input  name="patStudyEstimateAge" id="patStudyEstimateAge" type="text" disabled />
                                </div>
                                <div class="3u 6u(mobile)">
                                Sex:  Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateSex" id="patStudyEstimateSexMale" value="Male" disabled />
                                            <label for="patStudyEstimateSexMale" class="inline"> Male </label></li>  
                                        <li><input type="checkbox"  name="patStudyEstimateSex" id="patStudyEstimateSexFemale" value="Female" disabled />
                                            <label for="patStudyEstimateSexFemale"  class="inline"> Female </label></li> 
                                        <li><input type="checkbox"  name="patStudyEstimateSex" id="patStudyEstimateSexNonBinary" value="Non-binary" disabled />
                                            <label for="patStudyEstimateSexNonBinary"  class="inline"> Non-binary </label></li> 
                                        <li><input type="checkbox"  name="patStudyEstimateSex" id="patStudyEstimateSexAll" value="All" disabled />
                                            <label for="patStudyEstimateSexAll" class="inline"> All </label></li> 
                                    </ul>
                                </div>
                                <div class="4u 8u(mobile)">
                                Gender:  Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderCisMan" value="Cis-man" disabled />
                                            <label for="patStudyEstimateGenderCisMan"  class="inline"> Cis-man </label></li>                                         
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderCisWoman" value="Cis-woman" disabled />
                                            <label for="patStudyEstimateGenderCisWoman"  class="inline"> Cis-woman </label></li> 
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderTransMan" value="Trans-man" disabled />
                                            <label for="patStudyEstimateGenderTransMan" class="inline"> Trans-man </label></li> 
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderTransWoman" value="Trans-woman" disabled />
                                            <label for="patStudyEstimateGenderTransWoman" class="inline"> Trans-woman </label></li> 
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderOther" value="Other" onchange="document.getElementById('patStudyEstimateGenderOtherValue').disabled = !this.checked;" disabled />
                                            <label for="patStudyEstimateGenderOther" class="inline"> Other: Please specify </label> <input type="text" name='patStudyEstimateGenderOtherValue' id="patStudyEstimateGenderOtherValue" disabled /></li>
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderAll" value="All" disabled />
                                            <label for="patStudyEstimateGenderAll" class="inline"> All </label></li> 
                                    </ul>
                                </div>
                            </div>
                            <div class="row 33%">
                                <div class="4u 8u(mobile)">
                                Race:  Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceAsian" value="Asian" disabled>
                                            <label for="patStudyEstimateRaceAsian"  class="inline"> Asian </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceNativeAmerican" value="American Indian or Alaska Native" disabled>
                                            <label for="patStudyEstimateRaceNativeAmerican" class="inline"> American Indian or Alaska Native </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceWhite" value="White" disabled>
                                            <label for="patStudyEstimateRaceWhite" class="inline"> White </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceBlack" value="Black or African American" disabled>
                                            <label for="patStudyEstimateRaceBlack" class="inline"> Black or African American </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceHawaiiPacificIslander" value="Native Hawaiian or Other Pacific Islander" disabled>
                                            <label for="patStudyEstimateRaceHawaiiPacificIslander" class="inline"> Native Hawaiian or Other Pacific Islander </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceOther" value="Other" onchange="document.getElementById('patStudyEstimateRaceOtherValue').disabled = !this.checked;" disabled />
                                            <label for="patStudyEstimateRaceOther" class="inline"> Other: Please specify </label><input type="text"  name='patStudyEstimateRaceOtherValue' id="patStudyEstimateRaceOtherValue" disabled /></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceAll" value="All" disabled>
                                            <label for="patStudyEstimateRaceAll" class="inline"> All </label></li>
                                    </ul>
                                </div>
                                <div class="4u 8u(mobile)">
                                Ethnicity:  Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateEthnicity" id="patStudyEstimateEthnicityLatino" value="Hispanic or Latino" disabled>
                                            <label for="patStudyEstimateEthnicityLatino" class="inline"> Hispanic or Latino </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateEthnicity" id="patStudyEstimateEthnicityNonLatino" value="Not Hispanic or Latino" disabled>
                                            <label for="patStudyEstimateEthnicityNonLatino" class="inline"> Not Hispanic or Latino </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateEthnicity" id="patStudyEstimateEthnicityOther" value="Other" onchange="document.getElementById('patStudyEstimateEthnicityOtherValue').disabled = !this.checked;" disabled />
                                            <label for="patStudyEstimateEthnicityOther" class="inline"> Other: Please specify </label><input type="text"  name='patStudyEstimateEthnicityOtherValue' id="patStudyEstimateEthnicityOtherValue" disabled /></li>
                                        <li><input type="checkbox"  name="patStudyEstimateEthnicity" id="patStudyEstimateEthnicityAll" value=" All" disabled>
                                            <label for="patStudyEstimateEthnicityAll" class="inline"> All </label></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row 100%">
                                <div class="12u">
                                    <label for="patStudyEstimateInclusion">What are the other inclusion criteria of your patient population (procedures, diagnoses, labs, medications, measure score, other)? Please be as specific as possible. </label>
                                    <textarea  name="patStudyEstimateInclusion" id="patStudyEstimateInclusion" disabled></textarea>
				</div>
                            </div>
                            <div class="row 100%">
				<div class="12u">
                                    <label for="patStudyEstimateExclusion">What are the exclusion criteria for your patient population - (ex: Deceased/Other comorbidities/Other exclusions): </label>
                                    <textarea  name="patStudyEstimateExclusion" id="patStudyEstimateExclusion" disabled></textarea>
				</div>
                            </div>
                            <br />
                            <h3 class="quest-header"><strong>Where do the patients you would like to estimate receive services?</strong></h3>
                            <div class="row 33%"> 
				<div class="4u 8u(mobile)">
				Location: Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateLocation" id="patStudyEstimateLocationJHH" value="JHH" disabled /> 
                                            <label for="patStudyEstimateLocationJHH" class="inline"> JHH </label></li>                                        
                                        <li><input type="checkbox"  name="patStudyEstimateLocation" id="patStudyEstimateLocationJHBMC" value="JHBMC" disabled />
                                            <label for="patStudyEstimateLocationJHBMC" class="inline"> JHBMC </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateLocation" id="patStudyEstimateLocationAll" value="All" disabled />
                                            <label for="patStudyEstimateLocationAll" class="inline"> All </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateLocation" id="patStudyEstimateLocationOther" value="Other" onchange="document.getElementById('patStudyEstimateLocationOtherValue').disabled = !this.checked;" disabled />
                                            <label for="patStudyEstimateLocationOther" class="inline"> Other: Please specify </label><input type="text"  name='patStudyEstimateLocationOtherValue' id="patStudyEstimateLocationOtherValue" disabled /></li>
                                    </ul>	
				</div>
                                <div class="4u 8u(mobile)">
				Level of Care: Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareOutpatient" value="Outpatient" disabled />
                                            <label for="patStudyEstimateLevelOfCareOutpatient" class="inline"> Outpatient </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCarePRP" value="Psychiatric Rehabilitation" disabled />
                                            <label for="patStudyEstimateLevelOfCarePRP" class="inline"> Psychiatric Rehabilitation </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareCaseManagement" value="Case Management" disabled />
                                            <label for="patStudyEstimateLevelOfCareCaseManagement" class="inline"> Case Management </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareSchool" value="School Based" disabled />
                                            <label for="patStudyEstimateLevelOfCareSchool" class="inline"> School Based </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareMobile" value="Mobile Treatment" disabled />
                                            <label for="patStudyEstimateLevelOfCareMobile" class="inline"> Mobile Treatment </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareDayHospital" value="Day Hospital (IOP/PHP)" disabled />
                                            <label for="patStudyEstimateLevelOfCareDayHospital" class="inline"> Day Hospital (IOP/PHP) </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareInpatient" value="Inpatient" disabled />
                                            <label for="patStudyEstimateLevelOfCareInpatient" class="inline"> Inpatient </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareOther" value="Other" onchange="document.getElementById('patStudyEstimateLevelOfCareOtherValue').disabled = !this.checked;" disabled />
                                            <label for="patStudyEstimateLevelOfCareOther" class="inline"> Other: Please specify </label><input type="text"  name='patStudyEstimateLevelOfCareOtherValue' id="patStudyEstimateLevelOfCareOtherValue" disabled /></li>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareAll" value="All" disabled /> 
                                            <label for="patStudyEstimateLevelOfCareAll" class="inline"> All </label>
                                    </ul>	
				</div>
                            </div>					
                            <div class="row 100%">
				<div class="12u">
                                    <label for="patStudyEstimateLocationInfo" class="inline">Please provide any additional information concerning location (ex: team, unit, other): </label>
                                    <textarea  name="patStudyEstimateLocationInfo" id="patStudyEstimateLocationInfo" disabled></textarea>
				</div>
                            </div>
                        <br />
                        </div>
                        
                        <!-- PATIENT REGISTRIES -->
                        <div class="hidden" id="registry">
                            <h3><strong>Patient Registry:</strong></h3>
                            <p>Is the demographic and location information for this section the same as a section you previously completed?
                                <input type='radio'  name='patRegistryDemoInfo' id='patRegistryDemoInfoSame' value='patRegistryDemoInfoSame' onchange="document.getElementById('patRegistryAge').disabled = true; document.getElementById('patRegistrySexMale').disabled = true; document.getElementById('patRegistrySexFemale').disabled = true; document.getElementById('patRegistrySexNonBinary').disabled = true; document.getElementById('patRegistrySexAll').disabled = true; document.getElementById('patRegistryGenderCisMan').disabled = true; document.getElementById('patRegistryGenderCisWoman').disabled = true; document.getElementById('patRegistryGenderTransMan').disabled = true; document.getElementById('patRegistryGenderTransWoman').disabled = true; document.getElementById('patRegistryGenderAll').disabled = true; document.getElementById('patRegistryGenderOther').disabled = true; document.getElementById('patRegistryRaceAsian').disabled = true; document.getElementById('patRegistryRaceNativeAmerican').disabled = true; document.getElementById('patRegistryRaceWhite').disabled = true; document.getElementById('patRegistryRaceBlack').disabled = true; document.getElementById('patRegistryRaceHawaiiPacificIslander').disabled = true; document.getElementById('patRegistryRaceOther').disabled = true; document.getElementById('patRegistryRaceAll').disabled = true; document.getElementById('patRegistryEthnicityLatino').disabled = true; document.getElementById('patRegistryEthnicityNonLatino').disabled = true; document.getElementById('patRegistryEthnicityOther').disabled = true; document.getElementById('patRegistryEthnicityAll').disabled = true; document.getElementById('patRegistryInclusion').disabled = true; document.getElementById('patRegistryExclusion').disabled = true; document.getElementById('patRegistryLocationJHH').disabled = true; document.getElementById('patRegistryLocationJHBMC').disabled = true; document.getElementById('patRegistryLocationAll').disabled = true; document.getElementById('patRegistryLocationOther').disabled = true; document.getElementById('patRegistryLevelOfCareOutpatient').disabled = true; document.getElementById('patRegistryLevelOfCareInpatient').disabled = true; document.getElementById('patRegistryLevelOfCarePRP').disabled = true; document.getElementById('patRegistryLevelOfCareCaseManagement').disabled = true; document.getElementById('patRegistryLevelOfCareSchool').disabled = true; document.getElementById('patRegistryLevelOfCareMobile').disabled = true; document.getElementById('patRegistryLevelOfCareDayHospital').disabled = true; document.getElementById('patRegistryLevelOfCareOther').disabled = true; document.getElementById('patRegistryLevelOfCareAll').disabled = true; document.getElementById('patRegistryLocationInfo').disabled = true;"  disabled >
                                <label for="patRegistryDemoInfoSame" class="inline"> Yes </label>
                                <input type='radio' name='patRegistryDemoInfo' id='patRegistryDemoInfoDifferent' value='patRegistryDemoInfoDifferent' onchange="document.getElementById('patRegistryAge').disabled = false; document.getElementById('patRegistrySexMale').disabled = false; document.getElementById('patRegistrySexFemale').disabled = false; document.getElementById('patRegistrySexNonBinary').disabled = false; document.getElementById('patRegistrySexAll').disabled = false; document.getElementById('patRegistryGenderCisMan').disabled = false; document.getElementById('patRegistryGenderCisWoman').disabled = false; document.getElementById('patRegistryGenderTransMan').disabled = false; document.getElementById('patRegistryGenderTransWoman').disabled = false; document.getElementById('patRegistryGenderAll').disabled = false; document.getElementById('patRegistryGenderOther').disabled = false; document.getElementById('patRegistryRaceAsian').disabled = false; document.getElementById('patRegistryRaceNativeAmerican').disabled = false; document.getElementById('patRegistryRaceWhite').disabled = false; document.getElementById('patRegistryRaceBlack').disabled = false; document.getElementById('patRegistryRaceHawaiiPacificIslander').disabled = false; document.getElementById('patRegistryRaceOther').disabled = false; document.getElementById('patRegistryRaceAll').disabled = false; document.getElementById('patRegistryEthnicityLatino').disabled = false; document.getElementById('patRegistryEthnicityNonLatino').disabled = false; document.getElementById('patRegistryEthnicityOther').disabled = false; document.getElementById('patRegistryEthnicityAll').disabled = false; document.getElementById('patRegistryInclusion').disabled = false; document.getElementById('patRegistryExclusion').disabled = false; document.getElementById('patRegistryLocationJHH').disabled = false; document.getElementById('patRegistryLocationJHBMC').disabled = false; document.getElementById('patRegistryLocationAll').disabled = false; document.getElementById('patRegistryLocationOther').disabled = false; document.getElementById('patRegistryLevelOfCareOutpatient').disabled = false; document.getElementById('patRegistryLevelOfCareInpatient').disabled = false; document.getElementById('patRegistryLevelOfCarePRP').disabled = false; document.getElementById('patRegistryLevelOfCareCaseManagement').disabled = false; document.getElementById('patRegistryLevelOfCareSchool').disabled = false; document.getElementById('patRegistryLevelOfCareMobile').disabled = false; document.getElementById('patRegistryLevelOfCareDayHospital').disabled = false; document.getElementById('patRegistryLevelOfCareOther').disabled = false; document.getElementById('patRegistryLevelOfCareAll').disabled = false; document.getElementById('patRegistryLocationInfo').disabled = false;" disabled >
                                <label for='patRegistryDemoInfoDifferent' class="inline"> No </label>
                            </p>
                            <fieldset id="reg-hide">
                                <h3 class="quest-header"><strong>Who composes the patient population you would like to follow?</strong></h3>
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                        <label for="patRegistryAge">Age(s) in numbers: </label>
                                        <input type="text"  name="patRegistryAge" id="patRegistryAge" disabled />
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Sex:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistrySex" id="patRegistrySexMale" value="Male" disabled />
                                                <label for="patRegistrySexMale" class="inline"> Male </label></li>  
                                            <li><input type="checkbox"  name="patRegistrySex" id="patRegistrySexFemale" value="Female" disabled />
                                                <label for="patRegistrySexFemale" class="inline"> Female </label></li> 
                                            <li><input type="checkbox"  name="patRegistrySex" id="patRegistrySexNonBinary" value="Non-binary" disabled />
                                                <label for="patRegistrySexNonBinary" class="inline"> Non-binary </label></li> 
                                            <li><input type="checkbox"  name="patRegistrySex" id="patRegistrySexAll" value="All" disabled />
                                                <label for="patRegistrySexAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Gender:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderCisMan" value="Cis-man" disabled />
                                                <label for="patRegistryGenderCisMan" class="inline"> Cis-man </label></li>                                         
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderCisWoman" value="Cis-woman" disabled />
                                                <label for="patRegistryGenderCisWoman" class="inline"> Cis-woman </label></li> 
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderTransMan" value="Trans-man" disabled />
                                                <label for="patRegistryGenderTransMan" class="inline"> Trans-man </label></li> 
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderTransWoman" value="Trans-woman" disabled />
                                                <label for="patRegistryGenderTransWoman" class="inline"> Trans-woman </label></li> 
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderOther" value="Other" onchange="document.getElementById('patRegistryGenderOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRegistryGenderOther" class="inline"> Other: Please specify </label> <input type="text"  name='patRegistryGenderOtherValue' id="patRegistryGenderOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderAll" value="All" disabled />
                                                <label for="patRegistryGenderAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                    Race:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceAsian" value="Asian" disabled>
                                                <label for="patRegistryRaceAsian" class="inline"> Asian </label></li>
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceNativeAmerican" value="American Indian or Alaska Native" disabled>
                                                <label for="patRegistryRaceNativeAmerican" class="inline"> American Indian or Alaska Native </label></li>
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceWhite" value="White" disabled>
                                                <label for="patRegistryRaceWhite" class="inline"> White </label></li>
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceBlack" value="Black or African American" disabled>
                                                <label for="patRegistryRaceBlack" class="inline"> Black or African American </label></li>
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceHawaiiPacificIslander" value="Native Hawaiian or Other Pacific Islander" disabled>
                                                <label for="patRegistryRaceHawaiiPacificIslander" class="inline"> Native Hawaiian or Other Pacific Islander </label></li>
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceOther" value="Other" onchange="document.getElementById('patRegistryRaceOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRegistryRaceOther" class="inline"> Other: Please specify </label><input type="text"  name='patRegistryRaceOtherValue' id="patRegistryRaceOtherValue" disabled />
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceAll" value="All" disabled>
                                                <label for="patRegistryRaceAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Ethnicity:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistryEthnicity" id="patRegistryEthnicityLatino" value="Hispanic or Latino" disabled>
                                                <label for="patRegistryEthnicityLatino" class="inline"> Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="patRegistryEthnicity" id="patRegistryEthnicityNonLatino" value="Not Hispanic or Latino" disabled>
                                                <label for="patRegistryEthnicityNonLatino" class="inline"> Not Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="patRegistryEthnicity" id="patRegistryEthnicityOther" value="Other" onchange="document.getElementById('patRegistryEthnicityOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRegistryEthnicityOther" class="inline"> Other:  Please specify </label><input type="text" name='patRegistryEthnicityOtherValue' id="patRegistryEthnicityOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="patRegistryEthnicity" id="patRegistryEthnicityAll" value="All" disabled>
                                                <label for="patRegistryEthnicityAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRegistryInclusion">What are the other inclusion criteria of your patient population (procedures, diagnoses, labs, medications, measure score, other)? Please be as specific as possible. </label>
                                        <textarea  name="patRegistryInclusion" id="patRegistryInclusion" disabled></textarea>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRegistryExclusion">What are the exclusion criteria for your patient population - (ex: Deceased/Other comorbidities/Other exclusions): </label>
                                        <textarea  name="patRegistryExclusion" id="patRegistryExclusion" disabled></textarea>
                                    </div>
                                </div>
                                <br />
                                <h3 class="quest-header"><strong>Where do the patients you would like to follow receive services?</strong></h3>
                                <div class="row 33%"> 
                                    <div class="4u 8u(mobile)">
                                    Location: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistryLocation" id="patRegistryLocationJHH" value="JHH" disabled /> 
                                                <label for="patRegistryLocationJHH" class="inline"> JHH </label></li>                                        
                                            <li><input type="checkbox"  name="patRegistryLocation" id="patRegistryLocationJHBMC" value="JHBMIC" disabled />
                                                <label for="patRegistryLocationJHBMC" class="inline"> JHBMC </label></li>
                                            <li><input type="checkbox"  name="patRegistryLocation" id="patRegistryLocationAll" value="All" disabled />
                                                <label for="patRegistryLocationAll" class="inline"> All </label></li>
                                            <li><input type="checkbox"  name="patRegistryLocation" id="patRegistryLocationOther" value="Other" onchange="document.getElementById('patRegistryLocationOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRegistryLocationOther" class="inline"> Other: Please specify </label><input type="text"  name='patRegistryLocationOtherValue' id="patRegistryLocationOtherValue" disabled /></li>
                                        </ul>	
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Level of Care: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareOutpatient" value="Outpatient" disabled />
                                                <label for="patRegistryLevelOfCareOutpatient" class="inline"> Outpatient </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCarePRP" value="Psychiatric Rehabilitation" disabled />
                                                <label for="patRegistryLevelOfCarePRP" class="inline"> Psychiatric Rehabilitation </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareCaseManagement" value="Case Management" disabled />
                                                <label for="patRegistryLevelOfCareCaseManagement" class="inline"> Case Management </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareSchool" value="School Based" disabled />
                                                <label for="patRegistryLevelOfCareSchool" class="inline"> School Based </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareMobile" value="Mobile Treatment" disabled />
                                                <label for="patRegistryLevelOfCareMobile" class="inline"> Mobile Treatment </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareDayHospital" value="Day Hospital (IOP/PHP)" disabled />
                                                <label for="patRegistryLevelOfCareDayHospital" class="inline"> Day Hospital (IOP/PHP) </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareInpatient" value="Inpatient" disabled />
                                                <label for="patRegistryLevelOfCareInpatient" class="inline"> Inpatient </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareOther" value="Other" onchange="document.getElementById('patRegistryLevelOfCareOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRegistryLevelOfCareOther" class="inline"> Other: Please specify </label><input type="text"  name='patRegistryLevelOfCareOtherValue' id="patRegistryLevelOfCareOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareAll" value="All" disabled /> 
                                                <label for="patRegistryLevelOfCareAll" class="inline"> All </label>
                                        </ul>	
                                    </div>
                                </div>					
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRegistryLocationInfo" class="inline">Please provide any additional information concerning location (ex: team, unit, other): </label>
                                        <textarea  name="patRegistryLocationInfo" id="patRegistryLocationInfo" disabled></textarea>
                                    </div>
                                </div>
                            </fieldset>
                            <br />
                            <h3 class="quest-header"><strong>What information on these patients would you like to track over time?</strong></h3>
                            Please specify if applicable:
                            <div class="row 50%">
                                <div class="6u 12u(mobile)">
                                    <label for="patRegistryMetricDiagnoses">Diagnoses:</label>
                                    <input name="patRegistryMetric" id="patRegistryMetricDiagnoses" type="text" disabled />
                                </div>
                                <div class="6u 12u(mobile)">
                                    <label for="patRegistryMetricMeds">Medications:</label>
                                    <input name="patRegistryMetric" id="patRegistryMetricMeds" type="text" disabled />
                                </div>
                            </div>
                            <div class="row 50%">
				<div class="6u 12u(mobile)">
                                    <label for="patRegistryMetricLabs">Labs:</label>
                                    <input name="patRegistryMetric" id="patRegistryMetricLabs" type="text" disabled />
				</div>
				<div class="6u 12u(mobile)">
                                    <label for="patRegistryMetricMeasures">Measures:</label>
                                    <input name="patRegistryMetric" id="patRegistryMetricMeasures" type="text" disabled />
				</div>
                            </div>
                            <div class="row 50%">
                                <div class="6u 12u(mobile)">
                                    <label for="patRegistryMetricOther">Other:</label>
                                    <input name="patRegistryMetric" id="patRegistryMetricOther" type="text" disabled />
				</div>
                            </div>
                            <br />
                        </div>
                        
                        <!-- ELECTRONIC DATA CAPTURE -->
                        <div class="hidden" id="edc">
                            <h3><strong>Electronic Data Capture:</strong></h3>
                            <p>Is the demographic and location information for this section the same as a section you previously completed?
                                <input type='radio'  name='eDataCaptureDemoInfo' id='eDataCaptureDemoInfoSame' value='eDataCaptureDemoInfoSame' onchange="document.getElementById('eDataCaptureAge').disabled = true; document.getElementById('eDataCaptureSexMale').disabled = true; document.getElementById('eDataCaptureSexFemale').disabled = true; document.getElementById('eDataCaptureSexNonBinary').disabled = true; document.getElementById('eDataCaptureSexAll').disabled = true; document.getElementById('eDataCaptureGenderCisMan').disabled = true; document.getElementById('eDataCaptureGenderCisWoman').disabled = true; document.getElementById('eDataCaptureGenderTransMan').disabled = true; document.getElementById('eDataCaptureGenderTransWoman').disabled = true; document.getElementById('eDataCaptureGenderAll').disabled = true; document.getElementById('eDataCaptureGenderOther').disabled = true; document.getElementById('eDataCaptureRaceAsian').disabled = true; document.getElementById('eDataCaptureRaceNativeAmerican').disabled = true; document.getElementById('eDataCaptureRaceWhite').disabled = true; document.getElementById('eDataCaptureRaceBlack').disabled = true; document.getElementById('eDataCaptureRaceHawaiiPacificIslander').disabled = true; document.getElementById('eDataCaptureRaceOther').disabled = true; document.getElementById('eDataCaptureRaceAll').disabled = true; document.getElementById('eDataCaptureEthnicityLatino').disabled = true; document.getElementById('eDataCaptureEthnicityNonLatino').disabled = true; document.getElementById('eDataCaptureEthnicityOther').disabled = true; document.getElementById('eDataCaptureEthnicityAll').disabled = true; document.getElementById('eDataCaptureInclusion').disabled = true; document.getElementById('eDataCaptureExclusion').disabled = true; document.getElementById('eDataCaptureLocationJHH').disabled = true; document.getElementById('eDataCaptureLocationJHBMC').disabled = true; document.getElementById('eDataCaptureLocationAll').disabled = true; document.getElementById('eDataCaptureLocationOther').disabled = true; document.getElementById('eDataCaptureLevelOfCareOutpatient').disabled = true; document.getElementById('eDataCaptureLevelOfCareInpatient').disabled = true; document.getElementById('eDataCaptureLevelOfCarePRP').disabled = true; document.getElementById('eDataCaptureLevelOfCareCaseManagement').disabled = true; document.getElementById('eDataCaptureLevelOfCareSchool').disabled = true; document.getElementById('eDataCaptureLevelOfCareMobile').disabled = true; document.getElementById('eDataCaptureLevelOfCareDayHospital').disabled = true; document.getElementById('eDataCaptureLevelOfCareOther').disabled = true; document.getElementById('eDataCaptureLevelOfCareAll').disabled = true; document.getElementById('eDataCaptureLocationInfo').disabled = true;"  disabled >
                                <label for="eDataCaptureDemoInfoSame" class="inline"> Yes </label>
                                <input type='radio' name='eDataCaptureDemoInfo' id='eDataCaptureDemoInfoDifferent' value='eDataCaptureDemoInfoDifferent' onchange="document.getElementById('eDataCaptureAge').disabled = false; document.getElementById('eDataCaptureSexMale').disabled = false; document.getElementById('eDataCaptureSexFemale').disabled = false; document.getElementById('eDataCaptureSexNonBinary').disabled = false; document.getElementById('eDataCaptureSexAll').disabled = false; document.getElementById('eDataCaptureGenderCisMan').disabled = false; document.getElementById('eDataCaptureGenderCisWoman').disabled = false; document.getElementById('eDataCaptureGenderTransMan').disabled = false; document.getElementById('eDataCaptureGenderTransWoman').disabled = false; document.getElementById('eDataCaptureGenderAll').disabled = false; document.getElementById('eDataCaptureGenderOther').disabled = false; document.getElementById('eDataCaptureRaceAsian').disabled = false; document.getElementById('eDataCaptureRaceNativeAmerican').disabled = false; document.getElementById('eDataCaptureRaceWhite').disabled = false; document.getElementById('eDataCaptureRaceBlack').disabled = false; document.getElementById('eDataCaptureRaceHawaiiPacificIslander').disabled = false; document.getElementById('eDataCaptureRaceOther').disabled = false; document.getElementById('eDataCaptureRaceAll').disabled = false; document.getElementById('eDataCaptureEthnicityLatino').disabled = false; document.getElementById('eDataCaptureEthnicityNonLatino').disabled = false; document.getElementById('eDataCaptureEthnicityOther').disabled = false; document.getElementById('eDataCaptureEthnicityAll').disabled = false; document.getElementById('eDataCaptureInclusion').disabled = false; document.getElementById('eDataCaptureExclusion').disabled = false; document.getElementById('eDataCaptureLocationJHH').disabled = false; document.getElementById('eDataCaptureLocationJHBMC').disabled = false; document.getElementById('eDataCaptureLocationAll').disabled = false; document.getElementById('eDataCaptureLocationOther').disabled = false; document.getElementById('eDataCaptureLevelOfCareOutpatient').disabled = false; document.getElementById('eDataCaptureLevelOfCareInpatient').disabled = false; document.getElementById('eDataCaptureLevelOfCarePRP').disabled = false; document.getElementById('eDataCaptureLevelOfCareCaseManagement').disabled = false; document.getElementById('eDataCaptureLevelOfCareSchool').disabled = false; document.getElementById('eDataCaptureLevelOfCareMobile').disabled = false; document.getElementById('eDataCaptureLevelOfCareDayHospital').disabled = false; document.getElementById('eDataCaptureLevelOfCareOther').disabled = false; document.getElementById('eDataCaptureLevelOfCareAll').disabled = false; document.getElementById('eDataCaptureLocationInfo').disabled = false;" disabled >
                                <label for='eDataCaptureDemoInfoDifferent' class="inline"> No </label>
                            </p>
                            <fieldset id="edc-hide">
                                <h3 class="quest-header"><strong>Who composes the patient population you would like to follow?</strong></h3>
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                        <label for="eDataCaptureAge">Age(s) in numbers: </label>
                                        <input type="text"  name="eDataCaptureAge" id="eDataCaptureAge" disabled />
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Sex:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureSex" id="eDataCaptureSexMale" value="Male" disabled />
                                                <label for="eDataCaptureSexMale" class="inline"> Male </label></li>  
                                            <li><input type="checkbox"  name="eDataCaptureSex" id="eDataCaptureSexFemale" value="Female" disabled />
                                                <label for="eDataCaptureSexFemale" class="inline"> Female </label></li> 
                                            <li><input type="checkbox"  name="eDataCaptureSex" id="eDataCaptureSexNonBinary" value="Non-binary" disabled />
                                                <label for="eDataCaptureSexNonBinary" class="inline"> Non-binary </label></li> 
                                            <li><input type="checkbox"  name="eDataCaptureSex" id="eDataCaptureSexAll" value="All" disabled />
                                                <label for="eDataCaptureSexAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Gender:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderCisMan" value="Cis-man" disabled />
                                                <label for="eDataCaptureGenderCisMan" class="inline"> Cis-man </label></li>                                         
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderCisWoman" value="Cis-woman" disabled />
                                                <label for="eDataCaptureGenderCisWoman" class="inline"> Cis-woman </label></li> 
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderTransMan" value="Trans-man" disabled />
                                                <label for="eDataCaptureGenderTransMan" class="inline"> Trans-man </label></li> 
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderTransWoman" value="Trans-woman" disabled />
                                                <label for="eDataCaptureGenderTransWoman" class="inline"> Trans-woman </label></li> 
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderOther" value="Other" onchange="document.getElementById('eDataCaptureGenderOtherValue').disabled = !this.checked;" disabled />
                                                <label for="eDataCaptureGenderOther" class="inline"> Other: Please specify </label> <input type="text"  name='eDataCaptureGenderOtherValue' id="eDataCaptureGenderOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderAll" value="All" disabled />
                                                <label for="eDataCaptureGenderAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                    Race:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceAsian" value="Asian" disabled>
                                                <label for="eDataCaptureRaceAsian" class="inline"> Asian </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceNativeAmerican" value="American Indian or Alaska Native" disabled>
                                                <label for="eDataCaptureRaceNativeAmerican" class="inline"> American Indian or Alaska Native </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceWhite" value="White" disabled>
                                                <label for="eDataCaptureRaceWhite" class="inline"> White </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceBlack" value="Black or African American" disabled>
                                                <label for="eDataCaptureRaceBlack" class="inline"> Black or African American </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceHawaiiPacificIslander" value="Native Hawaiian or Other Pacific Islander" disabled>
                                                <label for="eDataCaptureRaceHawaiiPacificIslander" class="inline"> Native Hawaiian or Other Pacific Islander </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceOther" value="Other" onchange="document.getElementById('eDataCaptureRaceOtherValue').disabled = !this.checked;" disabled />
                                                <label for="eDataCaptureRaceOther" class="inline"> Other: Please specify </label><input type="text"  name='eDataCaptureRaceOtherValue' id="eDataCaptureRaceOtherValue" disabled />
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceAll" value="All" disabled>
                                                <label for="eDataCaptureRaceAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Ethnicity:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureEthnicity" id="eDataCaptureEthnicityLatino" value="Hispanic or Latino" disabled>
                                                <label for="eDataCaptureEthnicityLatino" class="inline"> Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureEthnicity" id="eDataCaptureEthnicityNonLatino" value="Not Hispanic or Latino" disabled>
                                                <label for="eDataCaptureEthnicityNonLatino" class="inline"> Not Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureEthnicity" id="eDataCaptureEthnicityOther" value="Other" onchange="document.getElementById('eDataCaptureEthnicityOtherValue').disabled = !this.checked;" disabled />
                                                <label for="eDataCaptureEthnicityOther" class="inline"> Other:  Please specify </label><input type="text" name='eDataCaptureEthnicityOtherValue' id="eDataCaptureEthnicityOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="eDataCaptureEthnicity" id="eDataCaptureEthnicityAll" value="All" disabled>
                                                <label for="eDataCaptureEthnicityAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="eDataCaptureInclusion">What are the other inclusion criteria of your patient population (procedures, diagnoses, labs, medications, measure score, other)? Please be as specific as possible. </label>
                                        <textarea  name="eDataCaptureInclusion" id="eDataCaptureInclusion" disabled></textarea>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="eDataCaptureExclusion">What are the exclusion criteria for your patient population - (ex: Deceased/Other comorbidities/Other exclusions): </label>
                                        <textarea  name="eDataCaptureExclusion" id="eDataCaptureExclusion" disabled></textarea>
                                    </div>
                                </div>
                                <br />
                                <h3 class="quest-header"><strong>Where do the patients you would like to follow receive services?</strong></h3>
                                <div class="row 33%"> 
                                    <div class="4u 8u(mobile)">
                                    Location: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureLocation" id="eDataCaptureLocationJHH" value="JHH" disabled /> 
                                                <label for="eDataCaptureLocationJHH" class="inline"> JHH </label></li>                                        
                                            <li><input type="checkbox"  name="eDataCaptureLocation" id="eDataCaptureLocationJHBMC" value="JHBMIC" disabled />
                                                <label for="eDataCaptureLocationJHBMC" class="inline"> JHBMC </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureLocation" id="eDataCaptureLocationAll" value="All" disabled />
                                                <label for="eDataCaptureLocationAll" class="inline"> All </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureLocation" id="eDataCaptureLocationOther" value="Other" onchange="document.getElementById('eDataCaptureLocationOtherValue').disabled = !this.checked;" disabled />
                                                <label for="eDataCaptureLocationOther" class="inline"> Other: Please specify </label><input type="text"  name='eDataCaptureLocationOtherValue' id="eDataCaptureLocationOtherValue" disabled /></li>
                                        </ul>	
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Level of Care: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareOutpatient" value="Outpatient" disabled />
                                                <label for="eDataCaptureLevelOfCareOutpatient" class="inline"> Outpatient </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCarePRP" value="Psychiatric Rehabilitation" disabled />
                                                <label for="eDataCaptureLevelOfCarePRP" class="inline"> Psychiatric Rehabilitation </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareCaseManagement" value="Case Management" disabled />
                                                <label for="eDataCaptureLevelOfCareCaseManagement" class="inline"> Case Management </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareSchool" value="School Based" disabled />
                                                <label for="eDataCaptureLevelOfCareSchool" class="inline"> School Based </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareMobile" value="Mobile Treatment" disabled />
                                                <label for="eDataCaptureLevelOfCareMobile" class="inline"> Mobile Treatment </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareDayHospital" value="Day Hospital (IOP/PHP)" disabled />
                                                <label for="eDataCaptureLevelOfCareDayHospital" class="inline"> Day Hospital (IOP/PHP) </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareInpatient" value="Inpatient" disabled />
                                                <label for="eDataCaptureLevelOfCareInpatient" class="inline"> Inpatient </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareOther" value="Other" onchange="document.getElementById('eDataCaptureLevelOfCareOtherValue').disabled = !this.checked;" disabled />
                                                <label for="eDataCaptureLevelOfCareOther" class="inline"> Other: Please specify </label><input type="text"  name='eDataCaptureLevelOfCareOtherValue' id="eDataCaptureLevelOfCareOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareAll" value="All" disabled /> 
                                                <label for="eDataCaptureLevelOfCareAll" class="inline"> All </label>
                                        </ul>	
                                    </div>
                                </div>					
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="eDataCaptureLocationInfo" class="inline">Please provide any additional information concerning location (ex: team, unit, other): </label>
                                        <textarea  name="eDataCaptureLocationInfo" id="eDataCaptureLocationInfo" disabled></textarea>
                                    </div>
                                </div>
                            </fieldset>
                            <br />       
                            <h3 class="quest-header"><strong>When would you like to capture data?</strong></h3>
                            <div class="row 33%">
                                <div class="4u 8u(mobile)">
                                    <label for="eDataCaptureStartDate">When do you want to start collection?</label>
                                    <input type="text"  name="eDataCaptureStartDate" id="eDataCaptureStartDate" disabled />
                                </div>    
                                <div class="4u 8u(mobile)">
                                    <label for="eDataCaptureFrequency">How often would you like to collect?</label>
                                    <input type="text"  name="eDataCaptureFrequency" id="eDataCaptureFrequency" disabled />
                                </div>
                                <div class="4u 8u(mobile)">
                                    <label for="eDataCaptureLength">How long would you like to collect?</label>
                                    <input type="text"  name="eDataCaptureLength" id="eDataCaptureLength" disabled />
                                </div>
                            </div>
                            <br />
                            <h3 class="quest-header"><strong>What data would you like to capture and how?</strong></h3>
                            <div class="row 100%">
                                <div class="12u">
                                    <label for="eDataCaptureInfoToCapture">What information would you like to capture on your patient population? Please be as specific as possible: measures, tools, indices, etc.</label>
                                    <textarea  name="eDataCaptureInfoToCapture" id="eDataCaptureInfoToCapture" disabled></textarea>
                                </div>
                            </div>
                            <div class="row 100%">
                                <div class="12u">
                                How would you like to capture data on your patient population?
                                <br />
                                    <table id="edc-how">
                                        <tbody>
                                            <tr class="edc-row">
                                                <td>Entrant of data:
                                                    <label for="eDataCaptureEntrantOfData"></label>
                                                    <select class="eDataCaptureEntrantOfData" name='eDataCaptureEntrantOfData' id="eDataCaptureEntrantOfData" disabled>
                                                        <option></option>
                                                        <option>Patient</option>
                                                        <option>Proxy</option>
                                                        <option>Clinician</option>
                                                        <option>All</option>
                                                    </select>
                                                </td>
                                                <td>Data Entry Platform:
                                                    <label for="eDataCapturePlatform"></label>
                                                    <select class="eDataCapturePlatform" name='eDataCapturePlatform' id="eDataCapturePlatform" disabled>
                                                        <option></option>
                                                        <option>MyChart</option>
                                                        <option>Welcome</option>
                                                        <option>REDCap</option>
                                                        <option>MHi-GO</option>
                                                        <option>All</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <center>
                                        <button type="button" id="add-edc" onclick="document.getElementById('eDataCaptureEntrantOfData').disabled=false; document.getElementById('eDataCapturePlatform').disabled=!this.clicked;">Add EDC Method</button>
                                        <button type="button" id="delete-edc" onclick="document.getElementById('eDataCaptureEntrantOfData').disabled=true; document.getElementById('eDataCapturePlatform').disabled=this.clicked;">Remove EDC Method</button>
                                    </center>
                                </div>
                            </div>
                            <div class="row 50%">
                                <div class="6u 12u(mobile)">
                                Would you like your data to be visualized in the EMR?
                                    <ul class="requestUOList inline">
                                        <li class="inline"><input type="radio" name="eDataCaptureVisualize" id="eDataCaptureVisualize" value='visual-yes' onchange="document.getElementById('eDataCaptureHowToVisualize').disabled = !this.checked;" disabled />
                                            <label for="eDataCaptureVisualize" class="inline"> Yes </label></li>
                                        <li class="inline"><input type="radio" name="eDataCaptureVisualize" id="eDataCaptureDoNotVisualize" value='visual-no' onchange="document.getElementById('eDataCaptureHowToVisualize').disabled = this.checked;" disabled />
                                            <label for="eDataCaptureDoNotVisualize" class="inline"> No </label></li>
                                    </ul>
                                    <div class="hidden" id="visual-text">
                                    If so, how? (Synopsis, Reporting Workbench, other)
                                        <textarea  name="eDataCaptureHowToVisualize" id="eDataCaptureHowToVisualize" disabled></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- DATA EXTRACTION -->
                        <div class="hidden" id="dex">
                        <br />
                            <h3><strong>Data Extraction:</strong></h3>
                            <p>Is the demographic and location information for this section the same as a section you completed earlier?
                                <input type='radio'  name='dataExtractionDemoInfo' id='dataExtractionDemoInfoSame' value='dataExtractionDemoInfoSame' onchange="document.getElementById('dataExtractionAge').disabled = true; document.getElementById('dataExtractionSexMale').disabled = true; document.getElementById('dataExtractionSexFemale').disabled = true; document.getElementById('dataExtractionSexNonBinary').disabled = true; document.getElementById('dataExtractionSexAll').disabled = true; document.getElementById('dataExtractionGenderCisMan').disabled = true; document.getElementById('dataExtractionGenderCisWoman').disabled = true; document.getElementById('dataExtractionGenderTransMan').disabled = true; document.getElementById('dataExtractionGenderTransWoman').disabled = true; document.getElementById('dataExtractionGenderAll').disabled = true; document.getElementById('dataExtractionGenderOther').disabled = true; document.getElementById('dataExtractionRaceAsian').disabled = true; document.getElementById('dataExtractionRaceNativeAmerican').disabled = true; document.getElementById('dataExtractionRaceWhite').disabled = true; document.getElementById('dataExtractionRaceBlack').disabled = true; document.getElementById('dataExtractionRaceHawaiiPacificIslander').disabled = true; document.getElementById('dataExtractionRaceOther').disabled = true; document.getElementById('dataExtractionRaceAll').disabled = true; document.getElementById('dataExtractionEthnicityLatino').disabled = true; document.getElementById('dataExtractionEthnicityNonLatino').disabled = true; document.getElementById('dataExtractionEthnicityOther').disabled = true; document.getElementById('dataExtractionEthnicityAll').disabled = true; document.getElementById('dataExtractionInclusion').disabled = true; document.getElementById('dataExtractionExclusion').disabled = true; document.getElementById('dataExtractionLocationJHH').disabled = true; document.getElementById('dataExtractionLocationJHBMC').disabled = true; document.getElementById('dataExtractionLocationAll').disabled = true; document.getElementById('dataExtractionLocationOther').disabled = true;; document.getElementById('dataExtractionLevelOfCareOutpatient').disabled = true; document.getElementById('dataExtractionLevelOfCareInpatient').disabled = true; document.getElementById('dataExtractionLevelOfCarePRP').disabled = true; document.getElementById('dataExtractionLevelOfCareCaseManagement').disabled = true; document.getElementById('dataExtractionLevelOfCareSchool').disabled = true; document.getElementById('dataExtractionLevelOfCareMobile').disabled = true; document.getElementById('dataExtractionLevelOfCareDayHospital').disabled = true; document.getElementById('dataExtractionLevelOfCareOther').disabled = true; document.getElementById('dataExtractionLevelOfCareAll').disabled = true; document.getElementById('dataExtractionLocationInfo').disabled = true;" disabled />
                                <label for="dataExtractionDemoInfoSame" class="inline"> Yes </label>
                                <input type='radio' name='dataExtractionDemoInfo' id='dataExtractionDemoInfoDifferent' value='dataExtractionDemoInfoDifferent' onchange="document.getElementById('dataExtractionAge').disabled = false; document.getElementById('dataExtractionSexMale').disabled = false; document.getElementById('dataExtractionSexFemale').disabled = false; document.getElementById('dataExtractionSexNonBinary').disabled = false; document.getElementById('dataExtractionSexAll').disabled = false; document.getElementById('dataExtractionGenderCisMan').disabled = false; document.getElementById('dataExtractionGenderCisWoman').disabled = false; document.getElementById('dataExtractionGenderTransMan').disabled = false; document.getElementById('dataExtractionGenderTransWoman').disabled = false; document.getElementById('dataExtractionGenderAll').disabled = false; document.getElementById('dataExtractionGenderOther').disabled = false; document.getElementById('dataExtractionRaceAsian').disabled = false; document.getElementById('dataExtractionRaceNativeAmerican').disabled = false; document.getElementById('dataExtractionRaceWhite').disabled = false; document.getElementById('dataExtractionRaceBlack').disabled = false; document.getElementById('dataExtractionRaceHawaiiPacificIslander').disabled = false; document.getElementById('dataExtractionRaceOther').disabled = false; document.getElementById('dataExtractionRaceAll').disabled = false; document.getElementById('dataExtractionEthnicityLatino').disabled = false; document.getElementById('dataExtractionEthnicityNonLatino').disabled = false; document.getElementById('dataExtractionEthnicityOther').disabled = false; document.getElementById('dataExtractionEthnicityAll').disabled = false; document.getElementById('dataExtractionInclusion').disabled = false; document.getElementById('dataExtractionExclusion').disabled = false; document.getElementById('dataExtractionLocationJHH').disabled = false; document.getElementById('dataExtractionLocationJHBMC').disabled = false; document.getElementById('dataExtractionLocationAll').disabled = false; document.getElementById('dataExtractionLocationOther').disabled = false; document.getElementById('dataExtractionLevelOfCareOutpatient').disabled = false; document.getElementById('dataExtractionLevelOfCareInpatient').disabled = false; document.getElementById('dataExtractionLevelOfCarePRP').disabled = false; document.getElementById('dataExtractionLevelOfCareCaseManagement').disabled = false; document.getElementById('dataExtractionLevelOfCareSchool').disabled = false; document.getElementById('dataExtractionLevelOfCareMobile').disabled = false; document.getElementById('dataExtractionLevelOfCareDayHospital').disabled = false; document.getElementById('dataExtractionLevelOfCareOther').disabled = false; document.getElementById('dataExtractionLevelOfCareAll').disabled = false; document.getElementById('dataExtractionLocationInfo').disabled = false;" disabled >
                                <label for='dataExtractionDemoInfoDifferent' class="inline"> No </label>
                            </p>
                            <fieldset id="dex-hide">
                                <h3 class="quest-header"><strong>Who composes the patient population from which you would like to extract data?</strong></h3>
                                <br />
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                        <label for="dataExtractionAge">Age(s) in numbers: </label>
                                        <input type="text"  name="dataExtractionAge" id="dataExtractionAge" disabled />
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Sex:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionSex" id="dataExtractionSexMale" value="Male" disabled />
                                                <label for="dataExtractionSexMale" class="inline"> Male </label></li>  
                                            <li><input type="checkbox"  name="dataExtractionSex" id="dataExtractionSexFemale" value="Female" disabled />
                                                <label for="dataExtractionSexFemale" class="inline"> Female </label></li> 
                                            <li><input type="checkbox"  name="dataExtractionSex" id="dataExtractionSexNonBinary" value="Non-binary" disabled />
                                                <label for="dataExtractionSexNonBinary" class="inline"> Non-binary </label></li> 
                                            <li><input type="checkbox"  name="dataExtractionSex" id="dataExtractionSexAll" value="All" disabled />
                                                <label for="dataExtractionSexAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Gender:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionGender" id="dataExtractionGenderCisMan" value="Cis-man" disabled />
                                                <label for="dataExtractionGenderCisMan" class="inline"> Cis-man </label></li>                                         
                                            <li><input type="checkbox"  name="dataExtractionGender" id="dataExtractionGenderCisWoman" value="Cis-woman" disabled />
                                                <label for="dataExtractionGenderCisWoman" class="inline"> Cis-woman </label></li> 
                                            <li><input type="checkbox"  name="dataExtractionGender" id="dataExtractionGenderTransMan" value="Trans-man" disabled />
                                                <label for="dataExtractionGenderTransMan" class="inline"> Trans-man </label></li> 
                                            <li><input type="checkbox"  name="dataExtractionGender" id="dataExtractionGenderTransWoman" value="Trans-woman" disabled />
                                                <label for="dataExtractionGenderTransWoman" class="inline"> Trans-woman </label></li> 
                                            <li><input type="checkbox" name="dataExtractionGender" id="dataExtractionGenderOther" value="Other" onchange="document.getElementById('dataExtractionGenderOtherValue').disabled = !this.checked;" disabled />
                                                <label for="dataExtractionGenderOther" class="inline"> Other: Please specify </label><input type="text" name='dataExtractionGenderOtherValue' id="dataExtractionGenderOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="dataExtractionGender" id="dataExtractionGenderAll" value="All" disabled />
                                                <label for="dataExtractionGenderAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 50%">
                                    <div class="4u 8u(mobile)">
                                    Race:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceAsian" value="Asian" disabled>
                                                <label for="dataExtractionRaceAsian" class="inline"> Asian </label></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceNativeAmerican" value="American Indian or Alaska Native" disabled>
                                                <label for="dataExtractionRaceNativeAmerican" class="inline"> American Indian or Alaska Native </label></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceWhite" value="White" disabled>
                                                <label for="dataExtractionRaceWhite" class="inline"> White </label></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceBlack" value="Black or African American" disabled>
                                                <label for="dataExtractionRaceBlack" class="inline"> Black or African American </label></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceHawaiiPacificIslander" value="Native Hawaiian or Other Pacific Islander" disabled>
                                                <label for="dataExtractionRaceHawaiiPacificIslander" class="inline"> Native Hawaiian or Other Pacific Islander </label></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceOther" value="Other" onchange="document.getElementById('dataExtractionRaceOtherValue').disabled = !this.checked;" disabled />
                                                <label for="dataExtractionRaceOther" class="inline"> Other: Please specify </label><input type="text"  name='dataExtractionRaceOtherValue' id="dataExtractionRaceOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceAll" value="All" disabled>
                                                <label for="dataExtractionRaceAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Ethnicity:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionEthnicity" id="dataExtractionEthnicityLatino" value="Hispanic or Latino" disabled>
                                                <label for="dataExtractionEthnicityLatino" class="inline"> Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="dataExtractionEthnicity" id="dataExtractionEthnicityNonLatino" value="Not Hispanic or Latino" disabled>
                                                <label for="dataExtractionEthnicityNonLatino" class="inline"> Not Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="dataExtractionEthnicity" id="dataExtractionEthnicityOther" value="Other" onchange="document.getElementById('dataExtractionEthnicityOtherValue').disabled = !this.checked;" disabled />
                                                <label for="dataExtractionEthnicityOther" class="inline"> Other: Please specify </label><input type="text"  name='dataExtractionEthnicityOtherValue' id="dataExtractionEthnicityOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="dataExtractionEthnicity" id="dataExtractionEthnicityAll" value="All" disabled>
                                                <label for="dataExtractionEthnicityAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="dataExtractionInclusion">What are the other inclusion criteria of your patient population (procedures, diagnoses, labs, medications, measure score, other)? Please be as specific as possible. </label>
                                        <textarea  name="dataExtractionInclusion" id="dataExtractionInclusion" disabled></textarea>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="dataExtractionExclusion">What are the exclusion criteria for your patient population - (ex: Deceased/Other comorbidities/Other exclusions): </label>
                                        <textarea  name="dataExtractionExclusion" id="dataExtractionExclusion" disabled></textarea>
                                    </div>
                                </div>
                                <br />
                                <h3 class="quest-header"><strong>Where do the patients from which you would like to extract data receive services?</strong></h3>
                                <div class="row 33%"> 
                                    <div class="4u 8u(mobile)">
                                    Location: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionLocation" id="dataExtractionLocationJHH" value="JHH" disabled /> 
                                                <label for="dataExtractionLocationJHH" class="inline"> JHH </label></li>                                        
                                            <li><input type="checkbox"  name="dataExtractionLocation" id="dataExtractionLocationJHBMC" value="JHBMC" disabled />
                                                <label for="dataExtractionLocationJHBMC" class="inline"> JHBMC </label></li>
                                            <li><input type="checkbox"  name="dataExtractionLocation" id="dataExtractionLocationAll" value="All" disabled />
                                                <label for="dataExtractionLocationAll" class="inline"> All </label></li>
                                            <li><input type="checkbox"  name="dataExtractionLocation" id="dataExtractionLocationOther" value="Other" onchange="document.getElementById('dataExtractionLocationOtherValue').disabled = !this.checked;" disabled />
                                                <label for="dataExtractionLocationOther" class="inline"> Other: Please specify </label><input type="text"  name='dataExtractionLocationOtherValue' id="dataExtractionLocationOtherValue" disabled /></li>
                                        </ul>	
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Level of Care: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareOutpatient" value="Outpatient" disabled />
                                                <label for="dataExtractionLevelOfCareOutpatient" class="inline"> Outpatient </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCarePRP" value="Psychiatric Rehabilitation" disabled />
                                                <label for="dataExtractionLevelOfCarePRP" class="inline"> Psychiatric Rehabilitation </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareCaseManagement" value="Case Management" disabled />
                                                <label for="dataExtractionLevelOfCareCaseManagement" class="inline"> Case Management </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareSchool" value="School Based" disabled />
                                                <label for="dataExtractionLevelOfCareSchool" class="inline"> School Based </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareMobile" value="Mobile Treatment" disabled />
                                                <label for="dataExtractionLevelOfCareMobile" class="inline"> Mobile Treatment </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareDayHospital" value="Day Hospital (IOP/PHP)" disabled />
                                                <label for="dataExtractionLevelOfCareDayHospital" class="inline"> Day Hospital (IOP/PHP) </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareInpatient" value="Inpatient" disabled />
                                                <label for="dataExtractionLevelOfCareInpatient" class="inline"> Inpatient </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareOther" value="Other" onchange="document.getElementById('dataExtractionLevelOfCareOtherValue').disabled = !this.checked;" disabled />
                                                <label for="dataExtractionLevelOfCareOther" class="inline"> Other: Please specify </label><input type="text"  name='dataExtractionLevelOfCareOtherValue' id="dataExtractionLevelOfCareOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareAll" value="All" disabled /> 
                                                <label for="dataExtractionLevelOfCareAll" class="inline"> All </label>
                                        </ul>	
                                    </div>
                                </div>					
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="dataExtractionLocationInfo" class="inline">Please provide any additional information concerning location (ex: team, unit, other): </label>
                                        <textarea  name="dataExtractionLocationInfo" id="dataExtractionLocationInfo" disabled></textarea>
                                    </div>
                                </div>
                            </fieldset>
                            <br />
                            <h3 class="quest-header"><strong>What time period would you like covered by your data extraction?</strong></h3>
                            <div class="row 33%">
                                <div class="4u 8u(mobile)">
                                    <label for="dataExtractionStartDate">Start Date:</label>
                                    <input type="text"  name='dataExtractionStartDate' id="dataExtractionStartDate" disabled />
                                </div>    
                                <div class="4u 8u(mobile)">
                                    <label for="dataExtractionEndDate">End Date:</label>
                                    <input type="text"  name='dataExtractionEndDate' id="dataExtractionEndDate" disabled />
                                </div>
                                <div class="4u 8u(mobile)">
                                    <label for="dataExtractionFrequency">Frequency of extraction?</label>
                                    <input type="text"  name='dataExtractionFrequency' id="dataExtractionFrequency" disabled />
                                </div>
                            </div>
                            <div class="row 100%">
				<div class="12u">
                                    <h3 class="quest-header"><strong>What data would you like to extract and how?</strong></h3>
                                    <label for="dataExtractionWhatDataToExtract">What data would you like to extract?</label>
                                    <textarea  name='dataExtractionWhatDataToExtract' id="dataExtractionWhatDataToExtract" disabled></textarea>
				</div>
                            </div>
                            <div class="row 50%">
				<div class="6u 12u(mobile)">
                                    <label for="dataExtractionDeliveryLocation">Where would you like the data delivered to? (Server name, share name, or JHBox, Enterprise NAS, etc.)</label>
                                    <input  name='dataExtractionDeliveryLocation' id="dataExtractionDeliveryLocation" type="text" disabled />
				</div>
				<div class="6u 12u(mobile)">
                                    <label for="dataExtractionDataFormat">In what format would you like to receive your data? (Excel, pipe-delimited, CSV, SQL tables)</label>
                                    <input  name='dataExtractionDataFormat' id="dataExtractionDataFormat" type="text" disabled />
				</div>
                            </div>
                            <div class="row 100%">
				<div class="12u">
                                    <label for="dataExtractionExternalCollaboration">Will you be collaborating with any external entities?  Include information on researcher's intent to share outside of JHM. This includes corporate sponsors and multi-site studies. Also include information on what data elements are proposed to be shared and in what format (PHI, limited data set, etc)"</label>
                                    <textarea  name="dataExtractionExternalCollaboration" id="dataExtractionExternalCollaboration" disabled></textarea>
				</div>
                            </div>
                            <br />    
                        </div>
                        
                        <!-- PATIENT RECRUITMENT -->
                        <div class="hidden" id="recruit">   
                            <h3><strong>Patient Recruitment:</strong></h3>
                            <p>Is the demographic and location information for this section the same as a section you completed earlier?
                                <input type='radio'  name='patRecruitmentDemoInfo' id='patRecruitmentDemoInfoSame' value='patRecruitmentDemoInfoSame' onchange="document.getElementById('patRecruitmentAge').disabled = true; document.getElementById('patRecruitmentSexMale').disabled = true; document.getElementById('patRecruitmentSexFemale').disabled = true; document.getElementById('patRecruitmentSexNonBinary').disabled = true; document.getElementById('patRecruitmentSexAll').disabled = true; document.getElementById('patRecruitmentGenderCisMan').disabled = true; document.getElementById('patRecruitmentGenderCisWoman').disabled = true; document.getElementById('patRecruitmentGenderTransMan').disabled = true; document.getElementById('patRecruitmentGenderTransWoman').disabled = true; document.getElementById('patRecruitmentGenderAll').disabled = true; document.getElementById('patRecruitmentGenderOther').disabled = true;; document.getElementById('patRecruitmentRaceAsian').disabled = true; document.getElementById('patRecruitmentRaceNativeAmerican').disabled = true; document.getElementById('patRecruitmentRaceWhite').disabled = true; document.getElementById('patRecruitmentRaceBlack').disabled = true; document.getElementById('patRecruitmentRaceHawaiiPacificIslander').disabled = true; document.getElementById('patRecruitmentRaceOther').disabled = true; document.getElementById('patRecruitmentRaceAll').disabled = true; document.getElementById('patRecruitmentEthnicityLatino').disabled = true; document.getElementById('patRecruitmentEthnicityNonLatino').disabled = true; document.getElementById('patRecruitmentEthnicityOther').disabled = true; document.getElementById('patRecruitmentEthnicityAll').disabled = true; document.getElementById('patRecruitmentInclusion').disabled = true; document.getElementById('patRecruitmentExclusion').disabled = true; document.getElementById('patRecruitmentLocationJHH').disabled = true; document.getElementById('patRecruitmentLocationJHBMC').disabled = true; document.getElementById('patRecruitmentLocationAll').disabled = true; document.getElementById('patRecruitmentLocationOther').disabled = true;; document.getElementById('patRecruitmentLevelOfCareOutpatient').disabled = true; document.getElementById('patRecruitmentLevelOfCareInpatient').disabled = true; document.getElementById('patRecruitmentLevelOfCarePRP').disabled = true; document.getElementById('patRecruitmentLevelOfCareCaseManagement').disabled = true; document.getElementById('patRecruitmentLevelOfCareSchool').disabled = true; document.getElementById('patRecruitmentLevelOfCareMobile').disabled = true; document.getElementById('patRecruitmentLevelOfCareDayHospital').disabled = true; document.getElementById('patRecruitmentLevelOfCareOther').disabled = true; document.getElementById('patRecruitmentLevelOfCareAll').disabled = true; document.getElementById('patRecruitmentLocationInfo').disabled = true;" disabled />
                                <label for="patRecruitmentDemoInfoSame" class="inline"> Yes </label>
                                <input type='radio' name='patRecruitmentDemoInfo' id='patRecruitmentDemoInfoDifferent' value='patRecruitmentDemoInfoDifferent' onchange="document.getElementById('patRecruitmentAge').disabled = false; document.getElementById('patRecruitmentSexMale').disabled = false; document.getElementById('patRecruitmentSexFemale').disabled = false; document.getElementById('patRecruitmentSexNonBinary').disabled = false; document.getElementById('patRecruitmentSexAll').disabled = false; document.getElementById('patRecruitmentGenderCisMan').disabled = false; document.getElementById('patRecruitmentGenderCisWoman').disabled = false; document.getElementById('patRecruitmentGenderTransMan').disabled = false; document.getElementById('patRecruitmentGenderTransWoman').disabled = false; document.getElementById('patRecruitmentGenderAll').disabled = false; document.getElementById('patRecruitmentGenderOther').disabled = false; document.getElementById('patRecruitmentRaceAsian').disabled = false; document.getElementById('patRecruitmentRaceNativeAmerican').disabled = false; document.getElementById('patRecruitmentRaceWhite').disabled = false; document.getElementById('patRecruitmentRaceBlack').disabled = false; document.getElementById('patRecruitmentRaceHawaiiPacificIslander').disabled = false; document.getElementById('patRecruitmentRaceOther').disabled = false; document.getElementById('patRecruitmentRaceAll').disabled = false; document.getElementById('patRecruitmentEthnicityLatino').disabled = false; document.getElementById('patRecruitmentEthnicityNonLatino').disabled = false; document.getElementById('patRecruitmentEthnicityOther').disabled = false; document.getElementById('patRecruitmentEthnicityAll').disabled = false; document.getElementById('patRecruitmentInclusion').disabled = false; document.getElementById('patRecruitmentExclusion').disabled = false; document.getElementById('patRecruitmentLocationJHH').disabled = false; document.getElementById('patRecruitmentLocationJHBMC').disabled = false; document.getElementById('patRecruitmentLocationAll').disabled = false; document.getElementById('patRecruitmentLocationOther').disabled = false; document.getElementById('patRecruitmentLevelOfCareOutpatient').disabled = false; document.getElementById('patRecruitmentLevelOfCareInpatient').disabled = false; document.getElementById('patRecruitmentLevelOfCarePRP').disabled = false; document.getElementById('patRecruitmentLevelOfCareCaseManagement').disabled = false; document.getElementById('patRecruitmentLevelOfCareSchool').disabled = false; document.getElementById('patRecruitmentLevelOfCareMobile').disabled = false; document.getElementById('patRecruitmentLevelOfCareDayHospital').disabled = false; document.getElementById('patRecruitmentLevelOfCareOther').disabled = false; document.getElementById('patRecruitmentLevelOfCareAll').disabled = false; document.getElementById('patRecruitmentLocationInfo').disabled = false;" disabled >
                                <label for='patRecruitmentDemoInfoDifferent' class="inline"> No </label>
                            </p>
                            <fieldset id="rec-hide">
                                <h3 class="quest-header"><strong>Who composes patient population from which you would like to recruit?</strong></h3>
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                    <label for="patRecruitmentAge">Age(s) in numbers: </label>
                                        <input type="text"  name="patRecruitmentAge" id="patRecruitmentAge" disabled />
                                    </div>
                                    <div class="3u 6u(mobile)">
                                    Sex:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentSex" id="patRecruitmentSexMale" value="Male" disabled />
                                                <label for="patRecruitmentSexMale" class="inline"> Male </label></li>  
                                            <li><input type="checkbox"  name="patRecruitmentSex" id="patRecruitmentSexFemale" value="Female" disabled />
                                                <label for="patRecruitmentSexFemale" class="inline"> Female </label></li> 
                                            <li><input type="checkbox"  name="patRecruitmentSex" id="patRecruitmentSexNonBinary" value="Non-binary" disabled />
                                                <label for="patRecruitmentSexNonBinary" class="inline"> Non-binary </label></li> 
                                            <li><input type="checkbox"  name="patRecruitmentSex" id="patRecruitmentSexAll" value="All" disabled />
                                                <label for="patRecruitmentSexAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Gender:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderCisMan" value="Cis-man" disabled />
                                                <label for="patRecruitmentGenderCisMan" class="inline"> Cis-man </label></li>                                         
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderCisWoman" value="Cis-woman" disabled />
                                                <label for="patRecruitmentGenderCisWoman" class="inline"> Cis-woman </label></li> 
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderTransMan" value="Trans-man" disabled />
                                                <label for="patRecruitmentGenderTransMan" class="inline"> Trans-man </label></li> 
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderTransWoman" value="Trans-woman" disabled />
                                                <label for="patRecruitmentGenderTransWoman" class="inline"> Trans-woman </label></li> 
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderOther" value="Other" onchange="document.getElementById('patRecruitmentGenderOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRecruitmentGenderOther" class="inline"> Other: Please specify </label> <input type="text"  name='patRecruitmentGenderOtherValue' id="patRecruitmentGenderOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderAll" value="All" disabled />
                                                <label for="patRecruitmentGenderAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 50%">
                                    <div class="4u 8u(mobile)">
                                    Race:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceAsian" value="Asian" disabled>
                                                <label for="patRecruitmentRaceAsian" class="inline"> Asian </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceNativeAmerican" value="American Indian or Alaska Native" disabled>
                                                <label for="patRecruitmentRaceNativeAmerican" class="inline"> American Indian or Alaska Native </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceWhite" value="White" disabled>
                                                <label for="patRecruitmentRaceWhite" class="inline"> White </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceBlack" value="Black or African American" disabled>
                                                <label for="patRecruitmentRaceBlack" class="inline"> Black or African American </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceHawaiiPacificIslander" value="Native Hawaiian or Other Pacific Islander" disabled>
                                                <label for="patRecruitmentRaceHawaiiPacificIslander" class="inline"> Native Hawaiian or Other Pacific Islander </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceOther" value="Other" onchange="document.getElementById('patRecruitmentRaceOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRecruitmentRaceOther" class="inline"> Other: Please specify </label><input type="text"  name='patRecruitmentRaceOtherValue' id="patRecruitmentRaceOtherValue"  disabled /></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceAll" value="All" disabled>
                                                <label for="patRecruitmentRaceAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Ethnicity:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentEthnicity" id="patRecruitmentEthnicityLatino" value="Hispanic or Latino" disabled>
                                                <label for="patRecruitmentEthnicityLatino" class="inline"> Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentEthnicity" id="patRecruitmentEthnicityNonLatino" value="Not Hispanic or Latino" disabled>
                                                <label for="patRecruitmentEthnicityNonLatino" class="inline"> Not Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentEthnicity" id="patRecruitmentEthnicityOther" value="Other" onchange="document.getElementById('patRecruitmentEthnicityOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRecruitmentEthnicityOther" class="inline"> Other: Please specify </label><input type="text"  name='patRecruitmentEthnicityOtherValue' id="patRecruitmentEthnicityOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="patRecruitmentEthnicity" id="patRecruitmentEthnicityAll" value="All" disabled>
                                                <label for="patRecruitmentEthnicityAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRecruitmentInclusion">What are the other inclusion criteria of your patient population (procedures, diagnoses, labs, medications, measure score, other)? Please be as specific as possible. </label>
                                        <textarea  name="patRecruitmentInclusion" id="patRecruitmentInclusion" disabled></textarea>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRecruitmentExclusion">What are the exclusion criteria for your patient population - (ex: Deceased/Other comorbidities/Other exclusions): </label>
                                        <textarea  name="patRecruitmentExclusion" id="patRecruitmentExclusion" disabled></textarea>
                                    </div>
                                </div>
                                <br />
                                <h3 class="quest-header"><strong>Where does the patient population from which you would like to recruit receive services?</strong></h3>
                                <div class="row 33%"> 
                                    <div class="4u 8u(mobile)">
                                    Location: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentLocation" id="patRecruitmentLocationJHH" value="JHH" disabled /> 
                                                <label for="patRecruitmentLocationJHH" class="inline"> JHH </label></li>                                        
                                            <li><input type="checkbox"  name="patRecruitmentLocation" id="patRecruitmentLocationJHBMC" value="JHBMC" disabled />
                                                <label for="patRecruitmentLocationJHBMC" class="inline"> JHBMC </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentLocation" id="patRecruitmentLocationAll" value="All" disabled />
                                                <label for="patRecruitmentLocationAll" class="inline"> All </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentLocation" id="patRecruitmentLocationOther" value="Other" onchange="document.getElementById('patRecruitmentLocationOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRecruitmentLocationOther" class="inline"> Other: Please specify </label><input type="text"  name='patRecruitmentLocationOtherValue' id="patRecruitmentLocationOtherValue" disabled /></li>
                                        </ul>	
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Level of Care: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareOutpatient" value="Outpatient" disabled />
                                                <label for="patRecruitmentLevelOfCareOutpatient" class="inline"> Outpatient </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCarePRP" value="Psychiatric Rehabilitation" disabled />
                                                <label for="patRecruitmentLevelOfCarePRP" class="inline"> Psychiatric Rehabilitation </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareCaseManagement" value="Case Management" disabled />
                                                <label for="patRecruitmentLevelOfCareCaseManagement" class="inline"> Case Management </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareSchool" value="School Based" disabled />
                                                <label for="patRecruitmentLevelOfCareSchool" class="inline"> School Based </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareMobile" value="Mobile Treatment" disabled />
                                                <label for="patRecruitmentLevelOfCareMobile" class="inline"> Mobile Treatment </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareDayHospital" value="Day Hospital (IOP/PHP)" disabled />
                                                <label for="patRecruitmentLevelOfCareDayHospital" class="inline"> Day Hospital (IOP/PHP) </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareInpatient" value="Inpatient" disabled />
                                                <label for="patRecruitmentLevelOfCareInpatient" class="inline"> Inpatient </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareOther" value="Other" onchange="document.getElementById('patRecruitmentLevelOfCareOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRecruitmentLevelOfCareOther" class="inline"> Other: Please specify </label><input type="text"  name='patRecruitmentLevelOfCareOtherValue' id="patRecruitmentLevelOfCareOtherValue" disabled /></li>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareAll" disabled /> 
                                                <label for="patRecruitmentLevelOfCareAll" class="inline"> All </label>
                                        </ul>	
                                    </div>
                                </div>					
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRecruitmentLocationInfo" class="inline">Please provide any additional information concerning location (ex: team, unit, other): </label>
                                        <textarea  name="patRecruitmentLocationInfo" id="patRecruitmentLocationInfo" disabled></textarea>
                                    </div>
                                </div>
                            </fieldset>
                            <br />
                            <h3 class="quest-header"><strong>When and how would you like to recruit patients?</strong></h3>
                            <div class="row 50%">
                                <div class="6u 12u(mobile)">
                                    <label for="patRecruitmentStartDate">When would you like to start recruitment?</label>
                                    <input type="text"  name='patRecruitmentStartDate' id="patRecruitmentStartDate" disabled />
                                </div>    
                                <div class="6u 12u(mobile)">
                                    <label for="patRecruitmentLength">How long would you like to recruitment to last?</label>
                                    <input type="text"  name='patRecruitmentLength' id="patRecruitmentLength" disabled />
                                </div>
                            </div>
                            <div class="row 100%">
                                <div class="12u">
                                How would you like patients to be recruited?
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patRecruitmentContactMethod" id="patRecruitmentContactPatient" value="Patient Notification Through MyChart" disabled>
                                            <label for="patRecruitmentContactPatient" class="inline"> Patient Notification Through MyChart </label></li>
					<li><input type="checkbox"  name="patRecruitmentContactMethod" id="patRecruitmentContactStudyTeam" value="Study Team Member Notification When Appropriate Patient Checks In" onchange="document.getElementById('patRecruitmentContactPI').disabled = !this.checked; document.getElementById('patRecruitmentContactSubmitter').disabled = !this.checked;" disabled>
                                            <label for="patRecruitmentContactStudyTeam" class="inline"> Study Team Member Notification When Appropriate Patient Checks In </label></li>
					<li><input type="checkbox"  name="patRecruitmentContactMethod" id="patRecruitmentContactProvider" value="Provider Notification During Patient Encounter" disabled>
                                            <label for="patRecruitmentContactProvider" class="inline"> Provider Notification During Patient Encounter</label></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="hidden" id="contact">
                                <div class="row 50%">
                                     <div class="4u 8u(mobile)">
                                        <table id="stm-con">
                                            <thead>
                                                <tr>
                                                    <th>Contact Person</th>
                                                    <th>Contact?</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>PI</td>
                                                    <td>
                                                        <input type="checkbox"  name='patRecruitmentContactPerson' id="patRecruitmentContactPI" value="patRecruitmentContactPI" disabled />
                                                        <label for="patRecruitmentContactPI"></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Submitter</td>
                                                    <td>
                                                        <input type="checkbox"  name='patRecruitmentContactPerson' value="patRecruitmentContactSubmitter" id="patRecruitmentContactSubmitter" disabled />
                                                        <label for="patRecruitmentContactSubmitter"></label>
                                                    </td>
                                                </tr>
                                                <tr class="contact-row" id="contact-row">
                                                    <td>
                                                        <input type="text"  name="patRecruitmentContactStudyTeamJHED[]" id="patRecruitmentContactStudyTeamJHED" placeholder="JHED ID" disabled />
                                                        <label for="patRecruitmentContactStudyTeamJHED"></label>
                                                    </td>
                                                    <td>
                                                        <input type="checkbox"  name='patRecruitmentContactPerson' id="patRecruitmentContactStudyTeamMember" value="patRecruitmentContactStudyTeamMember" disabled />                                            
                                                        <label for="patRecruitmentContactStudyTeamMember"></label>
                                                    </td>
                                                </tr> 
                                            </tbody>
                                        </table>
                                     </div>
                                </div>
                                
                                <button type="button" id="add-contact" onclick="document.getElementById('patRecruitmentContactStudyTeamJHED').disabled=false; document.getElementById('patRecruitmentContactStudyTeamMember').disabled=false;">Add Study Team Member</button>
                                <button type="button" id="delete-contact" onclick="document.getElementById('patRecruitmentContactStudyTeamJHED').disabled=true; document.getElementById('patRecruitmentContactStudyTeamMember').disabled=true;">Remove Study Team Member</button>
                            </div>    
                                
                        </div>
                        <br /> 
                        <div class="row 100%">
                            <div class="12u">
				<center>
                                    <ul class="actions">
                                        <li><input type="submit" id="simplepost" value="Submit Request" /></li>
					<li><input type="reset" value="Clear Form" onclick="window.location.reload(); return confirm('Are you sure you want to clear the form?');" /></li>
                                    </ul>
				</center>
                            </div>
                        </div>
                    </form>
                    
                    <!-- FEATURES ROW -->
                    <div class="row features">
                        <section class="4u 12u(narrower) feature">
                            <div class="image-wrapper first">
                                <a href="./resources" class="image featured"><img src="./images/gradient.png" alt="" /></a>
                            </div>
                            <header>
                                <h3>MHi-Resources</h3>
                            </header>
                            <p class="blueText">Do you have a research proposal in mind? Follow the link to learn more
                                about submitting your request and moving forward.</p>
                                <ul class="actions">
                                    <li><a href="./resources" class="button">Click Here</a></li>
                                </ul>
                        </section>
                        <section class="4u 12u(narrower) feature">
                            <div class="image-wrapper">
                                <a href="./resources" class="image featured"><img src="./images/gradient.png" alt="" /></a>
                            </div>
                            <header>
                                <h3>MHi-Account</h3>
                            </header>
                            <p class="blueText">Already submitted your research proposal? You can keep track your progress
                                by following the link. Progress will be updated on a regular basis.</p>
                            <ul class="actions">
                                <li><a href="./account" class="button">Click Here</a></li>
                            </ul>
                        </section>
                        <section class="4u 12u(narrower) feature">
                            <div class="image-wrapper">
                                <a href="./library" class="image featured"><img src="./images/gradient.png" alt="" /></a>
                            </div>
                            <header>
                                <h3>MHi-Library</h3>
                            </header>
                            <p class="blueText">A growing library of measures spanning function and symptom domains. Widely
                                accepted and used in clinical practice and research.</p>
                            <ul class="actions">
                                <li><a href="./library" class="button">Click Here</a></li>
                            </ul>
                        </section>
                    </div>
                </div>
            </div>
            
            <!-- FOOTER -->
            <div id="footer-wrapper">
                <div id="footer" class="container">
                    <header class="major">
                        <h2>Have a question? Contact us!</h2>
                        <p>For information and inquiries please use the contact form below. If you are a 
                            researcher/provider who would like to use the MHi-CARE toolset see the 
                            <em><a href="./provider.html">Provider Portal</a></em> for resources specific to your needs.</p>
                    </header>
                    <div class="row">
                        <section class="6u 12u(narrower)" id="contactForm">
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
                
                <!-- COPYRIGHT -->
                <div id="copyright" class="container">
                    <ul>
                        <li><a href="http://www.hopkinsmedicine.org/psychiatry"><img src="./images/hopkins.png" /></a></li>
                        <li>&copy; Untitled. All rights reserved.</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Scripts -->
        
        <script>
 $('form').submit(function() {
                    alert($(this).serialize());
                    return false;
                });
            });
            
 </script>
    </head>
    
        <script src="./assets/js/js-webshim/minified/polyfiller.js"></script>
        <script src="./assets/js/jquery.dropotron.min.js"></script>
	<script src="./assets/js/skel.min.js"></script>
	<script src="./assets/js/util.js"></script>
	<script src="./assets/js/main.js"></script>
    </body>
</html>