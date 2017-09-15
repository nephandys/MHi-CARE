<!DOCTYPE HTML>
<html>
    <head>		
	<title>MHi-LIBRARY</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="./assets/css/main.css" />	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
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
                    <article id="content">
			<header>
                            <h2>Welcome to MHi-LIBRARY</h2>
                            <p>A cutting edge initiative to develop a learning health system 
				that integrates patient care and research in order to achieve better 
				patient outcomes.</p>
			</header>
			<a href="#" class="image featured"><img src="./images/gradient2.png" alt="" /></a>
			<table id="mtable">
                            <thead>
  				<tr>
                                    <th onclick="sortTable(1)">Measure</th>
                                    <th onclick="sortTable(2)">Acronym</th>
                                    <th onclick="sortTable(3)">Domain</th>
                                    <th onclick="sortTable(4)">Ages</th>
                                    <th onclick="sortTable(5)">Administrator</th>
  				</tr>
                            </thead>
                            <tbody>
  				<tr>
                                    <td><a href="#">7 Up/7 Down Inventory</a></td>
                                    <td>7U7D</td>
                                    <td>Mania</td>
                                    <td>Child</td>
                                    <td>Self</td>
    				</tr>  										
  				<tr>
                                    <td><a href="#">Aberrant Behavior Checklist - Community</a></td>
                                    <td>ABC-C</td>
                                    <td>Autism</td>
                                    <td>All</td>
                                    <td>Informant/Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Abnormal Involuntary Movement Scale</a></td>
                                    <td>AIMS</td>    								
                                    <td>Side Effects</td>
                                    <td>Unspecified</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Adult ADHD Self-Report Scale</a></td>
                                    <td>ASRS</td>
                                    <td>Behavior</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Adverse Childhood Experiences</a></td>
                                    <td>ACE</td>
                                    <td>Life Stressors</td>
                                    <td>Unspecified</td>
                                    <td>Self</td>
  				</tr> 		
  				<tr>
                                    <td><a href="#">Affective Reactivity Index</a></td>
                                    <td>ARI</td>
                                    <td>Multi-Domain</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>									
  				<tr>
                                    <td><a href="#">Alabama Parenting Questionnaire</a></td>
                                    <td>APQ</td>
                                    <td>Parenting</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Alcohol Smoking + Substance Involvement Test</a></td>
                                    <td>ASSIST</td>
                                    <td>Substance Abuse</td>
                                    <td>Adult</td>
                                    <td>Clinician/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Alcohol Use Disorders Identification Test</a></td>
                                    <td>AUDIT</td>
                                    <td>Substance Abuse</td>
                                    <td>All</td>
                                    <td>Clinician/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Altman Mania Rating Scale</a></td>
                                    <td>AMRS</td>
                                    <td>Mania</td>
                                    <td>All</td>
                                    <td>Self</td>
  				</tr> 																						
  				<tr>
                                    <td><a href="#">Behavior Mangement Self Assessment</a></td>
                                    <td>BMSA</td>
                                    <td>Behavior</td>
                                    <td>Child</td>
                                    <td>Parent</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Brief Addiction Monitor</a></td>
                                    <td>BAM</td>
                                    <td>Substance Abuse</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Brief Multidimensional Students’ Life Satisfaction Scale</a></td>
                                    <td>BMSLSS</td>
                                    <td>Quality of Life</td>
                                    <td>Child</td>
                                    <td>Self</td>
  				</tr>  											
  				<tr>
                                    <td><a href='#'>Cannabis Withdrawal Scale</a></td>
                                    <td>CWS</td>
                                    <td>Substance Abuse</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>  																																										
  				<tr>
                                    <td><a href="#">Child Mania Rating Scale-Parent</a></td>
                                    <td>CMRS-P</td>
                                    <td>Mania</td>
                                    <td>Child</td>
                                    <td>Self</td>
                                </tr>
    				<tr>
                                    <td><a href="#">Child Trauma Screening Questionnaire</a></td>
                                    <td>CTSQ</td>
                                    <td>Anxiety</td>
                                    <td>Child</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Child-Yale Brown Obssessive Compulsive Index</a></td>
                                    <td>C-YBOCS</td>
                                    <td>Anxiety</td>
                                    <td>Child</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Cigarette Withdrawal Scale</a></td>
                                    <td>CWS-21</td>
                                    <td>Substance Abuse</td>
                                    <td>All</td>
                                    <td>Self</td>
  				</tr> 
  				<tr>
                                    <td><a href="#">Clinical Dementia Rating</a></td>
                                    <td>CDR</td>
                                    <td>Neurocognitive</td>
                                    <td>Adult</td>
                                    <td>Clinician</td>
  				</tr> 
  				<tr>
                                    <td><a href="#">Clinicial Global Assessment Scale</a></td>
                                    <td>CGAS</td>
                                    <td>Functioning</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Clinical Global Impression</a></td>
                                    <td>CGI</td>
                                    <td>Multi-Domain</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>	 	
  				<tr>
                                    <td><a href="#">Clinical Institute Withdrawal Assessment of Alcohol Scale</a></td>
                                    <td>CIWA-Ar</td>
                                    <td>Substance Abuse</td>
                                    <td>Adult</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Clincal Opioid Withdrawal Scale</a></td>
                                    <td>COWS</td>
                                    <td>Substance Abuse</td>
                                    <td>Adult</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Columbia Suicidality Severity Rating Scale</a></td>
                                    <td>C-SSRS</td>
                                    <td>Suicide</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Confidence and Readiness Rulers</a></td>
                                    <td>N/A</td>
                                    <td>Stages of Change</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Controlled Oral Word Association Test</a></td>
                                    <td>COWAT</td>
                                    <td>Neurocognitive</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Daily Living Activities 20-Item</a></td>
                                    <td>DLA-20</td>
                                    <td>Functioning</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Depression Anxiety Stress Scales</a></td>
                                    <td>DASS</td>
                                    <td>Multi-Symptom</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>										
  				<tr>
                                    <td><a href="#">Drug Abuse Screening Test</a></td>
                                    <td>DAST</td>
                                    <td>Substance Abuse</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Drug Use Chart</a></td>
                                    <td>DUC</td>
                                    <td>Substance Abuse</td>
                                    <td>All</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Eating Disorders Examination Questionnaire</a></td>
                                    <td>EDE-Q</td>
                                    <td>Eating</td>
                                    <td>All</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Edinburgh Postnatal Depression Scale</a></td>
                                    <td>EPDS</td>
                                    <td>Depression</td>
                                    <td>Unspecified</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">EUROHIS-QOL</a></td>
                                    <td>EUROHIS-QOL</td>
                                    <td>Quality of Life</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Face/Legs/Activity/Cry/Consolability Scale</a></td>
                                    <td>FLACC</td>
                                    <td>Pain</td>
                                    <td>Child</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Fear Questionnaire</a></td>
                                    <td>FQ</td>
                                    <td>Anxiety</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Finnegan Neonatal Abstinence Scale</a></td>
                                    <td>FNAS</td>
                                    <td>Substance Abuse</td>
                                    <td>Child</td>
                                    <td>Clinician</td>
  				</tr>											
  				<tr>
                                    <td><a href="#">Functional Assessment Questionnaire</a></td>
                                    <td>FAQ</td>
                                    <td>Neurocognitive</td>
                                    <td>Adult</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Functional Disability Inventory</a></td>
                                    <td>FDI</td>
                                    <td>Pain</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Generalized Anxiety Disorder 7-Item</a></td>
                                    <td>GAD-7</td>
                                    <td>Anxiety</td>
                                    <td>All</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">General Behavior Inventory</a></td>
                                    <td>GBI</td>
                                    <td>Mania</td>
                                    <td>All</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Hamilton Anxiety Rating Scale</a></td>
                                    <td>HAM-A</td>
                                    <td>Anxiety</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Hamilton Depression Rating Scale</a></td>
                                    <td>HAM-D</td>
                                    <td>Depression</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Health of the Nation Outcome Scales Child/Adolescent</a></td>
                                    <td>HoNOSCA</td>
                                    <td>Multi-Symptom</td>
                                    <td>Child</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Home Situations Questionnaire</a></td>
                                    <td>HSQ</td>
                                    <td>Behavior</td>
                                    <td>Child</td>
                                    <td>Parent</td>
  				</tr>  											
  				<tr>
                                    <td><a href="#">Katz Activities of Daily Living</a></td>
                                    <td>ADL</td>
                                    <td>Neurocognitive</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Lawton Instrumental Activities of Daily Living</a></td>
                                    <td>IADL</td>
                                    <td>Neurocognitive</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr> 											
  				<tr>
                                    <td><a href="#">Medical Adherence Measure</a></td>
                                    <td>MAM</td>
                                    <td>Adherence</td>
                                    <td>Unspecified</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Marijuana Craving Questionnaire-Short</a></td>
                                    <td>MCQ-S</td>
                                    <td>Side Effects</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Mini Mental Status Exam</a></td>
                                    <td>MMSE</td>
                                    <td>Neurocognitive</td>
                                    <td>Adult</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Montgomery-Asberg Depression Rating Scale</a></td>
                                    <td>MADRS</td>
                                    <td>Depression</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Montreal Cognitive Assessment</a></td>
                                    <td>MoCA</td>
                                    <td>Neurocognitive</td>
                                    <td>Adult</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Mood and Feelings Questionnaire</a></td>
                                    <td>MFQ</td>
                                    <td>Depression</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Morisky Medication Adherence Scale 4-Item</a></td>
                                    <td>MMAS-4</td>
                                    <td>Adherence</td>
                                    <td>Unspecified</td>
                                    <td>Self</td>
  				</tr> 											 											
  				<tr>
                                    <td><a href="#">Neurobehavioral Rating Scale</a></td>
                                    <td>NBRS</td>
                                    <td>Neurocognitive</td>
                                    <td>Adult</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Neuropsychiatric Inventory Questionnaire</a></td>
                                    <td>NPIQ</td>
                                    <td>Neurocognitive</td>
                                    <td>Adult</td>
                                    <td>Informant</td>
  				</tr>
  				<tr>
                                    <td><a href="#">NIH Toolbox-Emotional Support</a></td>
                                    <td>N/A</td>
                                    <td>Coping/Resiliency</td>
                                    <td>Child</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">NIH Toolbox-General Life Satisfaction</a></td>
                                    <td>N/A</td>
                                    <td>Quality of Life</td>
                                    <td>Adult</td>
                                    <td>Self</td>
    				</tr>
    				<tr>
                                    <td><a href="#">NIH Toolbox-Meaning and Purpose</a></td>
                                    <td>N/A</td>
                                    <td>Coping/Resiliency</td>
                                    <td>Adult</td>
                                    <td>Self</td>
    				</tr>  	
  				<tr>
                                    <td><a href="#">NIH Toolbox-Perceived Hostility</a></td>
                                    <td>N/A</td>
                                    <td>Multi-Domain</td>
                                    <td>Child</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">NIH Toolbox-Perceived Rejection</a></td>
                                    <td>N/A</td>
                                    <td>Multi-Domain</td>
                                    <td>Child</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">NIH Toolbox-Self Efficacy</a></td>
                                    <td>N/A</td>
                                    <td>Coping/Resiliency</td>
                                    <td>Adult</td>
                                    <td>Self</td>
    				</tr> 											
  				<tr>
                                    <td><a href="#">Obsessive Compulsive Inventory-Revised</a></td>
                                    <td>OCI-R</td>
                                    <td>Anxiety</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Pain Catastrophizing Scale</a></td>
                                    <td>PCS</td>
                                    <td>Coping/Resiliency</td>
                                    <td>All</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Parent Child Interaction Questionnaire, Revised</a></td>
                                    <td>PACHIQ-R</td>
                                    <td>Parenting</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Parkinson Anxiety Scale</a></td>
                                    <td>PAS</td>
                                    <td>Anxiety</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>  											
  				<tr>
                                    <td><a href="#">Pittsburgh Sleep Quality Index</a></td>
                                    <td>PSQI</td>
                                    <td>Sleep</td>
                                    <td>Adult</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Anxiety</a></td>
                                    <td>N/A</td>
                                    <td>Anxiety</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Applied Cognitive Abilities</a></td>
                                    <td>N/A</td>
                                    <td>Neurocognitive</td>
                                    <td>Adult</td>
                                    <td>Informant/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Applied Cognitive General Concerns</a></td>
                                    <td>N/A</td>
                                    <td>Neurocognitive</td>
                                    <td>Adult</td>
                                    <td>Informant/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Cognitive Functioning</a></td>
                                    <td>N/A</td>
                                    <td>Neurocognitive</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Depressive Symptoms</a></td>
                                    <td>N/A</td>
                                    <td>Depression</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Emotional Distress-Anxiety</a></td>
                                    <td>N/A</td>
                                    <td>Anxiety</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Emotional Distress-Depression</a></td>
                                    <td>N/A</td>
                                    <td>Depression</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Emotional Support</a></td>
                                    <td>N/A</td>
                                    <td>Coping/Resiliency</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Fatigue</a></td>
                                    <td>N/A</td>
                                    <td>Multi-Domain</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Global Health Scale</a></td>
                                    <td>N/A</td>
                                    <td>Quality of Life</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Informational Support</a></td>
                                    <td>N/A</td>
                                    <td>Coping/Resiliency</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Life Satisfaction</a></td>
                                    <td>N/A</td>
                                    <td>Quality of Life</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Meaning and Purpose</a></td>
                                    <td>N/A</td>
                                    <td>Coping/Resiliency</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS Parent Proxy-Anger</a></td>
                                    <td>N/A</td>
                                    <td>Multi-Domain</td>
                                    <td>Child</td>
                                    <td>Parent</td>
  				</tr>				
  				<tr>
                                    <td><a href="#">PROMIS Parent Proxy-Physical Stress Experiences</a></td>
                                    <td>N/A</td>
                                    <td>Life Stressors</td>
                                    <td>Child</td>
                                    <td>Parent</td>
  				</tr> 											
  				<tr>
                                    <td><a href="#">PROMIS-Peer Relationships</a></td>
                                    <td>N/A</td>
                                    <td>Coping/Resiliency</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Physical Activity</a></td>
                                    <td>N/A</td>
                                    <td>Multi-Domain</td>
                                    <td>Child</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Positive Affect</a></td>
                                    <td>N/A</td>
                                    <td>Multi-Domain</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Psychological Stress Experiences</a></td>
                                    <td>N/A</td>
                                    <td>Life Stressors</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Satisfaction w/ Social Roles + Activities</a></td>
                                    <td>N/A</td>
                                    <td>Quality of Life</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Self Efficacy for Managing Emotions</a></td>
                                    <td>N/A</td>
                                    <td>Coping/Resiliency</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PROMIS-Self Efficacy for Managing Symptoms</a></td>
                                    <td>N/A</td>
                                    <td>Coping/Resiliency</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">PTSD Checklist-Civilian Version</a></td>
                                    <td>PCL-C</td>
                                    <td>Anxiety</td>
                                    <td>All</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Public Health Questionnaire 9-Item</a></td>
                                    <td>PHQ-9</td>
                                    <td>Depression</td>
                                    <td>All</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Public Health Questionnaire-Panic</a></td>
                                    <td>PHQ-Panic</td>
                                    <td>Anxiety</td>
                                    <td>All</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Questionnaire on Smoking Urges</a></td>
                                    <td>QSU</td>
                                    <td>Substance Abuse</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Recovery Assessment Scale-Domains and Stages</a></td>
                                    <td>RAS-DS</td>
                                    <td>Functioning</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Revised Child Anxiety and Depression Scale</a></td>
                                    <td>RCADS</td>
                                    <td>Multi-Symptom</td>
                                    <td>Child</td>
                                    <td>Self</td>
  				</tr>											
  				<tr>
                                    <td><a href="#">Scale for the Assessment of Negative Symptoms</a></td>
                                    <td>SANS</td>
                                    <td>Psychosis</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Scale for the Assessment of Positive Symptoms</a></td>
                                    <td>SAPS</td>
                                    <td>Psychosis</td>
                                    <td>All</td>
                                    <td>Clinician</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Screen for  Child Anxiety Related Disorders</a></td>
                                    <td>SCARED</td>
                                    <td>Anxiety</td>
                                    <td>Child</td>
                                    <td>Parent/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Screening to Brief Intervention w/ CRAFFT</a></td>
                                    <td>S2BI w/ CRAFFT</td>
                                    <td>Substance Abuse</td>
                                    <td>Child</td>
                                    <td>Clinician/Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">SOCRATES 8D</a></td>
                                    <td>N/A</td>
                                    <td>Stages of Change</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Swanson, Nolan, and Pelham Teacher and Parent Rating Scale</a></td>
                                    <td>SNAP-IV</td>
                                    <td>Behavior</td>
                                    <td>Child</td>
                                    <td>Parent/Teacher</td>
  				</tr> 											
  				<tr>
                                    <td><a href="#">University Rhode Island Change Assessment Scale</a></td>
                                    <td>N/A</td>
                                    <td>Stages of Change</td>
                                    <td>Adult</td>
                                    <td>Self</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Vanderbilt Assessment Scales</a></td>
                                    <td>VAS</td>
                                    <td>Behavior</td>
                                    <td>Child</td>
                                    <td>Parent/Teacher</td>
  				</tr>
  				<tr>
                                    <td><a href="#">Visual/Analog Numeric Rating Scale</a></td>
                                    <td>VANRS</td>
                                    <td>Pain</td>
                                    <td>All</td>
                                    <td>Self</td>
  				</tr> 																				
  				<tr>
    				<td><a href="#">Wong-Baker FACES</a></td>
    				<td>FACES</td>
    				<td>Pain</td>
    				<td>All</td>
    				<td>Self</td>
  				</tr>
  				<tr>
    				<td><a href="#">World Health Organization Quality of Life</a></td>
    				<td>WHOQOL</td>
    				<td>Quality of Life</td>
    				<td>Adult</td>
    				<td>Self</td>
  				</tr>  	
  				<tr>
    				<td><a href="#">Young Mania Rating Scale</a></td>
    				<td>YMRS</td>
    				<td>Mania</td>
    				<td>All</td>
    				<td>Clinician</td>
  				</tr>
                            </tbody>				
			</table>
                    </article>
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
                    <ul>
			<li><a href="http://www.hopkinsmedicine.org/psychiatry"><img src="images/hopkins.png" /></a></li>
			<li>&copy; Untitled. All rights reserved.</li>
                    </ul>
		</div>
            </div>
	</div>

	<!-- Scripts -->
        <script>
            $(document).ready(function() {
                $('#mtable').DataTable( {
                    "pagingType": "full_numbers"
		} );
            } );
	</script>
        <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script> 
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

    </body>
</html>