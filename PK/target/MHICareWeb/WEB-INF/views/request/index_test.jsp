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
                            
                    <form class="ws-validate" id="requestform" method="post" action="doMHIRequestTest" >
                        <h3><strong>Study Team Information:</strong></h3>
                        <h3 class="quest-header"><strong>PI:</strong></h3>
                        <div class="row 33%">
                            <div class="4u 8u(mobile)">
                                <label for="piName">Name: </label>
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
                        <div class="row 33%">
                            <div class="4u 8u(mobile)">
                                <label for="phone">Contact Phone Number: </label>
                                <input  name="phone" id="phone" type="text" required />
                            </div>
                            <div class="4u 8u(mobile)">
                                <label for="submissionDate">Submission Date: </label>
                                <input class="submissionDate" name="submissionDate" id="submissionDate" type="date" />
                            </div>
                        </div>
                        <br />
                        Is the person making the submission different from the PI?
                        <input type="radio"  name="submitterCheck" id="submitterDifferent" value='submitterDifferent' onchange="document.getElementById('submitterName').disabled = !this.checked; document.getElementById('submitterJhedID').disabled = !this.checked; document.getElementById('submitterEmail').disabled = !this.checked;" />
                        <label for='submitterCheck' class="inline"> Yes </label>
                        <input type="radio" name="submitterCheck" id="submitterSame" value='submitterSame'> 
                        <label for='submitterDifferent' class="inline"> No </label>
  
                        <div class='hidden' id="submitter">
                            <br />
                            <h3 class="quest-header"><strong>Submitter:</strong></h3>
                            <div class="row 33%">
                                <div class="4u 8u(mobile)">
                                    <label for="submitterName">Name: </label>
                                    <input  name="submitterName" id="submitterName" placeholder="Last Name, First Name" type="text" required disabled />
                                </div>
                                <div class="4u 8u(mobile)">
                                    <label for="submitterJhedID">JHED ID: </label>
                                    <input  name="submitterJhedID" id="submitterJhedID" type="text" required disabled />
                                </div>
                                <div class="4u 8u(mobile)">
                                    <label for="submitterEmail">Email: </label>
                                    <input  name="submitterEmail" id="submitterEmail" placeholder="you@example.com" type="email" required disabled />
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                        <h3 class="quest-header"><strong>Other Study Team Members:</strong></h3>
                        <table id="stmember">
                            <tbody>
                                <tr class="model-row">
                                    <td>Name:
                                        <label for="studyTeamMemberName"></label>
                                        <input type="text"  name="studyTeamMemberName[]" id="studyTeamMemberName" placeholder="Last Name, First Name" required disabled />
                                    </td>
                                    <td>JHED ID:
                                        <label for="studyTeamMemberJHED"></label>
                                        <input type="text"  name="studyTeamMemberJHED[]" id="studyTeamMemberJHED" required disabled  />
                                    </td>
                                    <td>Email:
                                        <label for="studyTeamMemberEmail"></label>
                                        <input type="email"  name="studyTeamMemberEmail[]" id="studyTeamMemberEmail" placeholder="you@example.com" required disabled />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <center>
                            <button type="button" id="add" onclick="document.getElementById('studyTeamMemberName').disabled=false; document.getElementById('studyTeamMemberJHED').disabled=false; document.getElementById('studyTeamMemberEmail').disabled=false;">Add Study Team Member</button>
                            <button type="button" id="delete" onclick="document.getElementById('studyTeamMemberName').disabled=true; document.getElementById('studyTeamMemberJHED').disabled=true; document.getElementById('studyTeamMemberEmail').disabled=true;">Remove Study Team Member</button>
                        </center>
                        <br />
                        <h3><strong>Study Information:</strong></h3>
                        <div class="row 100%">
                            <div class="12u">
                                <label for="studyTitle">Study Title: </label>
                                <input  name="studyTitle" id="studyTitle" type="text" required />
                            </div>			
                        </div>
                        <div class="row 100%">
                            <div class="12u">
                                <label for="projectDescription">Brief Description of Project - please provide a brief overview of your research study </label>
                                <textarea  name="projectDescription" id="projectDescription" required></textarea>
                            </div>
                        </div>
                        <br />
                        <div class="row 100%">
                            <div class="12u">
                                <h3><strong>MHi-CARE Tools:</strong></h3>
                                <h3 class="quest-header"><strong>Which of the following would you like to do with your specified patient population? Check all that apply</strong></h3>
                                <ul class="requestUOList">
                                    <li><input type="checkbox" name="toolset" id="patStudyEstimateCheck" onchange="document.getElementById('patStudyEstimateAge').disabled = !this.checked; document.getElementById('patStudyEstimateSexMale').disabled = !this.checked; document.getElementById('patStudyEstimateSexFemale').disabled = !this.checked; document.getElementById('patStudyEstimateSexNonBinary').disabled = !this.checked; document.getElementById('patStudyEstimateSexAll').disabled = !this.checked; document.getElementById('patStudyEstimateGenderCisMan').disabled = !this.checked; document.getElementById('patStudyEstimateGenderCisWoman').disabled = !this.checked; document.getElementById('patStudyEstimateGenderTransMan').disabled = !this.checked; document.getElementById('patStudyEstimateGenderTransWoman').disabled = !this.checked; document.getElementById('patStudyEstimateGenderOther').disabled = !this.checked; document.getElementById('patStudyEstimateGenderAll').disabled = !this.checked; document.getElementById('patStudyEstimateRaceAsian').disabled = !this.checked; document.getElementById('patStudyEstimateRaceNativeAmerican').disabled = !this.checked; document.getElementById('patStudyEstimateRaceWhite').disabled = !this.checked; document.getElementById('patStudyEstimateRaceBlack').disabled = !this.checked; document.getElementById('patStudyEstimateRaceHawaiiPacificIslander').disabled = !this.checked; document.getElementById('patStudyEstimateRaceOther').disabled = !this.checked; document.getElementById('patStudyEstimateRaceAll').disabled = !this.checked; document.getElementById('patStudyEstimateEthnicityLatino').disabled = !this.checked; document.getElementById('patStudyEstimateEthnicityNonLatino').disabled = !this.checked; document.getElementById('patStudyEstimateEthnicityOther').disabled = !this.checked; document.getElementById('patStudyEstimateEthnicityAll').disabled = !this.checked; document.getElementById('patStudyEstimateInclusion').disabled = !this.checked; document.getElementById('patStudyEstimateExclusion').disabled = !this.checked; document.getElementById('patStudyEstimateLocationJHH').disabled = !this.checked; document.getElementById('patStudyEstimateLocationJHBMC').disabled = !this.checked; document.getElementById('patStudyEstimateLocationAll').disabled = !this.checked; document.getElementById('patStudyEstimateLocationOther').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareOutpatient').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareCaseManagement').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCarePRP').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareSchool').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareMobile').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareDayHospital').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareInpatient').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareOther').disabled = !this.checked; document.getElementById('patStudyEstimateLevelOfCareAll').disabled = !this.checked; document.getElementById('patStudyEstimateLocation').disabled = !this.checked;" data-grouprequired="">
                                        <label for="patStudyEstimateCheck" class="tool-head inline"> Patient estimate for study design </label><img class="qmark" id="ss-help" src="./images/qmark-icon.png" alt="" title="Obtain an estimate of the number of patients in a specified population" /></li>
                                    <li><input type="checkbox" name="toolset" id="patRegistryCheck" onchange="document.getElementById('patRegistryAge').disabled = !this.checked; document.getElementById('patRegistrySexMale').disabled = !this.checked; document.getElementById('patRegistrySexFemale').disabled = !this.checked; document.getElementById('patRegistrySexNonBinary').disabled = !this.checked; document.getElementById('patRegistrySexAll').disabled = !this.checked; document.getElementById('patRegistryGenderCisMan').disabled = !this.checked; document.getElementById('patRegistryGenderCisWoman').disabled = !this.checked; document.getElementById('patRegistryGenderTransMan').disabled = !this.checked; document.getElementById('patRegistryGenderTransWoman').disabled = !this.checked; document.getElementById('patRegistryGenderOther').disabled = !this.checked; document.getElementById('patRegistryGenderAll').disabled = !this.checked; document.getElementById('patRegistryRaceAsian').disabled = !this.checked; document.getElementById('patRegistryRaceNativeAmerican').disabled = !this.checked; document.getElementById('patRegistryRaceWhite').disabled = !this.checked; document.getElementById('patRegistryRaceBlack').disabled = !this.checked; document.getElementById('patRegistryRaceHawaiiPacificIslander').disabled = !this.checked; document.getElementById('patRegistryRaceOther').disabled = !this.checked; document.getElementById('patRegistryRaceAll').disabled = !this.checked; document.getElementById('patRegistryEthnicityLatino').disabled = !this.checked; document.getElementById('patRegistryEthnicityNonLatino').disabled = !this.checked; document.getElementById('patRegistryEthnicityOther').disabled = !this.checked; document.getElementById('patRegistryEthnicityAll').disabled = !this.checked; document.getElementById('patRegistryInclusion').disabled = !this.checked; document.getElementById('patRegistryExclusion').disabled = !this.checked; document.getElementById('patRegistryLocationJHH').disabled = !this.checked; document.getElementById('patRegistryLocationJHBMC').disabled = !this.checked; document.getElementById('patRegistryLocationAll').disabled = !this.checked; document.getElementById('patRegistryLocationOther').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareOutpatient').disabled = !this.checked; document.getElementById('patRegistryLevelOfCarePRP').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareCaseManagement').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareSchool').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareMobile').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareDayHospital').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareInpatient').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareOther').disabled = !this.checked; document.getElementById('patRegistryLevelOfCareAll').disabled = !this.checked; document.getElementById('patRegistryLocationInfo').disabled = !this.checked; document.getElementById('patRegistryMetricDiagnoses').disabled = !this.checked; document.getElementById('patRegistryMetricMeds').disabled = !this.checked; document.getElementById('patRegistryMetricLabs').disabled = !this.checked; document.getElementById('patRegistryMetricMeasures').disabled = !this.checked; document.getElementById('patRegistryOtherMetric').disabled = !this.checked;" data-grouprequired="">
                                        <label for="patRegistryCheck" class="tool-head inline"> Patient registry </label><img class="qmark" src="./images/qmark-icon.png" alt="" title="Track information on patients over time" /></li>
                                    <li><input type="checkbox" name="toolset" id="electronicDataCaptureCheck" onchange="document.getElementById('eDataCaptureAge').disabled = !this.checked; document.getElementById('eDataCaptureSexMale').disabled = !this.checked; document.getElementById('eDataCaptureSexFemale').disabled = !this.checked; document.getElementById('eDataCaptureSexNonBinary').disabled = !this.checked; document.getElementById('eDataCaptureSexAll').disabled = !this.checked; document.getElementById('eDataCaptureGenderCisMan').disabled = !this.checked; document.getElementById('eDataCaptureGenderCisWoman').disabled = !this.checked; document.getElementById('eDataCaptureGenderTransMan').disabled = !this.checked; document.getElementById('eDataCaptureGenderTransWoman').disabled = !this.checked; document.getElementById('eDataCaptureGenderOther').disabled = !this.checked; document.getElementById('eDataCaptureGenderAll').disabled = !this.checked; document.getElementById('eDataCaptureRaceAsian').disabled = !this.checked; document.getElementById('eDataCaptureRaceNativeAmerican').disabled = !this.checked; document.getElementById('eDataCaptureRaceWhite').disabled = !this.checked; document.getElementById('eDataCaptureRaceBlack').disabled = !this.checked; document.getElementById('eDataCaptureRaceHawaiiPacificIslander').disabled = !this.checked; document.getElementById('eDataCaptureRaceOther').disabled = !this.checked; document.getElementById('eDataCaptureRaceAll').disabled = !this.checked; document.getElementById('eDataCaptureEthnicityLatino').disabled = !this.checked; document.getElementById('eDataCaptureEthnicityNonLatino').disabled = !this.checked; document.getElementById('eDataCaptureEthnicityOther').disabled = !this.checked; document.getElementById('eDataCaptureEthnicityAll').disabled = !this.checked; document.getElementById('eDataCaptureInclusion').disabled = !this.checked; document.getElementById('eDataCaptureExclusion').disabled = !this.checked; document.getElementById('eDataCaptureLocationJHH').disabled = !this.checked; document.getElementById('eDataCaptureLocationJHBMC').disabled = !this.checked; document.getElementById('eDataCaptureLocation-both').disabled = !this.checked; document.getElementById('eDataCaptureLocationOther').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareOutpatient').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCarePRP').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareSchool').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareMobile').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareCaseManagement').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareDayHospital').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareInpatient').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareOther').disabled = !this.checked; document.getElementById('eDataCaptureLevelOfCareAll').disabled = !this.checked; document.getElementById('eDataCaptureLocationInfo').disabled = !this.checked; document.getElementById('eDataCaptureStartDate').disabled = !this.checked; document.getElementById('eDataCaptureFrequency').disabled = !this.checked; document.getElementById('eDataCaptureLength').disabled = !this.checked; document.getElementById('eDataCaptureInfoToCapture').disabled = !this.checked; document.getElementById('eDataCaptureEntrantOfData').disabled = !this.checked; document.getElementById('eDataCapturePlatform').disabled = !this.checked; document.getElementById('eDataCaptureVisualize').disabled = !this.checked; document.getElementById('eDataCaptureDoNotVisualize').disabled = !this.checked;" data-grouprequired="">
                                        <label for="electronicDataCaptureCheck" class="tool-head inline"> Electronic data capture </label><img class="qmark" src="./images/qmark-icon.png" alt="" title="Build tools within and alongside the EMR to capture patient data" /></li>
                                    <li><input type="checkbox" name="toolset" id="dataExtractionCheck" onchange="document.getElementById('dataExtractionAge').disabled = !this.checked; document.getElementById('dataExtractionSexMale').disabled = !this.checked; document.getElementById('dataExtractionSexFemale').disabled = !this.checked; document.getElementById('dataExtractionSexNonBinary').disabled = !this.checked; document.getElementById('dataExtractionSexAll').disabled = !this.checked; document.getElementById('dataExtractionGenderCisMan').disabled = !this.checked; document.getElementById('dataExtractionGenderCisWoman').disabled = !this.checked; document.getElementById('dataExtractionGenderTransMan').disabled = !this.checked; document.getElementById('dataExtractionGenderTransWoman').disabled = !this.checked; document.getElementById('dataExtractionGenderOther').disabled = !this.checked; document.getElementById('dataExtractionGenderAll').disabled = !this.checked; document.getElementById('dataExtractionRaceAsian').disabled = !this.checked; document.getElementById('dataExtractionRaceNativeAmerican').disabled = !this.checked; document.getElementById('dataExtractionRaceWhite').disabled = !this.checked; document.getElementById('dataExtractionRaceBlack').disabled = !this.checked; document.getElementById('dataExtractionRaceHawaiiPacificIslander').disabled = !this.checked; document.getElementById('dataExtractionRaceOther').disabled = !this.checked; document.getElementById('dataExtractionRaceAll').disabled = !this.checked; document.getElementById('dataExtractionEthnicityLatino').disabled = !this.checked; document.getElementById('dataExtractionEthnicityNonLatino').disabled = !this.checked; document.getElementById('dataExtractionEthnicityOther').disabled = !this.checked; document.getElementById('dataExtractionEthnicityAll').disabled = !this.checked; document.getElementById('dataExtractionInclusion').disabled = !this.checked; document.getElementById('dataExtractionExclusion').disabled = !this.checked; document.getElementById('dataExtractionLocationJHH').disabled = !this.checked; document.getElementById('dataExtractionLocationJHBMC').disabled = !this.checked; document.getElementById('dataExtractionLocationAll').disabled = !this.checked; document.getElementById('dataExtractionLocationOther').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareOutpatient').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCarePRP').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareCaseManagement').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareSchool').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareMobile').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareDayHospital').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareInpatient').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareOther').disabled = !this.checked; document.getElementById('dataExtractionLevelOfCareAll').disabled = !this.checked; document.getElementById('dataExtractionLocationInfo').disabled = !this.checked; document.getElementById('dataExtractionStartDate').disabled = !this.checked; document.getElementById('dataExtractionFrequency').disabled = !this.checked; document.getElementById('dataExtractionEndDate').disabled = !this.checked; document.getElementById('dataExtractionWhatDataToExtract').disabled = !this.checked; document.getElementById('dataExtractionDeliveryLocation').disabled = !this.checked; document.getElementById('dataExtractionDataFormat').disabled = !this.checked; document.getElementById('dataExtractionExternalCollaboration').disabled = !this.checked;" data-grouprequired="">
                                        <label for="dataExtractionCheck" class="tool-head inline"> Data extraction </label><img class="qmark" src="./images/qmark-icon.png" alt="" title="Identify a patient population and extract specified data from the EMR"/></li>
                                    <li><input type="checkbox" name="toolset" id="patRecruitmentCheck" onchange="document.getElementById('patRecruitmentAge').disabled = !this.checked; document.getElementById('patRecruitmentSexMale').disabled = !this.checked; document.getElementById('patRecruitmentSexFemale').disabled = !this.checked; document.getElementById('patRecruitmentSexNonBinary').disabled = !this.checked; document.getElementById('patRecruitmentSexAll').disabled = !this.checked; document.getElementById('patRecruitmentGenderCisMan').disabled = !this.checked; document.getElementById('patRecruitmentGenderCisWoman').disabled = !this.checked; document.getElementById('patRecruitmentGenderTransMan').disabled = !this.checked; document.getElementById('patRecruitmentGenderTransWoman').disabled = !this.checked; document.getElementById('patRecruitmentGenderOther').disabled = !this.checked; document.getElementById('patRecruitmentGenderAll').disabled = !this.checked; document.getElementById('patRecruitmentRaceAsian').disabled = !this.checked; document.getElementById('patRecruitmentRaceNativeAmerican').disabled = !this.checked; document.getElementById('patRecruitmentRaceWhite').disabled = !this.checked; document.getElementById('patRecruitmentRaceBlack').disabled = !this.checked; document.getElementById('patRecruitmentRaceHawaiiPacificIslander').disabled = !this.checked; document.getElementById('patRecruitmentRaceOther').disabled = !this.checked; document.getElementById('patRecruitmentRaceAll').disabled = !this.checked; document.getElementById('patRecruitmentEthnicityLatino').disabled = !this.checked; document.getElementById('patRecruitmentEthnicityNonLatino').disabled = !this.checked; document.getElementById('patRecruitmentEthnicityOther').disabled = !this.checked; document.getElementById('patRecruitmentEthnicityAll').disabled = !this.checked; document.getElementById('patRecruitmentInclusion').disabled = !this.checked; document.getElementById('patRecruitmentExclusion').disabled = !this.checked; document.getElementById('patRecruitmentLocationJHH').disabled = !this.checked; document.getElementById('patRecruitmentLocationJHBMC').disabled = !this.checked; document.getElementById('patRecruitmentLocationAll').disabled = !this.checked; document.getElementById('patRecruitmentLocationOther').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareOutpatient').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCarePRP').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareSchool').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareCaseManagement').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareMobile').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareDayHospital').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareInpatient').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareOther').disabled = !this.checked; document.getElementById('patRecruitmentLevelOfCareAll').disabled = !this.checked; document.getElementById('patRecruitmentLocationInfo').disabled = !this.checked; document.getElementById('patRecruitmentStartDate').disabled = !this.checked; document.getElementById('patRecruitmentLength').disabled = !this.checked; document.getElementById('patRecruitmentContactPatient').disabled = !this.checked; document.getElementById('patRecruitmentContactStudyTeam').disabled = !this.checked; document.getElementById('patRecruitmentContactProvider').disabled = !this.checked; document.getElementById('patRecruitmentContactPI').disabled = !this.checked; document.getElementById('patRecruitmentContactSubmitter').disabled = !this.checked;" data-grouprequired="">
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
                                    <input  name="patStudyEstimateAge" id="patStudyEstimateAge" type="text" required disabled />
                                </div>
                                <div class="3u 6u(mobile)">
                                Sex:  Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateSex" id="patStudyEstimateSexMale" data-grouprequired="" disabled />
                                            <label for="patStudyEstimateSexMale" class="inline"> Male </label></li>  
                                        <li><input type="checkbox"  name="patStudyEstimateSex" id="patStudyEstimateSexFemale" disabled />
                                            <label for="patStudyEstimateSexFemale"  class="inline"> Female </label></li> 
                                        <li><input type="checkbox"  name="patStudyEstimateSex" id="patStudyEstimateSexNonBinary" disabled />
                                            <label for="patStudyEstimateSexNonBinary"  class="inline"> Non-binary </label></li> 
                                        <li><input type="checkbox"  name="patStudyEstimateSex" id="patStudyEstimateSexAll" disabled />
                                            <label for="patStudyEstimateSexAll" class="inline"> All </label></li> 
                                    </ul>
                                </div>
                                <div class="4u 8u(mobile)">
                                Gender:  Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderCisMan" data-grouprequired="" disabled />
                                            <label for="patStudyEstimateGenderCisMan"  class="inline"> Cis-man </label></li>                                         
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderCisWoman" disabled />
                                            <label for="patStudyEstimateGenderCisWoman"  class="inline"> Cis-woman </label></li> 
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderTransMan" disabled />
                                            <label for="patStudyEstimateGenderTransMan" class="inline"> Trans-man </label></li> 
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderTransWoman" disabled />
                                            <label for="patStudyEstimateGenderTransWoman" class="inline"> Trans-woman </label></li> 
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderOther" onclick="showMe('patStudyEstimateGenderOtherValue', this)" onchange="document.getElementById('patStudyEstimateGenderOtherValue').disabled = !this.checked;" disabled />
                                            <label for="patStudyEstimateGenderOther" class="inline"> Other: Please specify </label> <input type="text"  name='patStudyEstimateGenderOtherValue' id="patStudyEstimateGenderOtherValue" class="puppies" required disabled /></li>
                                        <li><input type="checkbox"  name="patStudyEstimateGender" id="patStudyEstimateGenderAll" disabled />
                                            <label for="patStudyEstimateGenderAll" class="inline"> All </label></li> 
                                    </ul>
                                </div>
                            </div>
                            <div class="row 33%">
                                <div class="4u 8u(mobile)">
                                Race:  Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceAsian" data-grouprequired="" disabled>
                                            <label for="patStudyEstimateRaceAsian"  class="inline"> Asian </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceNativeAmerican" disabled>
                                            <label for="patStudyEstimateRaceNativeAmerican" class="inline"> American Indian or Alaska Native </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceWhite" disabled>
                                            <label for="patStudyEstimateRaceWhite" class="inline"> White </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceBlack" disabled>
                                            <label for="patStudyEstimateRaceBlack" class="inline"> Black or African American </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceHawaiiPacificIslander" disabled>
                                            <label for="patStudyEstimateRaceHawaiiPacificIslander" class="inline"> Native Hawaiian or Other Pacific Islander </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceOther" onclick="showMe('patStudyEstimateRaceOtherValue', this)" onchange="document.getElementById('patStudyEstimateRaceOtherValue').disabled = !this.checked;" disabled />
                                            <label for="patStudyEstimateRaceOther" class="inline"> Other: Please specify </label><input type="text"  name='patStudyEstimateRaceOtherValue' id="patStudyEstimateRaceOtherValue" required disabled /></li>
                                        <li><input type="checkbox"  name="patStudyEstimateRace" id="patStudyEstimateRaceAll" disabled>
                                            <label for="patStudyEstimateRaceAll" class="inline"> All </label></li>
                                    </ul>
                                </div>
                                <div class="4u 8u(mobile)">
                                Ethnicity:  Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateEthnicity" id="patStudyEstimateEthnicityLatino" data-grouprequired="" disabled>
                                            <label for="patStudyEstimateEthnicityLatino" class="inline"> Hispanic or Latino </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateEthnicity" id="patStudyEstimateEthnicityNonLatino" disabled>
                                            <label for="patStudyEstimateEthnicityNonLatino" class="inline"> Not Hispanic or Latino </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateEthnicity" id="patStudyEstimateEthnicityOther" onclick="showMe('patStudyEstimateEthnicityOtherValue', this)" onchange="document.getElementById('patStudyEstimateEthnicityOtherValue').disabled = !this.checked;" disabled />
                                            <label for="patStudyEstimateEthnicityOther" class="inline"> Other: Please specify </label><input type="text"  name='patStudyEstimateEthnicityOtherValue' id="patStudyEstimateEthnicityOtherValue" required disabled /></li>
                                        <li><input type="checkbox"  name="patStudyEstimateEthnicity" id="patStudyEstimateEthnicityAll" disabled>
                                            <label for="patStudyEstimateEthnicityAll" class="inline"> All </label></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row 100%">
                                <div class="12u">
                                    <label for="patStudyEstimateInclusion">What are the other inclusion criteria of your patient population (procedures, diagnoses, labs, medications, measure score, other)? Please be as specific as possible. </label>
                                    <textarea  name="patStudyEstimateInclusion" id="patStudyEstimateInclusion" required disabled></textarea>
				</div>
                            </div>
                            <div class="row 100%">
				<div class="12u">
                                    <label for="patStudyEstimateExclusion">What are the exclusion criteria for your patient population - (ex: Deceased/Other comorbidities/Other exclusions): </label>
                                    <textarea  name="patStudyEstimateExclusion" id="patStudyEstimateExclusion" required disabled></textarea>
				</div>
                            </div>
                            <br />
                            <h3 class="quest-header"><strong>Where do the patients you would like to estimate receive services?</strong></h3>
                            <div class="row 33%"> 
				<div class="4u 8u(mobile)">
				Location: Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateLocation" id="patStudyEstimateLocationJHH" data-grouprequired="" disabled /> 
                                            <label for="patStudyEstimateLocationJHH" class="inline"> JHH </label></li>                                        
                                        <li><input type="checkbox"  name="patStudyEstimateLocation" id="patStudyEstimateLocationJHBMC" disabled />
                                            <label for="patStudyEstimateLocationJHBMC" class="inline"> JHBMC </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateLocation" id="patStudyEstimateLocationAll" disabled />
                                            <label for="patStudyEstimateLocationAll" class="inline"> Both </label></li>
                                        <li><input type="checkbox"  name="patStudyEstimateLocation" id="patStudyEstimateLocationOther" onclick="showMe('patStudyEstimateLocationOtherValue', this)" onchange="document.getElementById('patStudyEstimateLocationOtherValue').disabled = !this.checked;" disabled />
                                            <label for="patStudyEstimateLocationOther" class="inline"> Other: Please specify </label><input type="text"  name='patStudyEstimateLocationOtherValue' id="patStudyEstimateLocationOtherValue" required disabled /></li>
                                    </ul>	
				</div>
                                <div class="4u 8u(mobile)">
				Level of Care: Check all that apply
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareOutpatient" data-grouprequired="" disabled />
                                            <label for="patStudyEstimateLevelOfCareOutpatient" class="inline"> Outpatient </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCarePRP" disabled />
                                            <label for="patStudyEstimateLevelOfCarePRP" class="inline"> Psychiatric Rehabilitation </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareCaseManagement" disabled />
                                            <label for="patStudyEstimateLevelOfCareCaseManagement" class="inline"> Case Management </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareSchool" disabled />
                                            <label for="patStudyEstimateLevelOfCareSchool" class="inline"> School Based </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareMobile" disabled />
                                            <label for="patStudyEstimateLevelOfCareMobile" class="inline"> Mobile Treatment </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareDayHospital" disabled />
                                            <label for="patStudyEstimateLevelOfCareDayHospital" class="inline"> Day Hospital (IOP/PHP) </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareInpatient" disabled />
                                            <label for="patStudyEstimateLevelOfCareInpatient" class="inline"> Inpatient </label>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareOther" onclick="showMe('patStudyEstimateLevelOfCareOtherValue', this)" onchange="document.getElementById('patStudyEstimateLevelOfCareOtherValue').disabled = !this.checked;" disabled />
                                            <label for="patStudyEstimateLevelOfCareOther" class="inline"> Other: Please specify </label><input type="text"  name='patStudyEstimateLevelOfCareOtherValue' id="patStudyEstimateLevelOfCareOtherValue" required disabled /></li>
                                        <li><input type="checkbox"  name="patStudyEstimateLevelOfCare" id="patStudyEstimateLevelOfCareAll" disabled /> 
                                            <label for="patStudyEstimateLevelOfCareOther" class="inline"> All </label>
                                    </ul>	
				</div>
                            </div>					
                            <div class="row 100%">
				<div class="12u">
                                    <label for="patStudyEstimateLocationinfo" class="inline">Please provide any additional information concerning location (ex: team, unit, other): </label>
                                    <textarea  name="patStudyEstimateLocationinfo" id="patStudyEstimateLocation" required disabled></textarea>
				</div>
                            </div>
                        <br />
                        </div>
                        
                        <!-- PATIENT REGISTRIES -->
                        <div class="hidden" id="registry">
                            <h3><strong>Patient Registry:</strong></h3>
                            <p>Is the demographic and location information for this section the same as a section you previously completed?
                                <input type='radio'  name='patRegistryDemoInfo' id='patRegistryDemoInfoSame' value='patRegistryDemoInfoSame'  data-grouprequired='' />
                                <label for="reg-same" class="inline"> Yes </label>
                                <input type='radio' name='patRegistryDemoInfo' id='patRegistryDemoInfoDifferent' value='patRegistryDemoInfoDifferent'>
                                <label for='reg-dif' class="inline"> No </label>
                            </p>
                            <fieldset data-dependent-validation="reg-same" id="reg-hide">
                                <h3 class="quest-header"><strong>Who composes the patient population you would like to follow?</strong></h3>
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                        <label for="patRegistryAge">Age(s) in numbers: </label>
                                        <input type="text"  name="patRegistryAge" id="patRegistryAge" required disabled />
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Sex:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistrySex" id="patRegistrySexMale" data-grouprequired="" disabled />
                                                <label for="patRegistrySexMale" class="inline"> Male </label></li>  
                                            <li><input type="checkbox"  name="patRegistrySex" id="patRegistrySexFemale" disabled />
                                                <label for="patRegistrySexFemale" class="inline"> Female </label></li> 
                                            <li><input type="checkbox"  name="patRegistrySex" id="patRegistrySexNonBinary" disabled />
                                                <label for="patRegistrySexNonBinary" class="inline"> Non-binary </label></li> 
                                            <li><input type="checkbox"  name="patRegistrySex" id="patRegistrySexAll" disabled />
                                                <label for="patRegistrySexAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Gender:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderCisMan" data-grouprequired="" disabled />
                                                <label for="patRegistryGenderCisMan" class="inline"> Cis-man </label></li>                                         
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderCisWoman" disabled />
                                                <label for="patRegistryGenderCisWoman" class="inline"> Cis-woman </label></li> 
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderTransMan" disabled />
                                                <label for="patRegistryGenderTransMan" class="inline"> Trans-man </label></li> 
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderTransWoman" disabled />
                                                <label for="patRegistryGenderTransWoman" class="inline"> Trans-woman </label></li> 
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderOther" onclick="showMe('patRegistryGenderOtherValue', this)" onchange="document.getElementById('patRegistryGenderOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRegistryGenderOther" class="inline"> Other: Please specify </label> <input type="text"  name='patRegistryGenderOtherValue' id="patRegistryGenderOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="patRegistryGender" id="patRegistryGenderAll" disabled />
                                                <label for="patRegistryGenderAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                    Race:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceAsian" data-grouprequired="" disabled>
                                                <label for="patRegistryRaceAsian" class="inline"> Asian </label></li>
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceNativeAmerican" disabled>
                                                <label for="patRegistryRaceNativeAmerican" class="inline"> American Indian or Alaska Native </label></li>
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceWhite" disabled>
                                                <label for="patRegistryRaceWhite" class="inline"> White </label></li>
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceBlack" disabled>
                                                <label for="patRegistryRaceBlack" class="inline"> Black or African American </label></li>
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceHawaiiPacificIslander" disabled>
                                                <label for="patRegistryRaceHawaiiPacificIslander" class="inline"> Native Hawaiian or Other Pacific Islander </label></li>
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceOther" onclick="showMe('patRegistryRaceOtherValue', this)" onchange="document.getElementById('patRegistryRaceOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRegistryRaceOther" class="inline"> Other: Please specify </label><input type="text"  name='patRegistryRaceOtherValue' id="patRegistryRaceOtherValue" required disabled />
                                            <li><input type="checkbox"  name="patRegistryRace" id="patRegistryRaceAll" disabled>
                                                <label for="patRegistryRaceAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Ethnicity:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistryEthnicity" id="patRegistryEthnicityLatino" data-grouprequired="" disabled>
                                                <label for="patRegistryEthnicityLatino" class="inline"> Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="patRegistryEthnicity" id="patRegistryEthnicityNonLatino" disabled>
                                                <label for="patRegistryEthnicityNonLatino" class="inline"> Not Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="patRegistryEthnicity" id="patRegistryEthnicityOther" onclick="showMe('patRegistryEthnicityOtherValue', this)" onchange="document.getElementById('patRegistryEthnicityOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRegistryEthnicityOther" class="inline"> Other:  Please specify </label><input type="text" name='patRegistryEthnicityOtherValue' id="patRegistryEthnicityOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="patRegistryEthnicity" id="patRegistryEthnicityAll" disabled>
                                                <label for="patRegistryEthnicityAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRegistryInclusion">What are the other inclusion criteria of your patient population (procedures, diagnoses, labs, medications, measure score, other)? Please be as specific as possible. </label>
                                        <textarea  name="patRegistryInclusion" id="patRegistryInclusion" required disabled></textarea>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRegistryExclusion">What are the exclusion criteria for your patient population - (ex: Deceased/Other comorbidities/Other exclusions): </label>
                                        <textarea  name="patRegistryExclusion" id="patRegistryExclusion" required disabled></textarea>
                                    </div>
                                </div>
                                <br />
                                <h3 class="quest-header"><strong>Where do the patients you would like to follow receive services?</strong></h3>
                                <div class="row 33%"> 
                                    <div class="4u 8u(mobile)">
                                    Location: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistryLocation" id="patRegistryLocationJHH" data-grouprequired="" disabled /> 
                                                <label for="patRegistryLocationJHH" class="inline"> JHH </label></li>                                        
                                            <li><input type="checkbox"  name="patRegistryLocation" id="patRegistryLocationJHBMC" disabled />
                                                <label for="patRegistryLocationJHBMC" class="inline"> JHBMC </label></li>
                                            <li><input type="checkbox"  name="patRegistryLocation" id="patRegistryLocationAll" disabled />
                                                <label for="patRegistryLocationAll" class="inline"> Both </label></li>
                                            <li><input type="checkbox"  name="patRegistryLocation" id="patRegistryLocationOther" onclick="showMe('patRegistryLocationOtherValue', this)" onchange="document.getElementById('patRegistryLocationOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRegistryLocationOther" class="inline"> Other: Please specify </label><input type="text"  name='patRegistryLocationOtherValue' id="patRegistryLocationOtherValue" required disabled /></li>
                                        </ul>	
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Level of Care: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareOutpatient" data-grouprequired="" disabled />
                                                <label for="patRegistryLevelOfCareOutpatient" class="inline"> Outpatient </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCarePRP" disabled />
                                                <label for="patRegistryLevelOfCarePRP" class="inline"> Psychiatric Rehabilitation </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareCaseManagement" disabled />
                                                <label for="patRegistryLevelOfCareCaseManagement" class="inline"> Case Management </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareSchool" disabled />
                                                <label for="patRegistryLevelOfCareSchool" class="inline"> School Based </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareMobile" disabled />
                                                <label for="patRegistryLevelOfCareMobile" class="inline"> Mobile Treatment </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareDayHospital" disabled />
                                                <label for="patRegistryLevelOfCareDayHospital" class="inline"> Day Hospital (IOP/PHP) </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareInpatient" disabled />
                                                <label for="patRegistryLevelOfCareInpatient" class="inline"> Inpatient </label>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareOther" onclick="showMe('patRegistryLevelOfCareOtherValue', this)" onchange="document.getElementById('patRegistryLevelOfCareOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRegistryLevelOfCareOther" class="inline"> Other: Please specify </label><input type="text"  name='patRegistryLevelOfCareOtherValue' id="patRegistryLevelOfCareOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="patRegistryLevelOfCare" id="patRegistryLevelOfCareAll" disabled /> 
                                                <label for="patRegistryLevelOfCareAll" class="inline"> All </label>
                                        </ul>	
                                    </div>
                                </div>					
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRegistryLocationInfo" class="inline">Please provide any additional information concerning location (ex: team, unit, other): </label>
                                        <textarea  name="patRegistryLocationInfo" id="patRegistryLocationInfo" required disabled></textarea>
                                    </div>
                                </div>
                            </fieldset>
                            <br />
                            <h3 class="quest-header"><strong>What information on these patients would you like to track over time?</strong></h3>
                            Please specify if applicable:
                            <div class="row 50%">
                                <div class="6u 12u(mobile)">
                                    <label for="patRegistryMetricDiagnoses">Diagnoses:</label>
                                    <input class="grouprequired" name="patRegistryMetric" id="patRegistryMetricDiagnoses" type="text" data-grouprequired="" disabled />
                                </div>
                                <div class="6u 12u(mobile)">
                                    <label for="patRegistryMetricMeds">Medications:</label>
                                    <input class="grouprequired" name="patRegistryMetric" id="patRegistryMetricMeds" type="text" disabled />
                                </div>
                            </div>
                            <div class="row 50%">
				<div class="6u 12u(mobile)">
                                    <label for="patRegistryMetricLabs">Labs:</label>
                                    <input class="grouprequired" name="patRegistryMetric" id="patRegistryMetricLabs" type="text" disabled />
				</div>
				<div class="6u 12u(mobile)">
                                    <label for="patRegistryMetricMeasures">Measures:</label>
                                    <input class="grouprequired" name="patRegistryMetric" id="patRegistryMetricMeasures" type="text" disabled />
				</div>
                            </div>
                            <div class="row 50%">
                                <div class="6u 12u(mobile)">
                                    <label for="patRegistryMetricOther">Other:</label>
                                    <input class="grouprequired" name="patRegistryMetric" id="patRegistryOtherMetric" type="text" disabled />
				</div>
                            </div>
                            <br />
                        </div>
                        
                        <!-- ELECTRONIC DATA CAPTURE -->
                        <div class="hidden" id="edc">
                            <h3><strong>Electronic Data Capture:</strong></h3>
                            <p>Is the demographic and location information for this section the same as a section you completed earlier?
                                <input type='radio'  name='eDataCaptureDemoInfo' id='eDataCaptureDemoInfoSame' value='eDataCaptureDemoInfoSame' data-grouprequired='' />
                                <label for="eDataCaptureDemoInfoSame" class="inline"> Yes </label>
                                <input type='radio' name='eDataCaptureDemoInfo' id='eDataCaptureDemoInfoDifferent' value='eDataCaptureDemoInfoDifferent'>
                                <label for='eDataCaptureDemoInfoDifferent' class="inline"> No </label>
                            </p>
                            <fieldset data-dependent-validation="eDataCaptureDemoInfo" id="edc-hide">
                                <h3 class="quest-header"><strong>Who composes the patient population on which you would like to capture data?</strong></h3>
                                <br />
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                        <label for="eDataCaptureAge">Age(s) in numbers: </label>
                                        <input type="text"  name="eDataCaptureAge" id="eDataCaptureAge" required disabled />
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Sex:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureSex" id="eDataCaptureSexMale" data-grouprequired="" disabled />
                                                <label for="eDataCaptureSexMale" class="inline"> Male </label></li>  
                                            <li><input type="checkbox"  name="eDataCaptureSex" id="eDataCaptureSexFemale" disabled />
                                                <label for="eDataCaptureSexFemale" class="inline"> Female </label></li> 
                                            <li><input type="checkbox"  name="eDataCaptureSex" id="eDataCaptureSexNonBinary" disabled />
                                                <label for="eDataCaptureSexNonBinary" class="inline"> Non-binary </label></li> 
                                            <li><input type="checkbox"  name="eDataCaptureSex" id="eDataCaptureSexAll" disabled />
                                                <label for="eDataCaptureSexAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Gender:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderCisMan" data-grouprequired="" disabled />
                                                <label for="eDataCaptureGenderCisMan" class="inline"> Cis-man </label></li>                                         
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderCisWoman" disabled />
                                                <label for="eDataCaptureGenderCisWoman" class="inline"> Cis-woman </label></li> 
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderTransMan" disabled />
                                                <label for="eDataCaptureGenderTransMan" class="inline"> Trans-man </label></li> 
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderTransWoman" disabled />
                                                <label for="eDataCaptureGenderTransWoman" class="inline"> Trans-woman </label></li> 
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderOther" onclick="showMe('eDataCaptureGenderOtherValue', this)" onchange="document.getElementById('eDataCaptureGenderOtherValue').disabled = !this.checked;" disabled />
                                                <label for="eDataCaptureGenderOther" class="inline"> Other: Please specify </label> <input type="text"  name='eDataCaptureGenderOtherValue' id="eDataCaptureGenderOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="eDataCaptureGender" id="eDataCaptureGenderAll" disabled />
                                                <label for="eDataCaptureGenderAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                    Race:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceAsian" data-grouprequired="" disabled>
                                                <label for="eDataCaptureRaceAsian" class="inline"> Asian </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceNativeAmerican" disabled>
                                                <label for="eDataCaptureRaceNativeAmerican" class="inline"> American Indian or Alaska Native </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceWhite" disabled>
                                                <label for="eDataCaptureRaceWhite" class="inline"> White </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceBlack" disabled>
                                                <label for="eDataCaptureRaceBlack" class="inline"> Black or African American </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceHawaiiPacificIslander" disabled>
                                                <label for="eDataCaptureRaceHawaiiPacificIslander" class="inline"> Native Hawaiian or Other Pacific Islander </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceOther" onclick="showMe('eDataCaptureRaceOtherValue', this)" onchange="document.getElementById('eDataCaptureRaceOtherValue').disabled = !this.checked;" disabled />
                                                <label for="eDataCaptureRaceOther" class="inline"> Other: Please specify </label><input type="text"  name='eDataCaptureRaceOtherValue' id="eDataCaptureRaceOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="eDataCaptureRace" id="eDataCaptureRaceAll" disabled>
                                                <label for="eDataCaptureRaceAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Ethnicity:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureEthnicity" id="eDataCaptureEthnicityLatino" data-grouprequired="" disabled>
                                                <label for="eDataCaptureEthnicityLatino" class="inline"> Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureEthnicity" id="eDataCaptureEthnicityNonLatino" disabled>
                                                <label for="eDataCaptureEthnicityNonLatino" class="inline"> Not Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureEthnicity" id="eDataCaptureEthnicityOther" onclick="showMe('eDataCaptureEthnicityOtherValue', this)" onchange="document.getElementById('eDataCaptureEthnicityOtherValue').disabled = !this.checked;" disabled />
                                                <label for="eDataCaptureEthnicityOther" class="inline"> Other: Please specify</label><input type="text"  name='eDataCaptureEthnicityOtherValue' id="eDataCaptureEthnicityOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="eDataCaptureEthnicity" id="eDataCaptureEthnicityAll" disabled>
                                                <label for="eDataCaptureEthnicityAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="eDataCaptureInclusion">What are the other inclusion criteria of your patient population (procedures, diagnoses, labs, medications, measure score, other)? Please be as specific as possible. </label>
                                        <textarea  name="eDataCaptureInclusion" id="eDataCaptureInclusion" required disabled></textarea>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="eDataCaptureExclusion">What are the exclusion criteria for your patient population - (ex: Deceased/Other comorbidities/Other exclusions): </label>
                                        <textarea  name="eDataCaptureExclusion" id="eDataCaptureExclusion" required disabled></textarea>
                                    </div>
                                </div>
                                <br />
                                <h3 class="quest-header"><strong>Where do the patients on which you would like to capture data receive services?</strong></h3>
                                <div class="row 33%"> 
                                    <div class="4u 8u(mobile)">
                                    Location: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureLocation" id="eDataCaptureLocationJHH" data-grouprequired="" disabled /> 
                                                <label for="eDataCaptureLocationJHH" class="inline"> JHH </label></li>                                        
                                            <li><input type="checkbox"  name="eDataCaptureLocation" id="eDataCaptureLocationJHBMC" disabled />
                                                <label for="eDataCaptureLocationJHBMC" class="inline"> JHBMC </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureLocation" id="eDataCaptureLocation-both" disabled />
                                                <label for="eDataCaptureLocation-both" class="inline"> Both </label></li>
                                            <li><input type="checkbox"  name="eDataCaptureLocation" id="eDataCaptureLocationOther" onclick="showMe('eDataCaptureLocationOtherValue', this)" onchange="document.getElementById('eDataCaptureLocationOtherValue').disabled = !this.checked;" disabled />
                                                <label for="eDataCaptureLocationOther" class="inline"> Other: Please specify </label><input type="text"  name='eDataCaptureLocationOtherValue' id="eDataCaptureLocationOtherValue" required disabled /></li>
                                        </ul>	
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Level of Care: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareOutpatient" data-grouprequired="" disabled />
                                                <label for="eDataCaptureLevelOfCareOutpatient" class="inline"> Outpatient </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCarePRP" disabled />
                                                <label for="eDataCaptureLevelOfCarePRP" class="inline"> Psychiatric Rehabilitation </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareCaseManagement" disabled />
                                                <label for="eDataCaptureLevelOfCareCaseManagement" class="inline"> Case Management </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareSchool" disabled />
                                                <label for="eDataCaptureLevelOfCareSchool" class="inline"> School Based </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareMobile" disabled />
                                                <label for="eDataCaptureLevelOfCareMobile" class="inline"> Mobile Treatment </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareDayHospital" disabled />
                                                <label for="eDataCaptureLevelOfCareDayHospital" class="inline"> Day Hospital (IOP/PHP) </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareInpatient" disabled />
                                                <label for="eDataCaptureLevelOfCareInpatient" class="inline"> Inpatient </label>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareOther" onclick="showMe('eDataCaptureLevelOfCareOtherValue', this)" onchange="document.getElementById('eDataCaptureLevelOfCareOtherValue').disabled = !this.checked;" disabled />
                                                <label for="eDataCaptureLevelOfCareOther" class="inline"> Other: Please specify </label><input type="text"  name='eDataCaptureLevelOfCareOtherValue' id="eDataCaptureLevelOfCareOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="eDataCaptureLevelOfCare" id="eDataCaptureLevelOfCareAll" disabled /> 
                                                <label for="eDataCaptureLevelOfCareOther" class="inline"> All </label>
                                        </ul>	
                                    </div>
                                </div>					
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="edc-locinfo" class="inline">Please provide any additional information concerning location (ex: team, unit, other): </label>
                                        <textarea  name="edc-locinfo" id="eDataCaptureLocationInfo" required disabled></textarea>
                                    </div>
                                </div>
                            </fieldset>
                            <br />       
                            <h3 class="quest-header"><strong>When would you like to capture data?</strong></h3>
                            <div class="row 33%">
                                <div class="4u 8u(mobile)">
                                    <label for="eDataCaptureStartDate">When do you want to start collection?</label>
                                    <input type="text"  name="eDataCaptureStartDate" id="eDataCaptureStartDate" required disabled />
                                </div>    
                                <div class="4u 8u(mobile)">
                                    <label for="eDataCaptureFrequency">How often would you like to collect?</label>
                                    <input type="text"  name="eDataCaptureFrequency" id="eDataCaptureFrequency" required disabled />
                                </div>
                                <div class="4u 8u(mobile)">
                                    <label for="eDataCaptureLength">How long would you like to collect?</label>
                                    <input type="text"  name="eDataCaptureLength" id="eDataCaptureLength" required disabled />
                                </div>
                            </div>
                            <br />
                            <h3 class="quest-header"><strong>What data would you like to capture and how?</strong></h3>
                            <div class="row 100%">
                                <div class="12u">
                                    <label for="eDataCaptureInfoToCapture">What information would you like to capture on your patient population? Please be as specific as possible: measures, tools, indices, etc.</label>
                                    <textarea  name="eDataCaptureInfoToCapture" id="eDataCaptureInfoToCapture" required disabled></textarea>
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
                                                    <select class="eDataCaptureEntrantOfData" name='eDataCaptureEntrantOfData' id="eDataCaptureEntrantOfData" required disabled>
                                                        <option></option>
                                                        <option>Patient</option>
                                                        <option>Proxy</option>
                                                        <option>Clinician</option>
                                                        <option>All</option>
                                                    </select>
                                                </td>
                                                <td>Data Entry Platform:
                                                    <label for="eDataCapturePlatform"></label>
                                                    <select class="eDataCapturePlatform" name='eDataCapturePlatform' id="eDataCapturePlatform" required disabled>
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
                                        <button type="button" id="add-edc" onclick="document.getElementById('eDataCaptureEntrantOfData').disabled=false; document.getElementById('eDataCapturePlatform').disabled=false;">Add EDC Method</button>
                                        <button type="button" id="delete-edc" onclick="document.getElementById('eDataCaptureEntrantOfData').disabled=true; document.getElementById('eDataCapturePlatform').disabled=true;">Remove EDC Method</button>
                                    </center>
                                </div>
                            </div>
                            <div class="row 50%">
                                <div class="6u 12u(mobile)">
                                Would you like your data to be visualized in the EMR?
                                    <ul class="requestUOList inline">
                                        <li class="inline"><input type="radio" name="eDataCaptureVisualize" id="eDataCaptureVisualize" value='visual-yes' onchange="document.getElementById('eDataCaptureHowToVisualize').disabled = !this.checked;" disabled />
                                            <label for="eDataCaptureVisualize" class="inline"> Yes </label></li>
                                        <li class="inline"><input type="radio" name="eDataCaptureVisualize" id="eDataCaptureDoNotVisualize" value='visual-no' disabled />
                                            <label for="eDataCaptureDoNotVisualize" class="inline"> No </label></li>
                                    </ul>
                                    <div class="hidden" id="visual-text">
                                    If so, how? (Synopsis, Reporting Workbench, other)
                                        <textarea  name="eDataCaptureHowToVisualize" id="eDataCaptureHowToVisualize" required disabled></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- DATA EXTRACTION -->
                        <div class="hidden" id="dex">
                        <br />
                            <h3><strong>Data Extraction:</strong></h3>
                            <p>Is the demographic and location information for this section the same as a section you completed earlier?
                                <input type='radio'  name='dataExtractionDemoInfo' id='dataExtractionDemoInfoSame' value='dataExtractionDemoInfoSame' data-grouprequired='' />
                                <label for="dataExtractionDemoInfo" class="inline"> Yes </label>
                                <input type='radio' name='dataExtractionDemoInfo' id='dex-dif' value='dataExtractionDemoInfoDifferent'>
                                <label for='dex-dif' class="inline"> No </label>
                            </p>
                            <fieldset data-dependent-validation="dataExtractionDemoInfo" id="dex-hide">
                                <h3 class="quest-header"><strong>Who composes the patient population from which you would like to extract data?</strong></h3>
                                <br />
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                        <label for="dataExtractionAge">Age(s) in numbers: </label>
                                        <input type="text"  name="dataExtractionAge" id="dataExtractionAge" required disabled />
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Sex:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionSex" id="dataExtractionSexMale" data-grouprequired="" disabled />
                                                <label for="dataExtractionSexMale" class="inline"> Male </label></li>  
                                            <li><input type="checkbox"  name="dataExtractionSex" id="dataExtractionSexFemale" disabled />
                                                <label for="dataExtractionSexFemale" class="inline"> Female </label></li> 
                                            <li><input type="checkbox"  name="dataExtractionSex" id="dataExtractionSexNonBinary" disabled />
                                                <label for="dataExtractionSexNonBinary" class="inline"> Non-binary </label></li> 
                                            <li><input type="checkbox"  name="dataExtractionSex" id="dataExtractionSexAll" disabled />
                                                <label for="dataExtractionSexAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Gender:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionGender" id="dataExtractionGenderCisMan" data-grouprequired="" disabled />
                                                <label for="dataExtractionGenderCisMan" class="inline"> Cis-man </label></li>                                         
                                            <li><input type="checkbox"  name="dataExtractionGender" id="dataExtractionGenderCisWoman" disabled />
                                                <label for="dataExtractionGenderCisWoman" class="inline"> Cis-woman </label></li> 
                                            <li><input type="checkbox"  name="dataExtractionGender" id="dataExtractionGenderTransMan" disabled />
                                                <label for="dataExtractionGenderTransMan" class="inline"> Trans-man </label></li> 
                                            <li><input type="checkbox"  name="dataExtractionGender" id="dataExtractionGenderTransWoman" disabled />
                                                <label for="dataExtractionGenderTransWoman" class="inline"> Trans-woman </label></li> 
                                            <li><input type="checkbox" name="dataExtractionGender" id="dataExtractionGenderOther" onclick="showMe('dataExtractionGenderOtherValue', this)" onchange="document.getElementById('dataExtractionGenderOtherValue').disabled = !this.checked;" disabled />
                                                <label for="dataExtractionGenderOther" class="inline"> Other: Please specify </label><input type="text" name='dataExtractionGenderOtherValue' id="dataExtractionGenderOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="dataExtractionGender" id="dataExtractionGenderAll" disabled />
                                                <label for="dataExtractionGenderAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 50%">
                                    <div class="4u 8u(mobile)">
                                    Race:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceAsian" data-grouprequired="" disabled>
                                                <label for="dataExtractionRaceAsian" class="inline"> Asian </label></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceNativeAmerican" disabled>
                                                <label for="dataExtractionRaceNativeAmerican" class="inline"> American Indian or Alaska Native </label></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceWhite" disabled>
                                                <label for="dataExtractionRaceWhite" class="inline"> White </label></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceBlack" disabled>
                                                <label for="dataExtractionRaceBlack" class="inline"> Black or African American </label></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceHawaiiPacificIslander" disabled>
                                                <label for="dataExtractionRaceHawaiiPacificIslander" class="inline"> Native Hawaiian or Other Pacific Islander </label></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceOther" onclick="showMe('dataExtractionRaceOtherValue', this)" onchange="document.getElementById('dataExtractionRaceOtherValue').disabled = !this.checked;" disabled />
                                                <label for="dataExtractionRaceOther" class="inline"> Other: Please specify </label><input type="text"  name='dataExtractionRaceOtherValue' id="dataExtractionRaceOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="dataExtractionRace" id="dataExtractionRaceAll" disabled>
                                                <label for="dataExtractionRaceAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Ethnicity:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionEthnicity" id="dataExtractionEthnicityLatino" data-grouprequired="" disabled>
                                                <label for="dataExtractionEthnicityLatino" class="inline"> Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="dataExtractionEthnicity" id="dataExtractionEthnicityNonLatino" disabled>
                                                <label for="dataExtractionEthnicityNonLatino" class="inline"> Not Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="dataExtractionEthnicity" id="dataExtractionEthnicityOther" onclick="showMe('dataExtractionEthnicityOtherValue', this)" onchange="document.getElementById('dataExtractionEthnicityOtherValue').disabled = !this.checked;" disabled />
                                                <label for="dataExtractionEthnicityOther" class="inline"> Other: Please specify </label><input type="text"  name='dataExtractionEthnicityOtherValue' id="dataExtractionEthnicityOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="dataExtractionEthnicity" id="dataExtractionEthnicityAll" disabled>
                                                <label for="dataExtractionEthnicityAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="dataExtractionInclusion">What are the other inclusion criteria of your patient population (procedures, diagnoses, labs, medications, measure score, other)? Please be as specific as possible. </label>
                                        <textarea  name="dataExtractionInclusion" id="dataExtractionInclusion" required disabled></textarea>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="dataExtractionExclusion">What are the exclusion criteria for your patient population - (ex: Deceased/Other comorbidities/Other exclusions): </label>
                                        <textarea  name="dataExtractionExclusion" id="dataExtractionExclusion" required disabled></textarea>
                                    </div>
                                </div>
                                <br />
                                <h3 class="quest-header"><strong>Where do the patients from which you would like to extract data receive services?</strong></h3>
                                <div class="row 33%"> 
                                    <div class="4u 8u(mobile)">
                                    Location: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dex-loc" id="dataExtractionLocationJHH" data-grouprequired="" disabled /> 
                                                <label for="dataExtractionLocationJHH" class="inline"> JHH </label></li>                                        
                                            <li><input type="checkbox"  name="dex-loc" id="dataExtractionLocationJHBMC" disabled />
                                                <label for="dataExtractionLocationJHBMC" class="inline"> JHBMC </label></li>
                                            <li><input type="checkbox"  name="dex-loc" id="dataExtractionLocationAll" disabled />
                                                <label for="dataExtractionLocationAll" class="inline"> Both </label></li>
                                            <li><input type="checkbox"  name="dex-loc" id="dataExtractionLocationOther" onclick="showMe('dataExtractionLocationOtherValue', this)" onchange="document.getElementById('dataExtractionLocationOtherValue').disabled = !this.checked;" disabled />
                                                <label for="dataExtractionLocationOther" class="inline"> Other: Please specify </label><input type="text"  name='dataExtractionLocationOtherValue' id="dataExtractionLocationOtherValue" required disabled /></li>
                                        </ul>	
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Level of Care: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareOutpatient" data-grouprequired="" disabled />
                                                <label for="dataExtractionLevelOfCareOutpatient" class="inline"> Outpatient </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCarePRP" disabled />
                                                <label for="dataExtractionLevelOfCarePRP" class="inline"> Psychiatric Rehabilitation </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareCaseManagement" disabled />
                                                <label for="dataExtractionLevelOfCareCaseManagement" class="inline"> Case Management </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareSchool" disabled />
                                                <label for="dataExtractionLevelOfCareSchool" class="inline"> School Based </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareMobile" disabled />
                                                <label for="dataExtractionLevelOfCareMobile" class="inline"> Mobile Treatment </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareDayHospital" disabled />
                                                <label for="dataExtractionLevelOfCareDayHospital" class="inline"> Day Hospital (IOP/PHP) </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareInpatient" disabled />
                                                <label for="dataExtractionLevelOfCareInpatient" class="inline"> Inpatient </label>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareOther" onclick="showMe('dataExtractionLevelOfCareOtherValue', this)" onchange="document.getElementById('dataExtractionLevelOfCareOtherValue').disabled = !this.checked;" disabled />
                                                <label for="dataExtractionLevelOfCareOther" class="inline"> Other: Please specify </label><input type="text"  name='dataExtractionLevelOfCareOtherValue' id="dataExtractionLevelOfCareOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="dataExtractionLevelOfCare" id="dataExtractionLevelOfCareAll" disabled /> 
                                                <label for="dataExtractionLevelOfCareOther" class="inline"> All </label>
                                        </ul>	
                                    </div>
                                </div>					
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="dataExtractionLocationInfo" class="inline">Please provide any additional information concerning location (ex: team, unit, other): </label>
                                        <textarea  name="dataExtractionLocationInfo" id="dataExtractionLocationInfo" required disabled></textarea>
                                    </div>
                                </div>
                            </fieldset>
                            <br />
                            <h3 class="quest-header"><strong>What time period would you like covered by your data extraction?</strong></h3>
                            <div class="row 33%">
                                <div class="4u 8u(mobile)">
                                    <label for="dataExtractionStartDate">Start Date:</label>
                                    <input type="text"  name='dataExtractionStartDate' id="dataExtractionStartDate" required disabled />
                                </div>    
                                <div class="4u 8u(mobile)">
                                    <label for="dataExtractionEndDate">End Date:</label>
                                    <input type="text"  name='dataExtractionEndDate' id="dataExtractionEndDate" required disabled />
                                </div>
                                <div class="4u 8u(mobile)">
                                    <label for="dataExtractionFrequency">Frequency of extraction?</label>
                                    <input type="text"  name='dataExtractionFrequency' id="dataExtractionFrequency" required disabled />
                                </div>
                            </div>
                            <div class="row 100%">
				<div class="12u">
                                    <h3 class="quest-header"><strong>What data would you like to extract and how?</strong></h3>
                                    <label for="dataExtractionWhatDataToExtract">What data would you like to extract?</label>
                                    <textarea  name='dataExtractionWhatDataToExtract' id="dataExtractionWhatDataToExtract" required disabled></textarea>
				</div>
                            </div>
                            <div class="row 50%">
				<div class="6u 12u(mobile)">
                                    <label for="dataExtractionDeliveryLocation">Where would you like the data delivered to? (Server name, share name, or JHBox, Enterprise NAS, etc.)</label>
                                    <input  name='dataExtractionDeliveryLocation' id="dataExtractionDeliveryLocation" type="text" required disabled />
				</div>
				<div class="6u 12u(mobile)">
                                    <label for="dataExtractionDataFormat">In what format would you like to receive your data? (Excel, pipe-delimited, CSV, SQL tables)</label>
                                    <input  name='dataExtractionDataFormat' id="dataExtractionDataFormat" type="text" required disabled />
				</div>
                            </div>
                            <div class="row 100%">
				<div class="12u">
                                    <label for="dataExtractionExternalCollaboration">Will you be collaborating with any external entities?  Include information on researcher's intent to share outside of JHM. This includes corporate sponsors and multi-site studies. Also include information on what data elements are proposed to be shared and in what format (PHI, limited data set, etc)"</label>
                                    <textarea  name="dataExtractionExternalCollaboration" id="dataExtractionExternalCollaboration" required disabled></textarea>
				</div>
                            </div>
                            <br />    
                        </div>
                        
                        <!-- PATIENT RECRUITMENT -->
                        <div class="hidden" id="recruit">   
                            <h3><strong>Patient Recruitment:</strong></h3>
                            <p>Is the demographic and location information for this section the same as a section you completed earlier?
                                <input type='radio'  name='patRecruitmentDemoInfo' id='patRecruitmentDemoInfoSame' value='patRecruitmentDemoInfoSame' data-grouprequired='' />
                                <label for="patRecruitmentDemoInfoSame" class="inline"> Yes </label>
                                <input type='radio' name='patRecruitmentDemoInfo' id='patRecruitmentDemoInfoDifferent' value='patRecruitmentDemoInfoDifferent'>
                                <label for='patRecruitmentDemoInfoDifferent' class="inline"> No </label>
                            </p>
                            <fieldset data-dependent-validation="patRecruitmentDemoInfo" id="rec-hide">
                                <h3 class="quest-header"><strong>Who composes patient population from which you would like to recruit?</strong></h3>
                                <div class="row 33%">
                                    <div class="4u 8u(mobile)">
                                    <label for="patRecruitmentAge">Age(s) in numbers: </label>
                                        <input type="text"  name="patRecruitmentAge" id="patRecruitmentAge" required disabled />
                                    </div>
                                    <div class="3u 6u(mobile)">
                                    Sex:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentSex" id="patRecruitmentSexMale" data-grouprequired="" disabled />
                                                <label for="patRecruitmentSexMale" class="inline"> Male </label></li>  
                                            <li><input type="checkbox"  name="patRecruitmentSex" id="patRecruitmentSexFemale" disabled />
                                                <label for="patRecruitmentSexFemale" class="inline"> Female </label></li> 
                                            <li><input type="checkbox"  name="patRecruitmentSex" id="patRecruitmentSexNonBinary" disabled />
                                                <label for="patRecruitmentSexNonBinary" class="inline"> Non-binary </label></li> 
                                            <li><input type="checkbox"  name="patRecruitmentSex" id="patRecruitmentSexAll" disabled />
                                                <label for="patRecruitmentSexAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Gender:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderCisMan" data-grouprequired="" disabled />
                                                <label for="patRecruitmentGenderCisMan" class="inline"> Cis-man </label></li>                                         
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderCisWoman" disabled />
                                                <label for="patRecruitmentGenderCisWoman" class="inline"> Cis-woman </label></li> 
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderTransMan" disabled />
                                                <label for="patRecruitmentGenderTransMan" class="inline"> Trans-man </label></li> 
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderTransWoman" disabled />
                                                <label for="patRecruitmentGenderTransWoman" class="inline"> Trans-woman </label></li> 
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderOther" onclick="showMe('patRecruitmentGenderOtherValue', this)" onchange="document.getElementById('patRecruitmentGenderOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRecruitmentGenderOther" class="inline"> Other: Please specify </label> <input type="text"  name='patRecruitmentGenderOtherValue' id="patRecruitmentGenderOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="patRecruitmentGender" id="patRecruitmentGenderAll" disabled />
                                                <label for="patRecruitmentGenderAll" class="inline"> All </label></li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 50%">
                                    <div class="4u 8u(mobile)">
                                    Race:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceAsian" data-grouprequired="" disabled>
                                                <label for="patRecruitmentRaceAsian" class="inline"> Asian </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceNativeAmerican" disabled>
                                                <label for="patRecruitmentRaceNativeAmerican" class="inline"> American Indian or Alaska Native </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceWhite" disabled>
                                                <label for="patRecruitmentRaceWhite" class="inline"> White </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceBlack" disabled>
                                                <label for="patRecruitmentRaceBlack" class="inline"> Black or African American </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceHawaiiPacificIslander" disabled>
                                                <label for="patRecruitmentRaceHawaiiPacificIslander" class="inline"> Native Hawaiian or Other Pacific Islander </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceOther" onclick="showMe('patRecruitmentRaceOtherValue', this)" onchange="document.getElementById('patRecruitmentRaceOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRecruitmentRaceOther" class="inline"> Other: Please specify </label><input type="text"  name='patRecruitmentRaceOtherValue' id="patRecruitmentRaceOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="patRecruitmentRace" id="patRecruitmentRaceAll" disabled>
                                                <label for="patRecruitmentRaceAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Ethnicity:  Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentEthnicity" id="patRecruitmentEthnicityLatino" data-grouprequired="" disabled>
                                                <label for="patRecruitmentEthnicityLatino" class="inline"> Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentEthnicity" id="patRecruitmentEthnicityNonLatino" disabled>
                                                <label for="patRecruitmentEthnicityNonLatino" class="inline"> Not Hispanic or Latino </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentEthnicity" id="patRecruitmentEthnicityOther" onclick="showMe('patRecruitmentEthnicityOtherValue', this)" onchange="document.getElementById('patRecruitmentEthnicityOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRecruitmentEthnicityOther" class="inline"> Other: Please specify </label><input type="text"  name='patRecruitmentEthnicityOtherValue' id="patRecruitmentEthnicityOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="patRecruitmentEthnicity" id="patRecruitmentEthnicityAll" disabled>
                                                <label for="patRecruitmentEthnicityAll" class="inline"> All </label></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRecruitmentInclusion">What are the other inclusion criteria of your patient population (procedures, diagnoses, labs, medications, measure score, other)? Please be as specific as possible. </label>
                                        <textarea  name="patRecruitmentInclusion" id="patRecruitmentInclusion" required disabled></textarea>
                                    </div>
                                </div>
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRecruitmentExclusion">What are the exclusion criteria for your patient population - (ex: Deceased/Other comorbidities/Other exclusions): </label>
                                        <textarea  name="patRecruitmentExclusion" id="patRecruitmentExclusion" required disabled></textarea>
                                    </div>
                                </div>
                                <br />
                                <h3 class="quest-header"><strong>Where does the patient population from which you would like to recruit receive services?</strong></h3>
                                <div class="row 33%"> 
                                    <div class="4u 8u(mobile)">
                                    Location: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentLocation" id="patRecruitmentLocationJHH" data-grouprequired="" disabled /> 
                                                <label for="patRecruitmentLocationJHH" class="inline"> JHH </label></li>                                        
                                            <li><input type="checkbox"  name="patRecruitmentLocation" id="patRecruitmentLocationJHBMC" disabled />
                                                <label for="patRecruitmentLocationJHBMC" class="inline"> JHBMC </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentLocation" id="patRecruitmentLocationAll" disabled />
                                                <label for="patRecruitmentLocationAll" class="inline"> Both </label></li>
                                            <li><input type="checkbox"  name="patRecruitmentLocation" id="patRecruitmentLocationOther" onclick="showMe('patRecruitmentLocationOtherValue', this)" onchange="document.getElementById('patRecruitmentLocationOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRecruitmentLocationOther" class="inline"> Other: Please specify </label><input type="text"  name='patRecruitmentLocationOtherValue' id="patRecruitmentLocationOtherValue" required disabled /></li>
                                        </ul>	
                                    </div>
                                    <div class="4u 8u(mobile)">
                                    Level of Care: Check all that apply
                                        <ul class="requestUOList">
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareOutpatient" data-grouprequired="" disabled />
                                                <label for="patRecruitmentLevelOfCareOutpatient" class="inline"> Outpatient </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCarePRP" disabled />
                                                <label for="patRecruitmentLevelOfCarePRP" class="inline"> Psychiatric Rehabilitation </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareCaseManagement" disabled />
                                                <label for="patRecruitmentLevelOfCareCaseManagement" class="inline"> Case Management </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareSchool" disabled />
                                                <label for="patRecruitmentLevelOfCareSchool" class="inline"> School Based </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareMobile" disabled />
                                                <label for="patRecruitmentLevelOfCareMobile" class="inline"> Mobile Treatment </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareDayHospital" disabled />
                                                <label for="patRecruitmentLevelOfCareDayHospital" class="inline"> Day Hospital (IOP/PHP) </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareInpatient" disabled />
                                                <label for="patRecruitmentLevelOfCareInpatient" class="inline"> Inpatient </label>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareOther" onclick="showMe('patRecruitmentLevelOfCareOtherValue', this)" onchange="document.getElementById('patRecruitmentLevelOfCareOtherValue').disabled = !this.checked;" disabled />
                                                <label for="patRecruitmentLevelOfCareOther" class="inline"> Other: Please specify </label><input type="text"  name='patRecruitmentLevelOfCareOtherValue' id="patRecruitmentLevelOfCareOtherValue" required disabled /></li>
                                            <li><input type="checkbox"  name="patRecruitmentLevelOfCare" id="patRecruitmentLevelOfCareAll" disabled /> 
                                                <label for="patRecruitmentLevelOfCareOther" class="inline"> All </label>
                                        </ul>	
                                    </div>
                                </div>					
                                <div class="row 100%">
                                    <div class="12u">
                                        <label for="patRecruitmentLocationInfo" class="inline">Please provide any additional information concerning location (ex: team, unit, other): </label>
                                        <textarea  name="patRecruitmentLocationInfo" id="patRecruitmentLocationInfo" required disabled></textarea>
                                    </div>
                                </div>
                            </fieldset>
                            <br />
                            <h3 class="quest-header"><strong>When and how would you like to recruit patients?</strong></h3>
                            <div class="row 50%">
                                <div class="6u 12u(mobile)">
                                    <label for="patRecruitmentStartDate">When would you like to start recruitment?</label>
                                    <input type="text"  name='patRecruitmentStartDate' id="patRecruitmentStartDate" required disabled />
                                </div>    
                                <div class="6u 12u(mobile)">
                                    <label for="patRecruitmentLength">How long would you like to recruitment to last?</label>
                                    <input type="text"  name='patRecruitmentLength' id="patRecruitmentLength" required disabled />
                                </div>
                            </div>
                            <div class="row 100%">
                                <div class="12u">
                                How would you like patients to be recruited?
                                    <ul class="requestUOList">
                                        <li><input type="checkbox"  name="patRecruitmentContactMethod" id="patRecruitmentContactPatient" data-grouprequired="" disabled>
                                            <label for="patRecruitmentContactPatient" class="inline"> Patient Notification Through MyChart </label></li>
					<li><input type="checkbox"  name="patRecruitmentContactMethod" id="patRecruitmentContactStudyTeam" onchange="document.getElementByID('patRecruitmentContactPI').disabled = !this.checked; document.getElementByID('patRecruitmentContactSubmitter').disabled = !this.checked;" disabled>
                                            <label for="patRecruitmentContactStudyTeam" class="inline"> Study Team Member Notification When Appropriate Patient Checks In </label></li>
					<li><input type="checkbox"  name="patRecruitmentContactMethod" id="patRecruitmentContactProvider" disabled>
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
                               
                                                <div id="contactTable">
                                                <tr class="contact-row" id="contact-row">
                                                    <td>
                                                        <input type="text"  name="patRecruitmentContactStudyTeamJHED" id="patRecruitmentContactStudyTeamJHED" placeholder="JHED ID" required disabled />
                                                        <label for="patRecruitmentContactStudyTeamJHED"></label>
                                                    </td>
                                                    <td>
                                                        <input type="checkbox"  name='patRecruitmentContactPerson' id="patRecruitmentContactStudyTeamMember" disabled />                                            
                                                        <label for="patRecruitmentContactStudyTeamMember"></label>
                                                    </td>
                                                </tr> 
                                                </div>
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
                                        <li><input type="submit" value="Submit Request" /></li>
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
                                <a href="#" class="image featured"><img src="./images/gradient.png" alt="" /></a>
                            </div>
                            <header>
                                <h3>MHi-ACCOUNT</h3>
                            </header>
                            <p class="blueText">Do you have a research proposal in mind? Follow the link to learn more
                                about submitting your request and moving forward.</p>
                                <ul class="actions">
                                    <li><a href="./request" class="button">Click Here</a></li>
                                </ul>
                        </section>
                        <section class="4u 12u(narrower) feature">
                            <div class="image-wrapper">
                                <a href="#" class="image featured"><img src="./images/gradient.png" alt="" /></a>
                            </div>
                            <header>
                                <h3>MHi-RESOURCES</h3>
                            </header>
                            <p class="blueText">Already submitted your research proposal? You can keep track your progress
                                by following the link. Progress will be updated on a regular basis.</p>
                            <ul class="actions">
                                <li><a href="#" class="button">Click Here</a></li>
                            </ul>
                        </section>
                        <section class="4u 12u(narrower) feature">
                            <div class="image-wrapper">
                                <a href="./library" class="image featured"><img src="./images/gradient.png" alt="" /></a>
                            </div>
                            <header>
                                <h3>MHi-LIBRARY</h3>
                            </header>
                            <p class="blueText">A growing library of measures spanning function and symptom domains. Widely
                                accepted and used in clinical practice and research.</p>
                            <ul class="actions">
                                <li><a href="./library" class="button">Click Here</a></li>
                            </ul>
                        </section>
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
        </script>
        <script src="./assets/js/jquery.dropotron.min.js"></script>
	<script src="./assets/js/skel.min.js"></script>
	<script src="./assets/js/util.js"></script>
	<script src="./assets/js/main.js"></script>
    </body>
</html>