/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jhu.mhicareweb.business;

import java.util.ArrayList;

/**
 *
 * @author spkar
 */
public class MHIRequestDataTest {   
    String piName;
    String piJhed;
    String piEmail;   
    ArrayList<String> studyTeamMemberName;
    ArrayList<String> studyTeamMemberJHED;
    ArrayList<String> studyTeamMemberEmail;
    ArrayList<String> patStudyEstimateSex;
    String patRegistryDemoInfo;

    public ArrayList<String> getPatStudyEstimateSex() {
        return patStudyEstimateSex;
    }

    public String getPatRegistryDemoInfo() {
        return patRegistryDemoInfo;
    }

    public void setPatRegistryDemoInfo(String patRegistryDemoInfo) {
        this.patRegistryDemoInfo = patRegistryDemoInfo;
    }

    public void setPatStudyEstimateSex(ArrayList<String> patStudyEstimateSex) {
        this.patStudyEstimateSex = patStudyEstimateSex;
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


}
