/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jhu.mhicareweb.business;

import edu.jhu.mhicareweb.entities.Mhirequest;
import javax.persistence.EntityManager;
import edu.jhu.mhicareweb.entities.UserRoles;
import edu.jhu.mhicareweb.entities.Users;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author skarkee
 */
public class BizManager {
    private EntityManager em;

    public BizManager(EntityManager em) {
        this.em = em;
    }
    
    public boolean createNewUser(Credential crd)
    {
        boolean bSuccess=false;
                
        Users us=new Users(crd.getUser(),crd.getPassword(),(short)1);
        Collection<UserRoles> userRolesCol= new ArrayList<>();
        for(String strRole:crd.getRoles())
        {
            UserRoles role=new UserRoles();
            role.setUsername(us);
            role.setRole(strRole);
            userRolesCol.add(role);
        }                
        us.setUserRolesCollection(userRolesCol);             
        try
        {    
            em.getTransaction().begin();
            em.persist(us);               
            em.getTransaction().commit(); 
            bSuccess=true;
        }
        catch(Exception e)
        {
            //To do log all the exceptions
        }     
        return bSuccess;
    }
    
    public boolean createNewMHIRequest(MHIRequestData mhiData,String user)
    {
        boolean bSuccess=false;
        //Fill up entity
        /*
        Mhirequest mhiReq=new Mhirequest();
        mhiReq.setSubmitterName(mhiData.getSubname());
        mhiReq.setSubmitterJhedid(mhiData.getSubjhed());  
        mhiReq.setSubmitterEmail(mhiData.getSubemail());   
        mhiReq.setStudyDescription(mhiData.getDescription());
        try
        {
            Users objUser=(Users)em.createQuery("Select u from Users as u where u.username = '"+user+"'").getSingleResult();
            mhiReq.setUser(objUser); //set foreign object
            em.getTransaction().begin();
            em.persist(mhiReq);               
            em.getTransaction().commit();
        }
        catch(Exception e)
        {
            //log
        }  */
        return bSuccess;
        
    }
    
}
