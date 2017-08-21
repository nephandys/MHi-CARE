/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jhu.mhicareweb.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author skarkee
 */
@Entity
@Table(name = "mhirequest")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Mhirequest.findAll", query = "SELECT m FROM Mhirequest m")
    , @NamedQuery(name = "Mhirequest.findById", query = "SELECT m FROM Mhirequest m WHERE m.id = :id")
    , @NamedQuery(name = "Mhirequest.findBySubmitterName", query = "SELECT m FROM Mhirequest m WHERE m.submitterName = :submitterName")
    , @NamedQuery(name = "Mhirequest.findBySubmitterJhedid", query = "SELECT m FROM Mhirequest m WHERE m.submitterJhedid = :submitterJhedid")
    , @NamedQuery(name = "Mhirequest.findBySubmitterEmail", query = "SELECT m FROM Mhirequest m WHERE m.submitterEmail = :submitterEmail")
    , @NamedQuery(name = "Mhirequest.findByStudyDescription", query = "SELECT m FROM Mhirequest m WHERE m.studyDescription = :studyDescription")})
public class Mhirequest implements Serializable {

    @JoinColumn(name = "user", referencedColumnName = "username")
    @ManyToOne
    private Users user;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "submitter_name")
    private String submitterName;
    @Basic(optional = false)
    @Column(name = "submitter_jhedid")
    private String submitterJhedid;
    @Basic(optional = false)
    @Column(name = "submitter_email")
    private String submitterEmail;
    @Basic(optional = false)
    @Column(name = "study_description")
    private String studyDescription;

    public Mhirequest() {
    }

    public Mhirequest(Integer id) {
        this.id = id;
    }

    public Mhirequest(Integer id, String submitterName, String submitterJhedid, String submitterEmail, String studyDescription) {
        this.id = id;
        this.submitterName = submitterName;
        this.submitterJhedid = submitterJhedid;
        this.submitterEmail = submitterEmail;
        this.studyDescription = studyDescription;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSubmitterName() {
        return submitterName;
    }

    public void setSubmitterName(String submitterName) {
        this.submitterName = submitterName;
    }

    public String getSubmitterJhedid() {
        return submitterJhedid;
    }

    public void setSubmitterJhedid(String submitterJhedid) {
        this.submitterJhedid = submitterJhedid;
    }

    public String getSubmitterEmail() {
        return submitterEmail;
    }

    public void setSubmitterEmail(String submitterEmail) {
        this.submitterEmail = submitterEmail;
    }

    public String getStudyDescription() {
        return studyDescription;
    }

    public void setStudyDescription(String studyDescription) {
        this.studyDescription = studyDescription;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Mhirequest)) {
            return false;
        }
        Mhirequest other = (Mhirequest) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.jhu.mhicare.entities.Mhirequest[ id=" + id + " ]";
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }
    
}
