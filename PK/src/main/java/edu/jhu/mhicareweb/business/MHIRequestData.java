/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jhu.mhicareweb.business;

import java.util.ArrayList;


public class MHIRequestData {
    String piName;
    String piJhed;
    String piEmail;
    String phone;    
    String submissionDate;
    String submitterCheck;
    String submitterName;
    String submitterJhedID;
    String submitterEmail;
    ArrayList<String> studyTeamMemberName;
    ArrayList<String> studyTeamMemberJHED;
    ArrayList<String> studyTeamMemberEmail; 
    String studyTitle;
    String projectDescription;
    ArrayList<String> toolset;
    String patStudyEstimateAge;   
    ArrayList<String> patStudyEstimateSex;
    ArrayList<String> patStudyEstimateGender;    
    String patStudyEstimateGenderOtherValue;
    ArrayList<String> patStudyEstimateRace;
    String patStudyEstimateRaceOtherValue;
    ArrayList<String> patStudyEstimateEthnicity;
    String patStudyEstimateEthnicityOtherValue;      
    String patStudyEstimateInclusion;
    String patStudyEstimateExclusion;
    ArrayList<String> patStudyEstimateLocation;
    String patStudyEstimateLocationOtherValue;
    ArrayList<String> patStudyEstimateLevelOfCare;
    String patStudyEstimateLevelOfCareOtherValue;
    String patStudyEstimateLocationinfo;
    String patRegistryDemoInfo;
    String patRegistryAge;
    ArrayList<String> patRegistrySex;
    ArrayList<String> patRegistryGender;
    String patRegistryGenderOtherValue;
    ArrayList<String> patRegistryRace;
    String patRegistryRaceOtherValue;
    ArrayList<String> patRegistryEthnicity;
    String patRegistryEthnicityOtherValue;
    String patRegistryInclusion;
    String patRegistryExclusion;
    ArrayList<String> patRegistryLocation;
    String patRegistryLocationOtherValue;    
    ArrayList<String> patRegistryLevelOfCare;
    String patRegistryLevelOfCareOtherValue;
    String patRegistryLocationInfo;
    String patRegistryMetricDiagnoses;
    String patRegistryMetricMeds;
    String patRegistryMetricLabs;
    String patRegistryMetricMeasures;
    String patRegistryOtherMetric;
    String eDataCaptureDemoInfo;    
    ArrayList<String> eDataCaptureSex;
    ArrayList<String> eDataCaptureGender;
    String eDataCaptureGenderOtherValue;
    ArrayList<String> eDataCaptureRace;
    String eDataCaptureRaceOtherValue;
    ArrayList<String> eDataCaptureEthnicity;
    String eDataCaptureEthnicityOtherValue;    
    String eDataCaptureInclusion;
    String eDataCaptureExclusion;
    ArrayList<String> eDataCaptureLocation;
    String eDataCaptureLocationOtherValue;
    ArrayList<String> eDataCaptureLevelOfCare;
    String eDataCaptureLevelOfCareOtherValue;
    String eDataCaptureLocationInfo;
    String eDataCaptureStartDate;
    String eDataCaptureFrequency;
    String eDataCaptureInfoToCapture;
    ArrayList<String> eDataCaptureEntrantOfData;
    ArrayList<String> eDataCapturePlatform;
    String eDataCaptureVisualize;
    String eDataCaptureHowToVisualize;
    String dataExtractionDemoInfo;
    String dataExtractionAge;
    ArrayList<String> dataExtractionSex;
    ArrayList<String> dataExtractionGender;
    String dataExtractionGenderOtherValue;
    ArrayList<String> dataExtractionRace;
    String dataExtractionRaceOtherValue;
    ArrayList<String> dataExtractionEthnicity;
    String dataExtractionEthnicityOtherValue;
    String dataExtractionInclusion;
    String dataExtractionExclusion;
    ArrayList<String> dataExtractionLocation;
    String dataExtractionLocationOtherValue;
    ArrayList<String> dataExtractionLevelOfCare;
    String dataExtractionLevelOfCareOtherValue;
    String dataExtractionLocationInfo;
    String dataExtractionStartDate;
    String dataExtractionEndDate;
    String dataExtractionFrequency;
    String dataExtractionWhatDataToExtract;
    String dataExtractionDeliveryLocation;
    String dataExtractionDataFormat;
    String dataExtractionExternalCollaboration;
    String patRecruitmentDemoInfo;
    String patRecruitmentAge;
    ArrayList<String> patRecruitmentSex;   
    ArrayList<String> patRecruitmentGender;
    String patRecruitmentGenderOtherValue;
    ArrayList<String> patRecruitmentRace;
    String patRecruitmentRaceOtherValue;
    ArrayList<String> patRecruitmentEthnicity;
    String patRecruitmentEthnicityOtherValue;
    String patRecruitmentInclusion;
    String patRecruitmentExclusion;
    ArrayList<String> patRecruitmentLocation;
    String patRecruitmentLocationOtherValue;
    ArrayList<String> patRecruitmentLevelOfCare;
    String patRecruitmentLevelOfCareOtherValue;
    String patRecruitmentLocationInfo;
    String patRecruitmentStartDate;
    String patRecruitmentLength;
    ArrayList<String> patRecruitmentContactMethod;
    ArrayList<String> patRecruitmentContactPerson;
    String patRecruitmentContactStudyTeamJHED;   

    public String getPiName() {
        return piName;
    }

    public void setPiName(String piName) {
        this.piName = piName;
    }

    public String getPiJhed() {
        return piJhed;
    }

    public void setPiJhed(String piJhed) {
        this.piJhed = piJhed;
    }

    public String getPiEmail() {
        return piEmail;
    }

    public void setPiEmail(String piEmail) {
        this.piEmail = piEmail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSubmissionDate() {
        return submissionDate;
    }

    public void setSubmissionDate(String submissionDate) {
        this.submissionDate = submissionDate;
    }

    public String getSubmitterCheck() {
        return submitterCheck;
    }

    public void setSubmitterCheck(String submitterCheck) {
        this.submitterCheck = submitterCheck;
    }

    public String getSubmitterName() {
        return submitterName;
    }

    public void setSubmitterName(String submitterName) {
        this.submitterName = submitterName;
    }

    public String getSubmitterJhedID() {
        return submitterJhedID;
    }

    public void setSubmitterJhedID(String submitterJhedID) {
        this.submitterJhedID = submitterJhedID;
    }

    public String getSubmitterEmail() {
        return submitterEmail;
    }

    public void setSubmitterEmail(String submitterEmail) {
        this.submitterEmail = submitterEmail;
    }

    public ArrayList<String> getStudyTeamMemberName() {
        return studyTeamMemberName;
    }

    public void setStudyTeamMemberName(ArrayList<String> studyTeamMemberName) {
        this.studyTeamMemberName = studyTeamMemberName;
    }

    public ArrayList<String> getStudyTeamMemberJHED() {
        return studyTeamMemberJHED;
    }

    public void setStudyTeamMemberJHED(ArrayList<String> studyTeamMemberJHED) {
        this.studyTeamMemberJHED = studyTeamMemberJHED;
    }

    public ArrayList<String> getStudyTeamMemberEmail() {
        return studyTeamMemberEmail;
    }

    public void setStudyTeamMemberEmail(ArrayList<String> studyTeamMemberEmail) {
        this.studyTeamMemberEmail = studyTeamMemberEmail;
    }

    public String getStudyTitle() {
        return studyTitle;
    }

    public void setStudyTitle(String studyTitle) {
        this.studyTitle = studyTitle;
    }

    public String getProjectDescription() {
        return projectDescription;
    }

    public void setProjectDescription(String projectDescription) {
        this.projectDescription = projectDescription;
    }

    public ArrayList<String> getToolset() {
        return toolset;
    }

    public void setToolset(ArrayList<String> toolset) {
        this.toolset = toolset;
    }

    public String getPatStudyEstimateAge() {
        return patStudyEstimateAge;
    }

    public void setPatStudyEstimateAge(String patStudyEstimateAge) {
        this.patStudyEstimateAge = patStudyEstimateAge;
    }

    public ArrayList<String> getPatStudyEstimateSex() {
        return patStudyEstimateSex;
    }

    public void setPatStudyEstimateSex(ArrayList<String> patStudyEstimateSex) {
        this.patStudyEstimateSex = patStudyEstimateSex;
    }

    public ArrayList<String> getPatStudyEstimateGender() {
        return patStudyEstimateGender;
    }

    public void setPatStudyEstimateGender(ArrayList<String> patStudyEstimateGender) {
        this.patStudyEstimateGender = patStudyEstimateGender;
    }

    public String getPatStudyEstimateGenderOtherValue() {
        return patStudyEstimateGenderOtherValue;
    }

    public void setPatStudyEstimateGenderOtherValue(String patStudyEstimateGenderOtherValue) {
        this.patStudyEstimateGenderOtherValue = patStudyEstimateGenderOtherValue;
    }

    public ArrayList<String> getPatStudyEstimateRace() {
        return patStudyEstimateRace;
    }

    public void setPatStudyEstimateRace(ArrayList<String> patStudyEstimateRace) {
        this.patStudyEstimateRace = patStudyEstimateRace;
    }

    public String getPatStudyEstimateRaceOtherValue() {
        return patStudyEstimateRaceOtherValue;
    }

    public void setPatStudyEstimateRaceOtherValue(String patStudyEstimateRaceOtherValue) {
        this.patStudyEstimateRaceOtherValue = patStudyEstimateRaceOtherValue;
    }

    public ArrayList<String> getPatStudyEstimateEthnicity() {
        return patStudyEstimateEthnicity;
    }

    public void setPatStudyEstimateEthnicity(ArrayList<String> patStudyEstimateEthnicity) {
        this.patStudyEstimateEthnicity = patStudyEstimateEthnicity;
    }

    public String getPatStudyEstimateEthnicityOtherValue() {
        return patStudyEstimateEthnicityOtherValue;
    }

    public void setPatStudyEstimateEthnicityOtherValue(String patStudyEstimateEthnicityOtherValue) {
        this.patStudyEstimateEthnicityOtherValue = patStudyEstimateEthnicityOtherValue;
    }

    public String getPatStudyEstimateInclusion() {
        return patStudyEstimateInclusion;
    }

    public void setPatStudyEstimateInclusion(String patStudyEstimateInclusion) {
        this.patStudyEstimateInclusion = patStudyEstimateInclusion;
    }

    public String getPatStudyEstimateExclusion() {
        return patStudyEstimateExclusion;
    }

    public void setPatStudyEstimateExclusion(String patStudyEstimateExclusion) {
        this.patStudyEstimateExclusion = patStudyEstimateExclusion;
    }

    public ArrayList<String> getPatStudyEstimateLocation() {
        return patStudyEstimateLocation;
    }

    public void setPatStudyEstimateLocation(ArrayList<String> patStudyEstimateLocation) {
        this.patStudyEstimateLocation = patStudyEstimateLocation;
    }

    public String getPatStudyEstimateLocationOtherValue() {
        return patStudyEstimateLocationOtherValue;
    }

    public void setPatStudyEstimateLocationOtherValue(String patStudyEstimateLocationOtherValue) {
        this.patStudyEstimateLocationOtherValue = patStudyEstimateLocationOtherValue;
    }

    public ArrayList<String> getPatStudyEstimateLevelOfCare() {
        return patStudyEstimateLevelOfCare;
    }

    public void setPatStudyEstimateLevelOfCare(ArrayList<String> patStudyEstimateLevelOfCare) {
        this.patStudyEstimateLevelOfCare = patStudyEstimateLevelOfCare;
    }

    public String getPatStudyEstimateLevelOfCareOtherValue() {
        return patStudyEstimateLevelOfCareOtherValue;
    }

    public void setPatStudyEstimateLevelOfCareOtherValue(String patStudyEstimateLevelOfCareOtherValue) {
        this.patStudyEstimateLevelOfCareOtherValue = patStudyEstimateLevelOfCareOtherValue;
    }

    public String getPatStudyEstimateLocationinfo() {
        return patStudyEstimateLocationinfo;
    }

    public void setPatStudyEstimateLocationinfo(String patStudyEstimateLocationinfo) {
        this.patStudyEstimateLocationinfo = patStudyEstimateLocationinfo;
    }

    public String getPatRegistryDemoInfo() {
        return patRegistryDemoInfo;
    }

    public void setPatRegistryDemoInfo(String patRegistryDemoInfo) {
        this.patRegistryDemoInfo = patRegistryDemoInfo;
    }

    public String getPatRegistryAge() {
        return patRegistryAge;
    }

    public void setPatRegistryAge(String patRegistryAge) {
        this.patRegistryAge = patRegistryAge;
    }

    public ArrayList<String> getPatRegistrySex() {
        return patRegistrySex;
    }

    public void setPatRegistrySex(ArrayList<String> patRegistrySex) {
        this.patRegistrySex = patRegistrySex;
    }

    public ArrayList<String> getPatRegistryGender() {
        return patRegistryGender;
    }

    public void setPatRegistryGender(ArrayList<String> patRegistryGender) {
        this.patRegistryGender = patRegistryGender;
    }

    public String getPatRegistryGenderOtherValue() {
        return patRegistryGenderOtherValue;
    }

    public void setPatRegistryGenderOtherValue(String patRegistryGenderOtherValue) {
        this.patRegistryGenderOtherValue = patRegistryGenderOtherValue;
    }

    public ArrayList<String> getPatRegistryRace() {
        return patRegistryRace;
    }

    public void setPatRegistryRace(ArrayList<String> patRegistryRace) {
        this.patRegistryRace = patRegistryRace;
    }

    public String getPatRegistryRaceOtherValue() {
        return patRegistryRaceOtherValue;
    }

    public void setPatRegistryRaceOtherValue(String patRegistryRaceOtherValue) {
        this.patRegistryRaceOtherValue = patRegistryRaceOtherValue;
    }

    public ArrayList<String> getPatRegistryEthnicity() {
        return patRegistryEthnicity;
    }

    public void setPatRegistryEthnicity(ArrayList<String> patRegistryEthnicity) {
        this.patRegistryEthnicity = patRegistryEthnicity;
    }

    public String getPatRegistryEthnicityOtherValue() {
        return patRegistryEthnicityOtherValue;
    }

    public void setPatRegistryEthnicityOtherValue(String patRegistryEthnicityOtherValue) {
        this.patRegistryEthnicityOtherValue = patRegistryEthnicityOtherValue;
    }

    public String getPatRegistryInclusion() {
        return patRegistryInclusion;
    }

    public void setPatRegistryInclusion(String patRegistryInclusion) {
        this.patRegistryInclusion = patRegistryInclusion;
    }

    public String getPatRegistryExclusion() {
        return patRegistryExclusion;
    }

    public void setPatRegistryExclusion(String patRegistryExclusion) {
        this.patRegistryExclusion = patRegistryExclusion;
    }

    public ArrayList<String> getPatRegistryLocation() {
        return patRegistryLocation;
    }

    public void setPatRegistryLocation(ArrayList<String> patRegistryLocation) {
        this.patRegistryLocation = patRegistryLocation;
    }

    public String getPatRegistryLocationOtherValue() {
        return patRegistryLocationOtherValue;
    }

    public void setPatRegistryLocationOtherValue(String patRegistryLocationOtherValue) {
        this.patRegistryLocationOtherValue = patRegistryLocationOtherValue;
    }

    public ArrayList<String> getPatRegistryLevelOfCare() {
        return patRegistryLevelOfCare;
    }

    public void setPatRegistryLevelOfCare(ArrayList<String> patRegistryLevelOfCare) {
        this.patRegistryLevelOfCare = patRegistryLevelOfCare;
    }

    public String getPatRegistryLevelOfCareOtherValue() {
        return patRegistryLevelOfCareOtherValue;
    }

    public void setPatRegistryLevelOfCareOtherValue(String patRegistryLevelOfCareOtherValue) {
        this.patRegistryLevelOfCareOtherValue = patRegistryLevelOfCareOtherValue;
    }

    public String getPatRegistryLocationInfo() {
        return patRegistryLocationInfo;
    }

    public void setPatRegistryLocationInfo(String patRegistryLocationInfo) {
        this.patRegistryLocationInfo = patRegistryLocationInfo;
    }

    public String getPatRegistryMetricDiagnoses() {
        return patRegistryMetricDiagnoses;
    }

    public void setPatRegistryMetricDiagnoses(String patRegistryMetricDiagnoses) {
        this.patRegistryMetricDiagnoses = patRegistryMetricDiagnoses;
    }

    public String getPatRegistryMetricMeds() {
        return patRegistryMetricMeds;
    }

    public void setPatRegistryMetricMeds(String patRegistryMetricMeds) {
        this.patRegistryMetricMeds = patRegistryMetricMeds;
    }

    public String getPatRegistryMetricLabs() {
        return patRegistryMetricLabs;
    }

    public void setPatRegistryMetricLabs(String patRegistryMetricLabs) {
        this.patRegistryMetricLabs = patRegistryMetricLabs;
    }

    public String getPatRegistryMetricMeasures() {
        return patRegistryMetricMeasures;
    }

    public void setPatRegistryMetricMeasures(String patRegistryMetricMeasures) {
        this.patRegistryMetricMeasures = patRegistryMetricMeasures;
    }

    public String getPatRegistryOtherMetric() {
        return patRegistryOtherMetric;
    }

    public void setPatRegistryOtherMetric(String patRegistryOtherMetric) {
        this.patRegistryOtherMetric = patRegistryOtherMetric;
    }

    public String geteDataCaptureDemoInfo() {
        return eDataCaptureDemoInfo;
    }

    public void seteDataCaptureDemoInfo(String eDataCaptureDemoInfo) {
        this.eDataCaptureDemoInfo = eDataCaptureDemoInfo;
    }

    public ArrayList<String> geteDataCaptureSex() {
        return eDataCaptureSex;
    }

    public void seteDataCaptureSex(ArrayList<String> eDataCaptureSex) {
        this.eDataCaptureSex = eDataCaptureSex;
    }

    public ArrayList<String> geteDataCaptureGender() {
        return eDataCaptureGender;
    }

    public void seteDataCaptureGender(ArrayList<String> eDataCaptureGender) {
        this.eDataCaptureGender = eDataCaptureGender;
    }

    public String geteDataCaptureGenderOtherValue() {
        return eDataCaptureGenderOtherValue;
    }

    public void seteDataCaptureGenderOtherValue(String eDataCaptureGenderOtherValue) {
        this.eDataCaptureGenderOtherValue = eDataCaptureGenderOtherValue;
    }

    public ArrayList<String> geteDataCaptureRace() {
        return eDataCaptureRace;
    }

    public void seteDataCaptureRace(ArrayList<String> eDataCaptureRace) {
        this.eDataCaptureRace = eDataCaptureRace;
    }

    public String geteDataCaptureRaceOtherValue() {
        return eDataCaptureRaceOtherValue;
    }

    public void seteDataCaptureRaceOtherValue(String eDataCaptureRaceOtherValue) {
        this.eDataCaptureRaceOtherValue = eDataCaptureRaceOtherValue;
    }

    public ArrayList<String> geteDataCaptureEthnicity() {
        return eDataCaptureEthnicity;
    }

    public void seteDataCaptureEthnicity(ArrayList<String> eDataCaptureEthnicity) {
        this.eDataCaptureEthnicity = eDataCaptureEthnicity;
    }

    public String geteDataCaptureEthnicityOtherValue() {
        return eDataCaptureEthnicityOtherValue;
    }

    public void seteDataCaptureEthnicityOtherValue(String eDataCaptureEthnicityOtherValue) {
        this.eDataCaptureEthnicityOtherValue = eDataCaptureEthnicityOtherValue;
    }

    public String geteDataCaptureInclusion() {
        return eDataCaptureInclusion;
    }

    public void seteDataCaptureInclusion(String eDataCaptureInclusion) {
        this.eDataCaptureInclusion = eDataCaptureInclusion;
    }

    public String geteDataCaptureExclusion() {
        return eDataCaptureExclusion;
    }

    public void seteDataCaptureExclusion(String eDataCaptureExclusion) {
        this.eDataCaptureExclusion = eDataCaptureExclusion;
    }

    public ArrayList<String> geteDataCaptureLocation() {
        return eDataCaptureLocation;
    }

    public void seteDataCaptureLocation(ArrayList<String> eDataCaptureLocation) {
        this.eDataCaptureLocation = eDataCaptureLocation;
    }

    public String geteDataCaptureLocationOtherValue() {
        return eDataCaptureLocationOtherValue;
    }

    public void seteDataCaptureLocationOtherValue(String eDataCaptureLocationOtherValue) {
        this.eDataCaptureLocationOtherValue = eDataCaptureLocationOtherValue;
    }

    public ArrayList<String> geteDataCaptureLevelOfCare() {
        return eDataCaptureLevelOfCare;
    }

    public void seteDataCaptureLevelOfCare(ArrayList<String> eDataCaptureLevelOfCare) {
        this.eDataCaptureLevelOfCare = eDataCaptureLevelOfCare;
    }

    public String geteDataCaptureLevelOfCareOtherValue() {
        return eDataCaptureLevelOfCareOtherValue;
    }

    public void seteDataCaptureLevelOfCareOtherValue(String eDataCaptureLevelOfCareOtherValue) {
        this.eDataCaptureLevelOfCareOtherValue = eDataCaptureLevelOfCareOtherValue;
    }

    public String geteDataCaptureLocationInfo() {
        return eDataCaptureLocationInfo;
    }

    public void seteDataCaptureLocationInfo(String eDataCaptureLocationInfo) {
        this.eDataCaptureLocationInfo = eDataCaptureLocationInfo;
    }

    public String geteDataCaptureStartDate() {
        return eDataCaptureStartDate;
    }

    public void seteDataCaptureStartDate(String eDataCaptureStartDate) {
        this.eDataCaptureStartDate = eDataCaptureStartDate;
    }

    public String geteDataCaptureFrequency() {
        return eDataCaptureFrequency;
    }

    public void seteDataCaptureFrequency(String eDataCaptureFrequency) {
        this.eDataCaptureFrequency = eDataCaptureFrequency;
    }

    public String geteDataCaptureInfoToCapture() {
        return eDataCaptureInfoToCapture;
    }

    public void seteDataCaptureInfoToCapture(String eDataCaptureInfoToCapture) {
        this.eDataCaptureInfoToCapture = eDataCaptureInfoToCapture;
    }

    public ArrayList<String> geteDataCaptureEntrantOfData() {
        return eDataCaptureEntrantOfData;
    }

    public void seteDataCaptureEntrantOfData(ArrayList<String> eDataCaptureEntrantOfData) {
        this.eDataCaptureEntrantOfData = eDataCaptureEntrantOfData;
    }

    public ArrayList<String> geteDataCapturePlatform() {
        return eDataCapturePlatform;
    }

    public void seteDataCapturePlatform(ArrayList<String> eDataCapturePlatform) {
        this.eDataCapturePlatform = eDataCapturePlatform;
    }

    public String geteDataCaptureVisualize() {
        return eDataCaptureVisualize;
    }

    public void seteDataCaptureVisualize(String eDataCaptureVisualize) {
        this.eDataCaptureVisualize = eDataCaptureVisualize;
    }

    public String geteDataCaptureHowToVisualize() {
        return eDataCaptureHowToVisualize;
    }

    public void seteDataCaptureHowToVisualize(String eDataCaptureHowToVisualize) {
        this.eDataCaptureHowToVisualize = eDataCaptureHowToVisualize;
    }

    public String getDataExtractionDemoInfo() {
        return dataExtractionDemoInfo;
    }

    public void setDataExtractionDemoInfo(String dataExtractionDemoInfo) {
        this.dataExtractionDemoInfo = dataExtractionDemoInfo;
    }

    public String getDataExtractionAge() {
        return dataExtractionAge;
    }

    public void setDataExtractionAge(String dataExtractionAge) {
        this.dataExtractionAge = dataExtractionAge;
    }

    public ArrayList<String> getDataExtractionSex() {
        return dataExtractionSex;
    }

    public void setDataExtractionSex(ArrayList<String> dataExtractionSex) {
        this.dataExtractionSex = dataExtractionSex;
    }

    public ArrayList<String> getDataExtractionGender() {
        return dataExtractionGender;
    }

    public void setDataExtractionGender(ArrayList<String> dataExtractionGender) {
        this.dataExtractionGender = dataExtractionGender;
    }

    public String getDataExtractionGenderOtherValue() {
        return dataExtractionGenderOtherValue;
    }

    public void setDataExtractionGenderOtherValue(String dataExtractionGenderOtherValue) {
        this.dataExtractionGenderOtherValue = dataExtractionGenderOtherValue;
    }

    public ArrayList<String> getDataExtractionRace() {
        return dataExtractionRace;
    }

    public void setDataExtractionRace(ArrayList<String> dataExtractionRace) {
        this.dataExtractionRace = dataExtractionRace;
    }

    public String getDataExtractionRaceOtherValue() {
        return dataExtractionRaceOtherValue;
    }

    public void setDataExtractionRaceOtherValue(String dataExtractionRaceOtherValue) {
        this.dataExtractionRaceOtherValue = dataExtractionRaceOtherValue;
    }

    public ArrayList<String> getDataExtractionEthnicity() {
        return dataExtractionEthnicity;
    }

    public void setDataExtractionEthnicity(ArrayList<String> dataExtractionEthnicity) {
        this.dataExtractionEthnicity = dataExtractionEthnicity;
    }

    public String getDataExtractionEthnicityOtherValue() {
        return dataExtractionEthnicityOtherValue;
    }

    public void setDataExtractionEthnicityOtherValue(String dataExtractionEthnicityOtherValue) {
        this.dataExtractionEthnicityOtherValue = dataExtractionEthnicityOtherValue;
    }

    public String getDataExtractionInclusion() {
        return dataExtractionInclusion;
    }

    public void setDataExtractionInclusion(String dataExtractionInclusion) {
        this.dataExtractionInclusion = dataExtractionInclusion;
    }

    public String getDataExtractionExclusion() {
        return dataExtractionExclusion;
    }

    public void setDataExtractionExclusion(String dataExtractionExclusion) {
        this.dataExtractionExclusion = dataExtractionExclusion;
    }

    public ArrayList<String> getDataExtractionLocation() {
        return dataExtractionLocation;
    }

    public void setDataExtractionLocation(ArrayList<String> dataExtractionLocation) {
        this.dataExtractionLocation = dataExtractionLocation;
    }

    public String getDataExtractionLocationOtherValue() {
        return dataExtractionLocationOtherValue;
    }

    public void setDataExtractionLocationOtherValue(String dataExtractionLocationOtherValue) {
        this.dataExtractionLocationOtherValue = dataExtractionLocationOtherValue;
    }

    public ArrayList<String> getDataExtractionLevelOfCare() {
        return dataExtractionLevelOfCare;
    }

    public void setDataExtractionLevelOfCare(ArrayList<String> dataExtractionLevelOfCare) {
        this.dataExtractionLevelOfCare = dataExtractionLevelOfCare;
    }

    public String getDataExtractionLevelOfCareOtherValue() {
        return dataExtractionLevelOfCareOtherValue;
    }

    public void setDataExtractionLevelOfCareOtherValue(String dataExtractionLevelOfCareOtherValue) {
        this.dataExtractionLevelOfCareOtherValue = dataExtractionLevelOfCareOtherValue;
    }

    public String getDataExtractionLocationInfo() {
        return dataExtractionLocationInfo;
    }

    public void setDataExtractionLocationInfo(String dataExtractionLocationInfo) {
        this.dataExtractionLocationInfo = dataExtractionLocationInfo;
    }

    public String getDataExtractionStartDate() {
        return dataExtractionStartDate;
    }

    public void setDataExtractionStartDate(String dataExtractionStartDate) {
        this.dataExtractionStartDate = dataExtractionStartDate;
    }

    public String getDataExtractionEndDate() {
        return dataExtractionEndDate;
    }

    public void setDataExtractionEndDate(String dataExtractionEndDate) {
        this.dataExtractionEndDate = dataExtractionEndDate;
    }

    public String getDataExtractionFrequency() {
        return dataExtractionFrequency;
    }

    public void setDataExtractionFrequency(String dataExtractionFrequency) {
        this.dataExtractionFrequency = dataExtractionFrequency;
    }

    public String getDataExtractionWhatDataToExtract() {
        return dataExtractionWhatDataToExtract;
    }

    public void setDataExtractionWhatDataToExtract(String dataExtractionWhatDataToExtract) {
        this.dataExtractionWhatDataToExtract = dataExtractionWhatDataToExtract;
    }

    public String getDataExtractionDeliveryLocation() {
        return dataExtractionDeliveryLocation;
    }

    public void setDataExtractionDeliveryLocation(String dataExtractionDeliveryLocation) {
        this.dataExtractionDeliveryLocation = dataExtractionDeliveryLocation;
    }

    public String getDataExtractionDataFormat() {
        return dataExtractionDataFormat;
    }

    public void setDataExtractionDataFormat(String dataExtractionDataFormat) {
        this.dataExtractionDataFormat = dataExtractionDataFormat;
    }

    public String getDataExtractionExternalCollaboration() {
        return dataExtractionExternalCollaboration;
    }

    public void setDataExtractionExternalCollaboration(String dataExtractionExternalCollaboration) {
        this.dataExtractionExternalCollaboration = dataExtractionExternalCollaboration;
    }

    public String getPatRecruitmentDemoInfo() {
        return patRecruitmentDemoInfo;
    }

    public void setPatRecruitmentDemoInfo(String patRecruitmentDemoInfo) {
        this.patRecruitmentDemoInfo = patRecruitmentDemoInfo;
    }

    public String getPatRecruitmentAge() {
        return patRecruitmentAge;
    }

    public void setPatRecruitmentAge(String patRecruitmentAge) {
        this.patRecruitmentAge = patRecruitmentAge;
    }

    public ArrayList<String> getPatRecruitmentSex() {
        return patRecruitmentSex;
    }

    public void setPatRecruitmentSex(ArrayList<String> patRecruitmentSex) {
        this.patRecruitmentSex = patRecruitmentSex;
    }

    public ArrayList<String> getPatRecruitmentGender() {
        return patRecruitmentGender;
    }

    public void setPatRecruitmentGender(ArrayList<String> patRecruitmentGender) {
        this.patRecruitmentGender = patRecruitmentGender;
    }

    public String getPatRecruitmentGenderOtherValue() {
        return patRecruitmentGenderOtherValue;
    }

    public void setPatRecruitmentGenderOtherValue(String patRecruitmentGenderOtherValue) {
        this.patRecruitmentGenderOtherValue = patRecruitmentGenderOtherValue;
    }

    public ArrayList<String> getPatRecruitmentRace() {
        return patRecruitmentRace;
    }

    public void setPatRecruitmentRace(ArrayList<String> patRecruitmentRace) {
        this.patRecruitmentRace = patRecruitmentRace;
    }

    public String getPatRecruitmentRaceOtherValue() {
        return patRecruitmentRaceOtherValue;
    }

    public void setPatRecruitmentRaceOtherValue(String patRecruitmentRaceOtherValue) {
        this.patRecruitmentRaceOtherValue = patRecruitmentRaceOtherValue;
    }

    public ArrayList<String> getPatRecruitmentEthnicity() {
        return patRecruitmentEthnicity;
    }

    public void setPatRecruitmentEthnicity(ArrayList<String> patRecruitmentEthnicity) {
        this.patRecruitmentEthnicity = patRecruitmentEthnicity;
    }

    public String getPatRecruitmentEthnicityOtherValue() {
        return patRecruitmentEthnicityOtherValue;
    }

    public void setPatRecruitmentEthnicityOtherValue(String patRecruitmentEthnicityOtherValue) {
        this.patRecruitmentEthnicityOtherValue = patRecruitmentEthnicityOtherValue;
    }

    public String getPatRecruitmentInclusion() {
        return patRecruitmentInclusion;
    }

    public void setPatRecruitmentInclusion(String patRecruitmentInclusion) {
        this.patRecruitmentInclusion = patRecruitmentInclusion;
    }

    public String getPatRecruitmentExclusion() {
        return patRecruitmentExclusion;
    }

    public void setPatRecruitmentExclusion(String patRecruitmentExclusion) {
        this.patRecruitmentExclusion = patRecruitmentExclusion;
    }

    public ArrayList<String> getPatRecruitmentLocation() {
        return patRecruitmentLocation;
    }

    public void setPatRecruitmentLocation(ArrayList<String> patRecruitmentLocation) {
        this.patRecruitmentLocation = patRecruitmentLocation;
    }

    public String getPatRecruitmentLocationOtherValue() {
        return patRecruitmentLocationOtherValue;
    }

    public void setPatRecruitmentLocationOtherValue(String patRecruitmentLocationOtherValue) {
        this.patRecruitmentLocationOtherValue = patRecruitmentLocationOtherValue;
    }

    public ArrayList<String> getPatRecruitmentLevelOfCare() {
        return patRecruitmentLevelOfCare;
    }

    public void setPatRecruitmentLevelOfCare(ArrayList<String> patRecruitmentLevelOfCare) {
        this.patRecruitmentLevelOfCare = patRecruitmentLevelOfCare;
    }

    public String getPatRecruitmentLevelOfCareOtherValue() {
        return patRecruitmentLevelOfCareOtherValue;
    }

    public void setPatRecruitmentLevelOfCareOtherValue(String patRecruitmentLevelOfCareOtherValue) {
        this.patRecruitmentLevelOfCareOtherValue = patRecruitmentLevelOfCareOtherValue;
    }

    public String getPatRecruitmentLocationInfo() {
        return patRecruitmentLocationInfo;
    }

    public void setPatRecruitmentLocationInfo(String patRecruitmentLocationInfo) {
        this.patRecruitmentLocationInfo = patRecruitmentLocationInfo;
    }

    public String getPatRecruitmentStartDate() {
        return patRecruitmentStartDate;
    }

    public void setPatRecruitmentStartDate(String patRecruitmentStartDate) {
        this.patRecruitmentStartDate = patRecruitmentStartDate;
    }

    public String getPatRecruitmentLength() {
        return patRecruitmentLength;
    }

    public void setPatRecruitmentLength(String patRecruitmentLength) {
        this.patRecruitmentLength = patRecruitmentLength;
    }

    public ArrayList<String> getPatRecruitmentContactMethod() {
        return patRecruitmentContactMethod;
    }

    public void setPatRecruitmentContactMethod(ArrayList<String> patRecruitmentContactMethod) {
        this.patRecruitmentContactMethod = patRecruitmentContactMethod;
    }

    public ArrayList<String> getPatRecruitmentContactPerson() {
        return patRecruitmentContactPerson;
    }

    public void setPatRecruitmentContactPerson(ArrayList<String> patRecruitmentContactPerson) {
        this.patRecruitmentContactPerson = patRecruitmentContactPerson;
    }

    public String getPatRecruitmentContactStudyTeamJHED() {
        return patRecruitmentContactStudyTeamJHED;
    }

    public void setPatRecruitmentContactStudyTeamJHED(String patRecruitmentContactStudyTeamJHED) {
        this.patRecruitmentContactStudyTeamJHED = patRecruitmentContactStudyTeamJHED;
    }

    @Override
    public String toString() {
        return "MHIRequestData{" + "piName=" + piName + ", piJhed=" + piJhed + ", piEmail=" + piEmail + ", phone=" + phone + ", submissionDate=" + submissionDate + ", submitterCheck=" + submitterCheck + ", submitterName=" + submitterName + ", submitterJhedID=" + submitterJhedID + ", submitterEmail=" + submitterEmail + ", studyTeamMemberName=" + studyTeamMemberName + ", studyTeamMemberJHED=" + studyTeamMemberJHED + ", studyTeamMemberEmail=" + studyTeamMemberEmail + ", studyTitle=" + studyTitle + ", projectDescription=" + projectDescription + ", toolset=" + toolset + ", patStudyEstimateAge=" + patStudyEstimateAge + ", patStudyEstimateSex=" + patStudyEstimateSex + ", patStudyEstimateGender=" + patStudyEstimateGender + ", patStudyEstimateGenderOtherValue=" + patStudyEstimateGenderOtherValue + ", patStudyEstimateRace=" + patStudyEstimateRace + ", patStudyEstimateRaceOtherValue=" + patStudyEstimateRaceOtherValue + ", patStudyEstimateEthnicity=" + patStudyEstimateEthnicity + ", patStudyEstimateEthnicityOtherValue=" + patStudyEstimateEthnicityOtherValue + ", patStudyEstimateInclusion=" + patStudyEstimateInclusion + ", patStudyEstimateExclusion=" + patStudyEstimateExclusion + ", patStudyEstimateLocation=" + patStudyEstimateLocation + ", patStudyEstimateLocationOtherValue=" + patStudyEstimateLocationOtherValue + ", patStudyEstimateLevelOfCare=" + patStudyEstimateLevelOfCare + ", patStudyEstimateLevelOfCareOtherValue=" + patStudyEstimateLevelOfCareOtherValue + ", patStudyEstimateLocationinfo=" + patStudyEstimateLocationinfo + ", patRegistryDemoInfo=" + patRegistryDemoInfo + ", patRegistryAge=" + patRegistryAge + ", patRegistrySex=" + patRegistrySex + ", patRegistryGender=" + patRegistryGender + ", patRegistryGenderOtherValue=" + patRegistryGenderOtherValue + ", patRegistryRace=" + patRegistryRace + ", patRegistryRaceOtherValue=" + patRegistryRaceOtherValue + ", patRegistryEthnicity=" + patRegistryEthnicity + ", patRegistryEthnicityOtherValue=" + patRegistryEthnicityOtherValue + ", patRegistryInclusion=" + patRegistryInclusion + ", patRegistryExclusion=" + patRegistryExclusion + ", patRegistryLocation=" + patRegistryLocation + ", patRegistryLocationOtherValue=" + patRegistryLocationOtherValue + ", patRegistryLevelOfCare=" + patRegistryLevelOfCare + ", patRegistryLevelOfCareOtherValue=" + patRegistryLevelOfCareOtherValue + ", patRegistryLocationInfo=" + patRegistryLocationInfo + ", patRegistryMetricDiagnoses=" + patRegistryMetricDiagnoses + ", patRegistryMetricMeds=" + patRegistryMetricMeds + ", patRegistryMetricLabs=" + patRegistryMetricLabs + ", patRegistryMetricMeasures=" + patRegistryMetricMeasures + ", patRegistryOtherMetric=" + patRegistryOtherMetric + ", eDataCaptureDemoInfo=" + eDataCaptureDemoInfo + ", eDataCaptureSex=" + eDataCaptureSex + ", eDataCaptureGender=" + eDataCaptureGender + ", eDataCaptureGenderOtherValue=" + eDataCaptureGenderOtherValue + ", eDataCaptureRace=" + eDataCaptureRace + ", eDataCaptureRaceOtherValue=" + eDataCaptureRaceOtherValue + ", eDataCaptureEthnicity=" + eDataCaptureEthnicity + ", eDataCaptureEthnicityOtherValue=" + eDataCaptureEthnicityOtherValue + ", eDataCaptureInclusion=" + eDataCaptureInclusion + ", eDataCaptureExclusion=" + eDataCaptureExclusion + ", eDataCaptureLocation=" + eDataCaptureLocation + ", eDataCaptureLocationOtherValue=" + eDataCaptureLocationOtherValue + ", eDataCaptureLevelOfCare=" + eDataCaptureLevelOfCare + ", eDataCaptureLevelOfCareOtherValue=" + eDataCaptureLevelOfCareOtherValue + ", eDataCaptureLocationInfo=" + eDataCaptureLocationInfo + ", eDataCaptureStartDate=" + eDataCaptureStartDate + ", eDataCaptureFrequency=" + eDataCaptureFrequency + ", eDataCaptureInfoToCapture=" + eDataCaptureInfoToCapture + ", eDataCaptureEntrantOfData=" + eDataCaptureEntrantOfData + ", eDataCapturePlatform=" + eDataCapturePlatform + ", eDataCaptureVisualize=" + eDataCaptureVisualize + ", eDataCaptureHowToVisualize=" + eDataCaptureHowToVisualize + ", dataExtractionDemoInfo=" + dataExtractionDemoInfo + ", dataExtractionAge=" + dataExtractionAge + ", dataExtractionSex=" + dataExtractionSex + ", dataExtractionGender=" + dataExtractionGender + ", dataExtractionGenderOtherValue=" + dataExtractionGenderOtherValue + ", dataExtractionRace=" + dataExtractionRace + ", dataExtractionRaceOtherValue=" + dataExtractionRaceOtherValue + ", dataExtractionEthnicity=" + dataExtractionEthnicity + ", dataExtractionEthnicityOtherValue=" + dataExtractionEthnicityOtherValue + ", dataExtractionInclusion=" + dataExtractionInclusion + ", dataExtractionExclusion=" + dataExtractionExclusion + ", dataExtractionLocation=" + dataExtractionLocation + ", dataExtractionLocationOtherValue=" + dataExtractionLocationOtherValue + ", dataExtractionLevelOfCare=" + dataExtractionLevelOfCare + ", dataExtractionLevelOfCareOtherValue=" + dataExtractionLevelOfCareOtherValue + ", dataExtractionLocationInfo=" + dataExtractionLocationInfo + ", dataExtractionStartDate=" + dataExtractionStartDate + ", dataExtractionEndDate=" + dataExtractionEndDate + ", dataExtractionFrequency=" + dataExtractionFrequency + ", dataExtractionWhatDataToExtract=" + dataExtractionWhatDataToExtract + ", dataExtractionDeliveryLocation=" + dataExtractionDeliveryLocation + ", dataExtractionDataFormat=" + dataExtractionDataFormat + ", dataExtractionExternalCollaboration=" + dataExtractionExternalCollaboration + ", patRecruitmentDemoInfo=" + patRecruitmentDemoInfo + ", patRecruitmentAge=" + patRecruitmentAge + ", patRecruitmentSex=" + patRecruitmentSex + ", patRecruitmentGender=" + patRecruitmentGender + ", patRecruitmentGenderOtherValue=" + patRecruitmentGenderOtherValue + ", patRecruitmentRace=" + patRecruitmentRace + ", patRecruitmentRaceOtherValue=" + patRecruitmentRaceOtherValue + ", patRecruitmentEthnicity=" + patRecruitmentEthnicity + ", patRecruitmentEthnicityOtherValue=" + patRecruitmentEthnicityOtherValue + ", patRecruitmentInclusion=" + patRecruitmentInclusion + ", patRecruitmentExclusion=" + patRecruitmentExclusion + ", patRecruitmentLocation=" + patRecruitmentLocation + ", patRecruitmentLocationOtherValue=" + patRecruitmentLocationOtherValue + ", patRecruitmentLevelOfCare=" + patRecruitmentLevelOfCare + ", patRecruitmentLevelOfCareOtherValue=" + patRecruitmentLevelOfCareOtherValue + ", patRecruitmentLocationInfo=" + patRecruitmentLocationInfo + ", patRecruitmentStartDate=" + patRecruitmentStartDate + ", patRecruitmentLength=" + patRecruitmentLength + ", patRecruitmentContactMethod=" + patRecruitmentContactMethod + ", patRecruitmentContactPerson=" + patRecruitmentContactPerson + ", patRecruitmentContactStudyTeamJHED=" + patRecruitmentContactStudyTeamJHED + '}';
    }
    
    
    
}
