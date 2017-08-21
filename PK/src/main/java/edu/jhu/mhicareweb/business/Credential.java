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
public class Credential {
    private String user;
    private String password;
    private ArrayList<String> roles= new ArrayList();

    public Credential(String user, String password) {
        this.user = user;
        this.password = password;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public ArrayList<String> getRoles() {
        return roles;
    }

    public void AddRoles(String role) {
        roles.add(role);
    }
    
    public void RemoveRoles(String role) {
        roles.remove(role);
    }
    
    
}
