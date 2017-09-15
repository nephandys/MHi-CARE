package edu.jhu.mhicareweb;

import edu.jhu.mhicareweb.business.BizManager;
import edu.jhu.mhicareweb.business.Credential;
import edu.jhu.mhicareweb.business.MHIRequestData;
import edu.jhu.mhicareweb.business.MHIRequestDataTest;
import edu.jhu.mhicareweb.entities.*;
import edu.jhu.mhicareweb.db.*;
import java.sql.*;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceUnit;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.saml.SAMLCredential;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("mhiSession")
public class MainController implements BeanFactoryAware{
        //@Autowired
        //private ApplicationContext appCtx;
        private BeanFactory beanFactory;
        
        @Autowired
        private EntityManagerFactory localEntityMF;
        
        @Autowired
        private DriverManagerDataSource dataSource;
        /*@Autowired
        private MHICareSession mhiSession;*/
        
        /*@PersistenceUnit
        public void setEntityManagerFactory(EntityManagerFactory emf)
        {
            this.emf=emf;
        }
        */
        @Override
        public void setBeanFactory(final BeanFactory beanFactory)
        {
            this.beanFactory=beanFactory;
            //Set EntityManagerFactory when bean is assigned
            //localEntityMF=( EntityManagerFactory)beanFactory.getBean("localEntityMF");
        }
        
        
        private String getUserLogin_old()
        {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            String user="";
            if (auth!=null) {
                UserDetails userDetail = (UserDetails) auth.getPrincipal();
                user=userDetail.getUsername();
            }
            return user;
            
            
       
        }
        
        
        private String getUserLogin()
        {      
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            String user="";
            //SAMLCredential credential = (SAMLCredential) auth.getCredentials();
            if (auth!=null) {                
                user=auth.getPrincipal().toString();
            }                    
            return user;            
        }
        
        
	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)        
	public ModelAndView welcomePage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
               //model.
		model.addObject("message", "This is welcome page!");
		model.setViewName("welcome");
		return model;

	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is protected page!");
		model.setViewName("admin");
                //EntityManagerFactory emf=( EntityManagerFactory)beanFactory.getBean("localEntityMF");                
                //EntityManager em=Persistence.createEntityManagerFactory("MHICareWebPU").createEntityManager();
                // LocalEntityManagerFactoryBean emf= (LocalEntityManagerFactoryBean)beanFactory.getBean("localEntityMF");  
                //UsersJpaController userDAO= new UsersJpaController(Persistence.createEntityManagerFactory("MHICareWebPU"));
                //List<Users> userList= userDAO.findUsersEntities();
                EntityManager em=localEntityMF.createEntityManager();
                //List<Users> userList=em.createQuery("Select u from Users as u where u.username like '%prat%'").getResultList();
                try
                {
                    List<Users> userList=em.createQuery("Select u from Users as u").getResultList();
                    model.addObject("userList",userList);
                }
                catch(Exception e)
                {
                    //throw e;
                }
                finally
                {
                    if (em!=null) em.close();
                }
                /*
                String st="";
                for(Users u: userList)
                {
                   st+=u.toString();
                }
                model.addObject("message", st);
                */
                
                //em.cl

		return model;

	}

	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,@RequestParam(value = "mhiSession", required = false)MHICareSession sess) {

		ModelAndView model = new ModelAndView("loginPage");
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
                        //model.
                        return model;
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
                        
                    if(sess!=null)
                    {   
                        //any existing session destroy
                        sess.setMyData("");
                        sess=null;
                    }
                    return model;
		}
		//model.setViewName("loginPage");
                MHICareSession ses1=new MHICareSession();
                ses1.setMyData("Happy singh");                
               	//Authentication auth = SecurityContextHolder.getContext().getAuthentication();               
               // UserDetails userDetail = (UserDetails) auth.getPrincipal();
                //ses1.setUser(userDetail.getUsername());                
                model.addObject("mhiSession",ses1);
		return model;

	}
        
        //for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

	  ModelAndView model = new ModelAndView();

	  //check if user is login
	  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	  if (!(auth instanceof AnonymousAuthenticationToken)) {
		UserDetails userDetail = (UserDetails) auth.getPrincipal();
		model.addObject("username", userDetail.getUsername());
	  }

	  model.setViewName("403");
	  return model;
        }
        
        @RequestMapping(value = "/hello", method = RequestMethod.GET)
	public ModelAndView helloPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is protected user page! ");
		model.setViewName("hello");

		return model;

	}
        
        @RequestMapping(value = "/staff", method = RequestMethod.GET)
	public ModelAndView staffPage(@ModelAttribute("mhiSession")MHICareSession sess) {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is protected user page! "+sess.getMyData());
		model.setViewName("staff");

		return model;
	}
        
        @RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Registration Form");
		model.addObject("message", "This is protected page!");
		model.setViewName("register");
		return model;
	}
        
        /*
        @RequestMapping(value = "/doRegisternotused", method = RequestMethod.POST)
	public ModelAndView doRegister_notused(@RequestParam Map<String,String> requests) {

		ModelAndView model = new ModelAndView();	
                String user=requests.get("username");
                String pwd=requests.get("password");
                //UsersJpaController userDAO= new UsersJpaController();
                //userDAO.
                //EntityManager em=Persistence.createEntityManagerFactory("MHICareWebPU").createEntityManager();
               // UsersJpaController userDAO= new UsersJpaController(Persistence.createEntityManagerFactory("MHICareWebPU"));
               
                EntityManager em=localEntityMF.createEntityManager();
                Users us=new Users(user,pwd,(short)1);
                Collection<UserRoles> userRolesCol= new ArrayList<>();
                UserRoles rol1=new UserRoles();
                rol1.setUsername(us);
                rol1.setRole("ROLE_USER");
                userRolesCol.add(rol1);
                us.setUserRolesCollection(userRolesCol);               
                
                try
                {
                 //userDAO.create(us);
                    em.getTransaction().begin();
                    em.persist(us);               
                    em.getTransaction().commit();
                    
                }
                catch(Exception e)
                {
                    //log all the exceptions
                }
                finally
                {
                    if (em!=null) em.close();
                }
                model.addObject("title", user);
		model.addObject("message", pwd);
		model.setViewName("welcome");
		return model;

	}
        */
        
        @RequestMapping(value = "/doRegister", method = RequestMethod.POST)
	public ModelAndView doRegister(@RequestParam Map<String,String> requests) {

		ModelAndView model = new ModelAndView();	
                String user=requests.get("username");
                String pwd=requests.get("password");          
                Credential crd=new Credential(user, pwd);
                crd.AddRoles("ROLE_USER");  
                EntityManager em=null;                
                try
                {
                    em=localEntityMF.createEntityManager();
                    BizManager bizMgr= new BizManager(em);
                    bizMgr.createNewUser(crd);                    
                }
                catch(Exception e)
                {
                    //log all the exceptions
                }
                finally
                {
                    if (em!=null) em.close();
                    em=null;
                }
                model.addObject("title", user);
		model.addObject("message", pwd);
		model.setViewName("welcome");
		return model;

	}
        
        
         @RequestMapping(value = "/doMHIRequest", method = RequestMethod.POST)
         public ModelAndView doMHIRequest(MHIRequestData mhiData) { 
		ModelAndView model = new ModelAndView();   
                String user=getUserLogin();
                EntityManager em=null;                
                try
                {    
                    em=localEntityMF.createEntityManager();
                    BizManager bizMgr= new BizManager(em);
                    bizMgr.createNewMHIRequest(mhiData, user);
                }
                catch(Exception e)
                {
                    //log
                }                

                finally
                {
                    if (em!=null) em.close();
                    em=null; //garbage collect
                }               
           
                model.addObject("title",user );
		//model.addObject("message",mhiData.getSubname()+mhiData.getSubjhed() + mhiData.getSubemail()+mhiData.getDescription());
		model.setViewName("welcome");
		return model;

	}
         
         
         
         
         
         /*Create statement for table example   
         
             CREATE TABLE `mhirequestTest` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `submitter_name` varchar(45) NOT NULL,
            `submitter_jhedid` varchar(45) NOT NULL,
            `submitter_email` varchar(45) NOT NULL,
            PRIMARY KEY (`id`)
            ) 

         */
         
         private String getToolSetTableName(String toolSet)
         {
             String toolSetU=toolSet.toUpperCase();
             String strTableName="";
             switch(toolSetU)
             {
                 case "PATIENT ESTIMATE FOR STUDY DESIGN":
                     strTableName="patientestimate";
                     break;
                 case "PATIENT REGISTRY":
                     strTableName="patientregistry";
                     break;
                 case "ELECTRONIC DATA CAPTURE":
                     strTableName="electronicdatacapture";
                     break;
                 case "DATA EXTRACTION":
                     strTableName="dataextraction";
                     break;
                 case "RECRUITMENT FOR RESEARCH":
                     strTableName="recruitmentforresearch";
                     break;
                 default:
                     break;
             }
             System.out.println(strTableName);
             return strTableName;
         }
         //eg. if auto bind needed @ModelAttribute("inputData") MHIRequestDataTest mhiData
         @RequestMapping(value = "/doMHIRequestTest", method = RequestMethod.POST)
         public ModelAndView doMHIRequestTest(MHIRequestData mhiData) { 
		ModelAndView model = new ModelAndView();   
		model.addObject("inputData",mhiData);
                //String pwd=dataSource.getPassword();
                String msg="";
               
		
                //DB Query following
                List<MHIRequestData> reqDataList=new ArrayList<MHIRequestData>();
                //Get Connection
                Connection connect=null;
                Statement stmt=null;
                try
                {
                  connect=dataSource.getConnection();
                  //Prepared Statement
                  PreparedStatement ps;  
                  
                  //insert query test for PI
                  String  sql="Insert into mhirequest_pi(pi_name,pi_jhedid,pi_email) values(?,?,?)";                   
                  connect.setAutoCommit(false);//begin transaction
                  
                  ps=connect.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
                  
                  ps.setString(1, mhiData.getPiName());
                  ps.setString(2, mhiData.getPiJhed());
                  ps.setString(3, mhiData.getPiEmail());                  
                  int affectedRows=ps.executeUpdate();
                  
                  if (affectedRows == 0) 
                  {
                        //log  
                  }
                  ResultSet generatedKeys = ps.getGeneratedKeys();
                  long genID=0;
                  if (generatedKeys.next()) 
                  {
                         genID= generatedKeys.getLong(1);
                         msg+="Gen ID:"+genID;
                      
                  }
                  
                  
                //------------------------------------------------sql to insert Study Team Members-------------------------------------------------------------------------------
                                  
                 for (int index=0;index<mhiData.getStudyTeamMemberName().size();index++)
                 {
                    String sql2="Insert into mhiRequest_StudyTeamMembers(pi_id,stm_name,stm_jhedid,stm_email) values(?,?,?,?)";
                    ps=connect.prepareStatement(sql2,Statement.RETURN_GENERATED_KEYS);
                    ps.setString(1,Long.toString(genID));                   
                    ps.setString(2,mhiData.getStudyTeamMemberName().get(index));
                    ps.setString(3, mhiData.getStudyTeamMemberJHED().get(index));
                    ps.setString(4, mhiData.getStudyTeamMemberEmail().get(index));
                    ps.executeUpdate();                    
                 }

                //------------------------------------------------sql to insert Study Description-------------------------------------------------------------------------------
                String sql3="Insert into Study_Description(pi_id,study_title,study_Description) values(?,?,?)";
                ps= connect.prepareStatement(sql3,Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, Long.toString(genID));
                ps.setString(2, mhiData.getStudyTitle());
                ps.setString(3, mhiData.getProjectDescription()); 
                ps.executeUpdate();
                msg+=" tool set size:"+mhiData.getToolset().size();
                //----------------------------------------sql to insert Chosen Toolset and its corresponding data-------------------------------------------------------------------------------
                for(int index=0;index<mhiData.getToolset().size();index++)
                {
                    /*String sql4="Insert into mhirequest_toolset(pi_id,toolset_name) values(?,?)";
                    ps= connect.prepareStatement(sql4,Statement.RETURN_GENERATED_KEYS);
                    ps.setString(1, Long.toString(genID));
                    ps.setString(2, mhiData.getToolset().get(index));
                    ps.executeUpdate();*/
                    //GET THE TOOL SET TABLE NAME
                    String toolSet=getToolSetTableName(mhiData.getToolset().get(index));
                    msg+=" tool set name:"+toolSet;
                    if(toolSet.equals("patientestimate"))
                    {
                        
                        //------------------------------------------------sql to insert Pateint_Estimate_For_Study_Design-------------------------------------------------------------------------------
                        String sql5="Insert into patientestimate(pi_id,age,sex,gender,race,ethnicity,inclusion,exclusion,location,level_of_care,add_location_info) values(?,?,?,?,?,?,?,?,?,?,?)";
                        msg+=sql5;
                        ps= connect.prepareStatement(sql5,Statement.RETURN_GENERATED_KEYS);
                        
                        String strAge = mhiData.getPatStudyEstimateAge();
                        String strSex="";
                        String strGender="";
                        String strRace="";
                        String strEthnicity="";
                        String patStudyEstimateInclusion=mhiData.getPatStudyEstimateInclusion();
                        String patStudyEstimateExclusion=mhiData.getPatStudyEstimateExclusion();
                        String strLocation="";
                        String strLevelOfCare="";
                        String patStudyEstimateAdditionalInfo=mhiData.getPatStudyEstimateLocationinfo();
                        //to get the sex chosen in PatientEstimate Toolset
                        int nCount=1;
                        for(String s:mhiData.getPatStudyEstimateSex())
                        {
                            strSex+=s+((nCount<mhiData.getPatStudyEstimateSex().size())?"|":"");
                            nCount++;
                        }
                        //to get the Gender chosen in PatientEstimate Toolset
                        nCount=1;
                        for(String s:mhiData.getPatStudyEstimateGender())
                        {
                            if(s.equals("Other"))
                            {
                                String strGenderOther=mhiData.getPatStudyEstimateGenderOtherValue();
                                s="other:"+strGenderOther;
                            }
                            strGender+=s+((nCount<mhiData.getPatStudyEstimateGender().size())?"|":"");
                            
                            nCount++;
                        }
                        //to get the Gender Other Value chosen in PatientEstimate Toolset and concatenate with Gender
                        /*String strGenderOther=mhiData.getPatStudyEstimateGenderOtherValue();
                        if(strGenderOther!=null && !strGenderOther.isEmpty())
                        {
                            strGender+="other:"+strGenderOther;
                        }*/
                        //to get the Race chosen in PatientEstimate Toolset
                        nCount=1;
                        for(String s:mhiData.getPatStudyEstimateRace())
                        {
                            if(s.equals("Other"))
                            {
                                String strRaceOther=mhiData.getPatStudyEstimateRaceOtherValue();
                                s="other:"+strRaceOther;
                            }
                            strRace+=s+((nCount<mhiData.getPatStudyEstimateRace().size())?"|":"");
                            nCount++;
                        }
                        //to get the Race Other Value chosen in PatientEstimate Toolset and concatenate with Gender
                       /* String strRaceOther=mhiData.getPatStudyEstimateRaceOtherValue();
                        if(strRaceOther!=null && !strRaceOther.isEmpty())
                        {
                            strRace+="other:"+strRaceOther;
                        }*/
                        //to get the Ethnicity chosen in PatientEstimate Toolset
                        nCount=1;
                        for(String s:mhiData.getPatStudyEstimateEthnicity())
                        {
                            if(s.equals("Other"))
                            {
                                String strEthnicityOther=mhiData.getPatStudyEstimateEthnicityOtherValue();
                                s="other:"+strEthnicityOther;
                            }
                            strEthnicity+=s+((nCount<mhiData.getPatStudyEstimateEthnicity().size())?"|":"");
                            nCount++;
                        }
                        //to get the Ethnicity Other Value chosen in PatientEstimate Toolset and concatenate with Gender
                        /*String strEthnicityOther=mhiData.getPatStudyEstimateEthnicityOtherValue();
                        if(strEthnicityOther!=null && !strEthnicityOther.isEmpty())
                        {
                            strEthnicity+="other:"+strEthnicityOther;
                        }*/
                        //to get the Location chosen in PatientEstimate Toolset
                        nCount=1;
                        for(String s:mhiData.getPatStudyEstimateLocation())
                        {
                            if(s.equals("Other"))
                            {
                                String strLocationOther=mhiData.getPatStudyEstimateLocationOtherValue();
                                s="other:"+strLocationOther;
                            }
                            strLocation+=s+((nCount<mhiData.getPatStudyEstimateLocation().size())?"|":"");
                            nCount++;
                        }
                        //to get the Location Other Value chosen in PatientEstimate Toolset and concatenate with Gender
                        /*String strLocationOther=mhiData.getPatStudyEstimateLocationOtherValue();
                        if(strLocationOther!=null && !strLocationOther.isEmpty())
                        {
                            strLocation+="other:"+strLocationOther;
                        }*/
                        //to get the Level Of Care chosen in PatientEstimate Toolset
                        nCount=1;
                        for(String s:mhiData.getPatStudyEstimateLevelOfCare())
                        {
                            if(s.equals("Other"))
                            {
                                String strLevelOfCareOther=mhiData.getPatStudyEstimateLevelOfCareOtherValue();
                                s="other:"+strLevelOfCareOther;
                            }
                            strLevelOfCare+=s+((nCount<mhiData.getPatStudyEstimateLevelOfCare().size())?"|":"");
                            nCount++;
                        }
                        //to get the Location Other Value chosen in PatientEstimate Toolset and concatenate with Gender
                        /*String strLevelOfCareOther=mhiData.getPatStudyEstimateLevelOfCareOtherValue();
                        if(strLevelOfCareOther!=null && !strLevelOfCareOther.isEmpty())
                        {
                            strLevelOfCare+="other:"+strLevelOfCareOther;
                        }*/
                        
                        ps.setString(1,Long.toString(genID));
                        ps.setString(2,strAge);
                        ps.setString(3,strSex);
                        ps.setString(4,strGender);
                        ps.setString(5,strRace);
                        ps.setString(6,strEthnicity);
                        ps.setString(7,patStudyEstimateInclusion);
                        ps.setString(8,patStudyEstimateExclusion);
                        ps.setString(9,strLocation);
                        ps.setString(10,strLevelOfCare);
                        ps.setString(11,patStudyEstimateAdditionalInfo);
                        ps.executeUpdate();
                    }
                    
                    //if toolset equals "Patient Registry"
                    if(toolSet.equals("patientregistry"))
                    {                        
                        //------------------------------------------------sql to insert Pateint_Registry-------------------------------------------------------------------------------
                        String sql5="Insert into patientregistry(pi_id,age,sex,gender,race,ethnicity,inclusion,exclusion,location,level_of_care,add_location_info,diagnoses,medications,labs,measures,other_pat_info) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                        ps= connect.prepareStatement(sql5,Statement.RETURN_GENERATED_KEYS);
                        
                        String strAge = mhiData.getPatRegistryAge();
                        String strSex="";
                        String strGender="";
                        String strRace="";
                        String strEthnicity="";
                        String patRegistryInclusion=mhiData.getPatRegistryInclusion();
                        String patRegistryExclusion=mhiData.getPatRegistryExclusion();
                        String strLocation="";
                        String strLevelOfCare="";
                        String patRegistryAdditionalInfo=mhiData.getPatRegistryLocationInfo();
                        //to get the sex chosen in PatientRegistry Toolset
                        int nCount=1;
                        for(String s:mhiData.getPatRegistrySex())
                        {
                            strSex+=s+((nCount<mhiData.getPatRegistrySex().size())?"|":"");
                            
                            nCount++;
                        }
                        //to get the Gender chosen in PatientRegistry Toolset
                        nCount=1;
                        for(String s:mhiData.getPatRegistryGender())
                        {
                            if(s.equals("Other"))
                            {
                                String strGenderOther=mhiData.getPatRegistryGenderOtherValue();
                                s="other:"+strGenderOther;
                            }
                            strGender+=s+((nCount<mhiData.getPatRegistryGender().size())?"|":"");
                            nCount++;
                        }
                        //to get the Gender Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*String strGenderOther=mhiData.getPatRegistryGenderOtherValue();
                        if(strGenderOther!=null && !strGenderOther.isEmpty())
                        {
                            strGender+="other:"+strGenderOther;
                        }*/
                        //to get the Race chosen in PatientRegistry Toolset
                        nCount=1;
                        for(String s:mhiData.getPatRegistryRace())
                        {
                            if(s.equals("Other"))
                            {
                                String strRaceOther=mhiData.getPatRegistryRaceOtherValue();
                                s="other:"+strRaceOther;
                            }
                            strRace+=s+((nCount<mhiData.getPatRegistryRace().size())?"|":"");
                        }
                        //to get the Race Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*String strRaceOther=mhiData.getPatRegistryRaceOtherValue();
                        if(strRaceOther!=null && !strRaceOther.isEmpty())
                        {
                            strRace+="other:"+strRaceOther;
                        }*/
                        //to get the Ethnicity chosen in PatientRegistry Toolset
                        nCount=1;
                        for(String s:mhiData.getPatRegistryEthnicity())
                        {
                            if(s.equals("Other"))
                            {
                                String strEthnicityOther=mhiData.getPatRegistryEthnicityOtherValue();
                                s="other:"+strEthnicityOther;
                            }
                            strEthnicity+=s+((nCount<mhiData.getPatRegistryEthnicity().size())?"|":"");
                        }
                        //to get the Ethnicity Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*String strEthnicityOther=mhiData.getPatRegistryEthnicityOtherValue();
                        if(strEthnicityOther!=null && !strEthnicityOther.isEmpty())
                        {
                            strEthnicity+="other:"+strEthnicityOther;
                        }*/
                        //to get the Location chosen in PatientRegistry Toolset
                        nCount=1;
                        for(String s:mhiData.getPatRegistryLocation())
                        {
                            if(s.equals("Other"))
                            {
                                String strLocationOther=mhiData.getPatRegistryLocationOtherValue();
                                s="other:"+strLocationOther;
                            }
                            strLocation+=s+((nCount<mhiData.getPatRegistryLocation().size())?"|":"");
                        }
                        //to get the Location Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*String strLocationOther=mhiData.getPatRegistryLocationOtherValue();
                        if(strLocationOther!=null && !strLocationOther.isEmpty())
                        {
                            strLocation+="other:"+strLocationOther;
                        }*/
                        //to get the Level Of Care chosen in PatientRegistry Toolset
                        nCount=1;
                         for(String s:mhiData.getPatRegistryLevelOfCare())
                        {
                            if(s.equals("Other"))
                            {
                                String strLevelOfCareOther=mhiData.getPatRegistryLevelOfCareOtherValue();
                                s="other:"+strLevelOfCareOther;
                            }
                            strLevelOfCare+=s+((nCount<mhiData.getPatRegistryLevelOfCare().size())?"|":"");
                        }
                        //to get the level of care Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*String strLevelOfCareOther=mhiData.getPatRegistryLevelOfCareOtherValue();
                        if(strLevelOfCareOther!=null && !strLevelOfCareOther.isEmpty())
                        {
                            strLevelOfCare+="other:"+strLevelOfCareOther;
                        }*/
                        //to get diagnoses info info of PatientRegistry
                        String strDiagnoses=mhiData.getPatRegistryMetricDiagnoses();//to get Diagnoses info info of PatientRegistry
                        String strMedications=mhiData.getPatRegistryMetricMeds();   //to get medication info info of PatientRegistry
                        String strLabs=mhiData.getPatRegistryMetricLabs(); //to get Labs info of PatientRegistry
                        String strMeasures=mhiData.getPatRegistryMetricMeasures(); //to get Measures info of Patient Registry
                        String strOtherMetrics=mhiData.getPatRegistryOtherMetric(); //to get other Metric related info of Patient Registry
                        
                        ps.setString(1,Long.toString(genID));
                        ps.setString(2,strAge);
                        ps.setString(3,strSex);
                        ps.setString(4,strGender);
                        ps.setString(5,strRace);
                        ps.setString(6,strEthnicity);
                        ps.setString(7,patRegistryInclusion);
                        ps.setString(8,patRegistryExclusion);
                        ps.setString(9,strLocation);
                        ps.setString(10,strLevelOfCare);
                        ps.setString(11,patRegistryAdditionalInfo);
                        ps.setString(12,strDiagnoses);
                        ps.setString(13,strMedications);
                        ps.setString(14,strLabs);
                        ps.setString(15,strMeasures);
                        ps.setString(16,strOtherMetrics);
                        ps.executeUpdate();
                        
                    }
                     //if toolset equals "Electronic Data Capture"
                    if(toolSet.equals("electronicdatacapture"))
                    {                        
                        //------------------------------------------------sql to insert Electronic Data Capture----------------------------------------------------------------------
                        String sql5="Insert into electronicdatacapture(pi_id,age,sex,gender,race,ethnicity,inclusion,exclusion,location,level_of_care,add_location_info,COLLECTION_START,COLLECTION_FREQUENCY,COLLECTION_LENGTH,PATIENT_SPECIFIC_INFO,ERRANT_DATA,DATA_ENTRY_PLATFORM,DATA_VIZUALIZATION) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                        ps= connect.prepareStatement(sql5,Statement.RETURN_GENERATED_KEYS);
                        
                        String strAge = mhiData.geteDataCaptureAge();
                        String strSex="";
                        String strGender="";
                        String strRace="";
                        String strEthnicity="";
                        String eDataCaptureInclusion=mhiData.geteDataCaptureInclusion();
                        String eDataCaptureExclusion=mhiData.geteDataCaptureExclusion();
                        String strLocation="";
                        String strLevelOfCare="";
                        String eDataCaptureLocationInfo=mhiData.geteDataCaptureLocationInfo();
                        String eDataCaptureStartDate=mhiData.geteDataCaptureStartDate();
                        String eDataCaptureFrequency=mhiData.geteDataCaptureFrequency();
                        String eDataCaptureLength=mhiData.geteDataCaptureLength();
                        String eDataCaptureInfoToCapture=mhiData.geteDataCaptureInfoToCapture();
                        String eDataCaptureEntrantOfData=mhiData.geteDataCaptureEntrantOfData();
                        String eDataCapturePlatform=mhiData.geteDataCapturePlatform();
                       
                        //to get the sex chosen in ElectronicDataCapture Toolset
                        int nCount=1;
                        for(String s:mhiData.geteDataCaptureSex())
                        {
                            strSex+=s+((nCount<mhiData.geteDataCaptureSex().size())?"|":"");
                            nCount++;
                        }
                        //to get the Gender chosen in ElectronicDataCapture Toolset
                        nCount=1;
                        for(String s:mhiData.geteDataCaptureGender())
                        {
                            if(s.equals("Other"))
                            {
                                String strGenderOther=mhiData.geteDataCaptureGenderOtherValue();
                                s="other:"+strGenderOther;
                            }
                            strGender+=s+((nCount<mhiData.geteDataCaptureGender().size())?"|":"");
                            nCount++;
                            
                        }
                        //to get the Gender Other Value chosen in ElectronicDataCapture Toolset and concatenate with Gender
                        /*String strGenderOther=mhiData.geteDataCaptureGenderOtherValue();
                        if(strGenderOther!=null && !strGenderOther.isEmpty())
                        {
                            strGender+="other:"+strGenderOther;
                        }*/
                        //to get the Race chosen in ElectronicDataCapture Toolset
                        nCount=1;
                        for(String s:mhiData.geteDataCaptureRace())
                        {
                            if(s.equals("Other"))
                            {
                                String strRaceOther=mhiData.geteDataCaptureRaceOtherValue();
                                s="other:"+strRaceOther;
                            }
                            strRace+=s+((nCount<mhiData.geteDataCaptureRace().size())?"|":"");
                            nCount++;
                        }
                        //to get the Race Other Value chosen in ElectronicDataCapture Toolset and concatenate with Gender
                        /*String strRaceOther=mhiData.geteDataCaptureRaceOtherValue();
                        if(strRaceOther!=null && !strRaceOther.isEmpty())
                        {
                            strRace+="other:"+strRaceOther;
                        }*/
                        //to get the Ethnicity chosen in ElectronicDataCapture Toolset
                        nCount=1;
                        for(String s:mhiData.geteDataCaptureEthnicity())
                        {
                            if(s.equals("Other"))
                            {
                                String strEthnicityOther=mhiData.geteDataCaptureEthnicityOtherValue();
                                s="other:"+strEthnicityOther;
                            }
                            strEthnicity+=s+((nCount<mhiData.geteDataCaptureEthnicity().size())?"|":"");
                            nCount++;
                        }
                        //to get the Ethnicity Other Value chosen in ElectronicDataCapture Toolset and concatenate with Gender
                        /*String strEthnicityOther=mhiData.geteDataCaptureEthnicityOtherValue();
                        if(strEthnicityOther!=null && !strEthnicityOther.isEmpty())
                        {
                            strEthnicity+="other:"+strEthnicityOther;
                        }*/
                        //to get the Location chosen in ElectronicDataCapture Toolset
                        nCount=1;
                        for(String s:mhiData.geteDataCaptureLocation())
                        {
                            if(s.equals("Other"))
                            {
                                String strLocationOther=mhiData.geteDataCaptureLocationOtherValue();
                                s="other:"+strLocationOther;
                            }
                            strLocation+=s+((nCount<mhiData.geteDataCaptureLocation().size())?"|":"");
                            nCount++;
                        }
                        //to get the Location Other Value chosen in ElectronicDataCapture Toolset and concatenate with Gender
                        /*String strLocationOther=mhiData.geteDataCaptureLocationOtherValue();
                        if(strLocationOther!=null && !strLocationOther.isEmpty())
                        {
                            strLocation+="other:"+strLocationOther;
                        }*/
                        //to get the Level Of Care chosen in ElectronicDataCapture Toolset
                        nCount=1;
                        for(String s:mhiData.geteDataCaptureLevelOfCare())
                        {
                            if(s.equals("Other"))
                            {
                                String strLevelOfCareOther=mhiData.geteDataCaptureLevelOfCareOtherValue();
                                s="other:"+strLevelOfCareOther;
                            }
                            strLevelOfCare+=s+((nCount<mhiData.geteDataCaptureLevelOfCare().size())?"|":"");
                            nCount++;
                        }
                        //to get the level of care Other Value chosen in ElectronicDataCapture Toolset and concatenate with Gender
                        /*String strLevelOfCareOther=mhiData.geteDataCaptureLevelOfCareOtherValue();
                        if(strLevelOfCareOther!=null && !strLevelOfCareOther.isEmpty())
                        {
                            strLevelOfCare+="other:"+strLevelOfCareOther;
                        }*/
                        String eDataCaptureVisualize=mhiData.geteDataCaptureVisualize();/*String   to visualise data */
                        
                        if(eDataCaptureVisualize.equals("visual-yes"))
                        {
                            eDataCaptureVisualize+="other:"+mhiData.geteDataCaptureHowToVisualize();
                        }
                        else
                        {
                            eDataCaptureVisualize=eDataCaptureVisualize;
                        }
                         
                        ps.setString(1,Long.toString(genID));
                        ps.setString(2,strAge);
                        ps.setString(3,strSex);
                        ps.setString(4,strGender);
                        ps.setString(5,strRace);
                        ps.setString(6,strEthnicity);
                        ps.setString(7,eDataCaptureInclusion);
                        ps.setString(8,eDataCaptureExclusion);
                        ps.setString(9,strLocation);
                        ps.setString(10,strLevelOfCare);
                        ps.setString(11,eDataCaptureLocationInfo);
                        ps.setString(12,eDataCaptureStartDate);
                        ps.setString(13,eDataCaptureFrequency);
                        ps.setString(14,eDataCaptureLength); //eDataCaptureLength
                        ps.setString(15,eDataCaptureInfoToCapture);
                        ps.setString(16,eDataCaptureEntrantOfData);
                        ps.setString(17,eDataCapturePlatform);
                        ps.setString(18,eDataCaptureVisualize);
                        ps.executeUpdate();
                    }
                    //if toolset equals "Data Extraction"
                    if(toolSet.equals("dataextraction"))
                    {                        
                        //------------------------------------------------sql to insert DATA EXTRACTION toolset----------------------------------------------------------------------
                        String sql5="Insert into dataextraction(pi_id,age,sex,gender,race,ethnicity,inclusion,exclusion,location,level_of_care,add_location_info,COLLECTION_START,COLLECTION_END,COLLECTION_FREQUENCY,WHAT_DATA_TOEXTRACT,DATA_DELIVERY_LOCATION,DATA_FORMAT_REQUESTED,COLLABORATION_INFO) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                        ps= connect.prepareStatement(sql5,Statement.RETURN_GENERATED_KEYS);
                        
                        String strAge = mhiData.getDataExtractionAge();
                        String strSex="";
                        String strGender="";
                        String strRace="";
                        String strEthnicity="";
                        String dataExtractionInclusion=mhiData.getDataExtractionInclusion();
                        String dataExtractionExclusion=mhiData.getDataExtractionExclusion();
                        String strLocation="";
                        String strLevelOfCare="";
                        String dataExtractionLocationInfo=mhiData.getDataExtractionLocationInfo();
                        String dataExtractionStartDate=mhiData.getDataExtractionStartDate();
                        String dataExtractionEndDate=mhiData.getDataExtractionEndDate();
                        String dataExtractionFrequency=mhiData.getDataExtractionFrequency();
                        String dataExtractionWhatDataToExtract=mhiData.getDataExtractionWhatDataToExtract();
                        String dataExtractionDeliveryLocation=mhiData.getDataExtractionDeliveryLocation();
                        String dataExtractionDataFormat=mhiData.getDataExtractionDataFormat();
                        String dataExtractionExternalCollaboration=mhiData.getDataExtractionExternalCollaboration();
                        //to get the sex chosen in DATA_EXTRACTION Toolset
                        int nCount=1;
                        for(String s:mhiData.getDataExtractionSex())
                        {
                            strSex+=s+((nCount<mhiData.getDataExtractionSex().size())?"|":"");
                            nCount++;
                        }
                        //to get the Gender chosen in DATA EXTRACTION Toolset
                        nCount=1;
                        for(String s:mhiData.getDataExtractionGender())
                        {
                            if(s.equals("Other"))
                            {
                                String strGenderOther=mhiData.getDataExtractionGenderOtherValue();
                                s="other:"+strGenderOther;
                            }
                            strGender+=s+((nCount<mhiData.getDataExtractionGender().size())?"|":"");
                            nCount++;
                        }
                        //to get the Gender Other Value chosen in DATA EXTRACTION Toolset and concatenate with Gender
                        /*String strGenderOther=mhiData.getDataExtractionGenderOtherValue();
                        if(strGenderOther!=null && !strGenderOther.isEmpty())
                        {
                            strGender+="other:"+strGenderOther;
                        }*/
                        //to get the Race chosen in DATA EXTRACTION Toolset
                        nCount=1;
                        for(String s:mhiData.getDataExtractionRace())
                        {
                            if(s.equals("Other"))
                            {
                                String strRaceOther=mhiData.getDataExtractionRaceOtherValue();
                                s="other:"+strRaceOther;
                            }
                            strRace+=s+((nCount<mhiData.getDataExtractionRace().size())?"|":"");
                            nCount++;
                        }
                        //to get the Race Other Value chosen in DATA EXTRACTION Toolset and concatenate with Gender
                        /*String strRaceOther=mhiData.getDataExtractionRaceOtherValue();
                        if(strRaceOther!=null && !strRaceOther.isEmpty())
                        {
                            strRace+="other:"+strRaceOther;
                        }*/
                        //to get the Ethnicity chosen in DATA EXTRACTION Toolset
                        nCount=1;
                        for(String s:mhiData.getDataExtractionEthnicity())
                        {
                            if(s.equals("Other"))
                            {
                                String strEthnicityOther=mhiData.getDataExtractionEthnicityOtherValue();
                                s="other:"+strEthnicityOther;
                            }
                            strEthnicity+=s+((nCount<mhiData.getDataExtractionEthnicity().size())?"|":"");
                            nCount++;
                        }
                        //to get the Ethnicity Other Value chosen in DATA EXTRACTION Toolset and concatenate with Gender
                        /*String strEthnicityOther=mhiData.getDataExtractionEthnicityOtherValue();
                        if(strEthnicityOther!=null && !strEthnicityOther.isEmpty())
                        {
                            strEthnicity+="other:"+strEthnicityOther;
                        }*/
                        //to get the Location chosen in DATA EXTRACTION Toolset
                        nCount=1;
                        for(String s:mhiData.getDataExtractionLocation())
                        {
                            if(s.equals("Other"))
                            {
                                String strLocationOther=mhiData.getDataExtractionLocationOtherValue();
                                s="other:"+strLocationOther;
                            }
                            strLocation+=s+((nCount<mhiData.getDataExtractionLocation().size())?"|":"");
                            nCount++;
                        }
                        //to get the Location Other Value chosen in DATA EXTRACTION Toolset and concatenate with Gender
                        /*String strLocationOther=mhiData.getDataExtractionLocationOtherValue();
                        if(strLocationOther!=null && !strLocationOther.isEmpty())
                        {
                            strLocation+="other:"+strLocationOther;
                        }*/
                        //to get the Level Of Care chosen in DATA EXTRACTION Toolset
                        nCount=1;
                         for(String s:mhiData.getDataExtractionLevelOfCare())
                        {
                            if(s.equals("Other"))
                            {
                                String strLevelOfCareOther=mhiData.getDataExtractionLevelOfCareOtherValue();
                                s="other:"+strLevelOfCareOther;
                            }
                            strLevelOfCare+=s+((nCount<mhiData.getDataExtractionLevelOfCare().size())?"|":"");
                            nCount++;
                        }
                        //to get the level of care Other Value chosen in DATA EXTRACTION Toolset and concatenate with Gender
                        /*String strLevelOfCareOther=mhiData.getDataExtractionLevelOfCareOtherValue();
                        if(strLevelOfCareOther!=null && !strLevelOfCareOther.isEmpty())
                        {
                            strLevelOfCare+="other:"+strLevelOfCareOther;
                        }*/
                                              
                        ps.setString(1,Long.toString(genID));
                        ps.setString(2,strAge);
                        ps.setString(3,strSex);
                        ps.setString(4,strGender);
                        ps.setString(5,strRace);
                        ps.setString(6,strEthnicity);
                        ps.setString(7,dataExtractionInclusion);
                        ps.setString(8,dataExtractionExclusion);
                        ps.setString(9,strLocation);
                        ps.setString(10,strLevelOfCare);
                        ps.setString(11,dataExtractionLocationInfo);
                        ps.setString(12,dataExtractionStartDate);
                        ps.setString(13,dataExtractionEndDate);
                        ps.setString(14,dataExtractionFrequency);
                        ps.setString(15,dataExtractionWhatDataToExtract);
                        ps.setString(16,dataExtractionDeliveryLocation);
                        ps.setString(17,dataExtractionDataFormat);
                        ps.setString(18,dataExtractionExternalCollaboration);
                        ps.executeUpdate();
                    }
                    
                    //if toolset equals "Recruitment for Research"
                    if(toolSet.equals("recruitmentforresearch"))
                    {                        
                        //------------------------------------------------sql to insert Recruitment for Research----------------------------------------------------------------------
                        String sql5="Insert into recruitmentforresearch(pi_id,age,sex,gender,race,ethnicity,inclusion,exclusion,location,level_of_care,add_location_info,RECRUITMENT_START,RECRUITMENT_SPAN,RECRUITMENT_METHOD,CONTACT_PERSON) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                        ps= connect.prepareStatement(sql5,Statement.RETURN_GENERATED_KEYS);
                        
                        String strAge = mhiData.getPatRecruitmentAge();
                        String strSex="";
                        String strGender="";
                        String strRace="";
                        String strEthnicity="";
                        String patRecruitmentInclusion=mhiData.getPatRecruitmentInclusion();
                        String patRecruitmentExclusion=mhiData.getPatRecruitmentExclusion();
                        String strLocation="";
                        String strLevelOfCare="";
                        String patRecruitmentLocationInfo=mhiData.getPatRecruitmentLocationInfo();
                        String patRecruitmentStartDate=mhiData.getPatRecruitmentStartDate();
                        String patRecruitmentLength=mhiData.getPatRecruitmentLength();
                        String patRecruitmentContactMethod="";
                        String patRecruitmentContactPerson="";
                        
                        //to get the sex chosen in PatientRegistry Toolset
                        int nCount=1;
                        for(String s:mhiData.getPatRecruitmentSex())
                        {
                            strSex+=s+((nCount<mhiData.getPatRecruitmentSex().size())?"|":"");
                            nCount++;
                        }
                        //to get the Gender chosen in PatientRegistry Toolset
                        nCount=1;
                        for(String s:mhiData.getPatRecruitmentGender())
                        {
                            if(s.equals("Other"))
                            {
                                String strGenderOther=mhiData.getPatRecruitmentGenderOtherValue();
                                s="other:"+strGenderOther;
                            }
                            strGender+=s+((nCount<mhiData.getPatRecruitmentGender().size())?"|":"");
                            
                            nCount++;
                        }
                        //to get the Gender Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*String strGenderOther=mhiData.getPatRecruitmentGenderOtherValue();
                        if(strGenderOther!=null && !strGenderOther.isEmpty())
                        {
                            strGender+="other:"+strGenderOther;
                        }*/
                        //to get the Race chosen in PatientRegistry Toolset
                        nCount=1;
                        for(String s:mhiData.getPatRecruitmentRace())
                        {
                            if(s.equals("Other"))
                            {
                                String strRaceOther=mhiData.getPatRecruitmentRaceOtherValue();
                                s="other:"+strRaceOther;
                            }
                            strRace+=s+((nCount<mhiData.getPatRecruitmentRace().size())?"|":"");
                            
                            nCount++;
                        }
                        //to get the Race Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*String strRaceOther=mhiData.getPatRecruitmentRaceOtherValue();
                        if(strRaceOther!=null && !strRaceOther.isEmpty())
                        {
                            strRace+="other:"+strRaceOther;
                        }*/
                        //to get the Ethnicity chosen in PatientRegistry Toolset
                        nCount=1;
                         for(String s:mhiData.getPatRecruitmentEthnicity())
                        {
                            if(s.equals("Other"))
                            {
                                String strEthnicityOther=mhiData.getPatRecruitmentEthnicityOtherValue();
                                s="other:"+strEthnicityOther;
                            }
                            strEthnicity+=s+((nCount<mhiData.getPatRecruitmentEthnicity().size())?"|":"");
                            nCount++;
                        }
                        //to get the Ethnicity Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*String strEthnicityOther=mhiData.getPatRecruitmentEthnicityOtherValue();
                        if(strEthnicityOther!=null && !strEthnicityOther.isEmpty())
                        {
                            strEthnicity+="other:"+strEthnicityOther;
                        }*/
                        //to get the Location chosen in PatientRegistry Toolset
                        nCount=1;
                        for(String s:mhiData.getPatRecruitmentLocation())
                        {
                            if(s.equals("Other"))
                            {
                                String strLocationOther=mhiData.getPatRecruitmentLocationOtherValue();
                                s="other:"+strLocationOther;
                            }
                            strLocation+=s+((nCount<mhiData.getPatRecruitmentLocation().size())?"|":"");
                            nCount++;
                        }
                        //to get the Location Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*String strLocationOther=mhiData.getPatRecruitmentLocationOtherValue();
                        if(strLocationOther!=null && !strLocationOther.isEmpty())
                        {
                            strLocation+="other:"+strLocationOther;
                        }*/
                        //to get the Level Of Care chosen in PatientRegistry Toolset
                        nCount=1;
                        for(String s:mhiData.getPatRecruitmentLevelOfCare())
                        {
                            if(s.equals("Other"))
                            {
                                String strLevelOfCareOther=mhiData.getPatRecruitmentLevelOfCareOtherValue();
                                s="other:"+strLevelOfCareOther;
                            }
                            strLevelOfCare+=s+((nCount<mhiData.getPatRecruitmentLevelOfCare().size())?"|":"");
                            nCount++;
                        }
                        //to get the level of care Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*String strLevelOfCareOther=mhiData.getPatRecruitmentLevelOfCareOtherValue();
                        if(strLevelOfCareOther!=null && !strLevelOfCareOther.isEmpty())
                        {
                            strLevelOfCare+="other:"+strLevelOfCareOther;
                        }*/
                        //to get the Level Of Care chosen in PatientRegistry Toolset
                        nCount=1;
                        for(String s:mhiData.getPatRecruitmentContactMethod())
                        {
                            if(s.equals("Study Team Member Notification When Appropriate Patient Checks In"))
                            {
                                int pCount=1;
                                for(String c:mhiData.getPatRecruitmentContactPerson())
                                {
                                    patRecruitmentContactPerson+=c+((pCount<mhiData.getPatRecruitmentContactPerson().size())?"|":"");
                                    pCount++;
                                }
                            }
                            msg+=patRecruitmentContactPerson;
                            patRecruitmentContactMethod+=s+((nCount<mhiData.getPatRecruitmentContactMethod().size())?"|":"");
                            nCount++;
                        }
                        msg+=patRecruitmentContactMethod;
                        //to get the level of care Other Value chosen in PatientRegistry Toolset and concatenate with Gender
                        /*nCount=1;
                        for(String s:mhiData.getPatRecruitmentContactPerson())
                        {
                            if(s.equals("patRecruitmentContactPI"))
                            {
                                String strContactPI="Contact: PI";
                                s=strContactPI;
                            }
                            if(s.equals("patRecruitmentContactSubmitter"))
                            {
                                String strContactPI="Contact: Submitter";
                                s=strContactPI;
                            }
                        strPatRecruitmentContactPerson+=s+((nCount<mhiData.getPatRecruitmentContactPerson().size())?"|":"");
                        }*/
                        /*if(String s:mhiData.getPatRecruitmentContactPerson())
                        {
                            patRecruitmentContactPerson+=s+((nCount<mhiData.getPatRecruitmentContactPerson().size())?"|":"");
                            nCount++;
                        }        
                        */
                        
                        ps.setString(1,Long.toString(genID));
                        ps.setString(2,strAge);
                        ps.setString(3,strSex);
                        ps.setString(4,strGender);
                        ps.setString(5,strRace);
                        ps.setString(6,strEthnicity);
                        ps.setString(7,patRecruitmentInclusion);
                        ps.setString(8,patRecruitmentExclusion);
                        ps.setString(9,strLocation);
                        ps.setString(10,strLevelOfCare);
                        ps.setString(11,patRecruitmentLocationInfo);
                        ps.setString(12,patRecruitmentStartDate);
                        ps.setString(13,patRecruitmentLength);
                        ps.setString(14,patRecruitmentContactMethod);
                        ps.setString(15,patRecruitmentContactPerson);
                     
                        msg+="before:";
                        ps.executeUpdate();
                    }
                    
                }
                

                                             
                
                connect.commit(); //commit transaction
                ps.close();             
             
                
                //Select Query below                  
                  
                stmt=connect.createStatement();
                //msg+="statement created";

                sql="Select pi_name,pi_jhedid,pi_email from mhirequest_pi";
                ResultSet rs= stmt.executeQuery(sql);    
                while(rs.next())
                {
                    MHIRequestData reqData=new MHIRequestData();
                    reqData.setPiName(rs.getString(1));
                    reqData.setPiEmail(rs.getString(2));
                    reqData.setPiJhed(rs.getString(3));            
                    //Add to list
                    reqDataList.add(reqData);

                }
                model.addObject("reqList",reqDataList);              
                rs.close();
                stmt.close();
               
               }
                
                catch(Exception e)
                {
                    //log
                    msg+=e.toString();
                    msg+=e.getStackTrace().toString();
                }                

                finally
                {
                    try
                    {
                        if (connect!=null)connect.close();
                    }
                    catch(Exception e)
                    {
                        //log
                    }   
                    connect=null; //garbage collect
                }  
                
                model.addObject("message","message: "+msg);
                
                model.setViewName("test");                
		return model;

	}
         
         
         /*
         
         
         @RequestMapping(value = "/doMHIRequestTest", method = RequestMethod.POST)
         public ModelAndView doMHIRequestTest(MHIRequestData mhiData) { 
		ModelAndView model = new ModelAndView();   
		model.addObject("inputData",mhiData);
                String pwd=dataSource.getPassword();
                String msg="";
               
		
                //DB Query following
                List<DBUsers> dbUserList=new ArrayList<DBUsers>();
                //Get Connection
                Connection connect=null;
                Statement stmt=null;
                try
                {
                    connect=dataSource.getConnection();
                    stmt=connect.createStatement();
                    //msg+="statement created";
                     
                    String sql="Select username,password from users";
                    ResultSet rs= stmt.executeQuery(sql);
                    msg+="resultset created";
                    while(rs.next())
                    {
                        DBUsers dbUsers= new DBUsers(rs.getString(1),rs.getString(2));
                        dbUserList.add(dbUsers);
                        msg+=rs.getString(1)+"\r\n";
                    }
                     model.addObject("userList",dbUserList);
                    rs.close();
                    stmt.close();
                  //insert query test
                  PreparedStatement ps;
                  sql="Insert into mhirequesttest(submitter_name,submitter_jhedid,submitter_email) values(?,?,?)"; 
                  
                  connect.setAutoCommit(false);//begin transaction
                  ps=connect.prepareStatement(sql);
                  ps.setString(1, mhiData.getPiName());
                  ps.setString(2, mhiData.getPiJhed());
                  ps.setString(3, mhiData.getPiEmail());                  
                  ps.executeUpdate();
                  connect.commit(); //commit transaction
                  ps.close();
                
                
                }
                
                catch(Exception e)
                {
                    //log
                    msg+=e.toString();
                }                

                finally
                {
                    try
                    {
                        if (connect!=null)connect.close();
                    }
                    catch(Exception e)
                    {
                        //log
                    }   
                    connect=null; //garbage collect
                }  
                
                model.addObject("message","message: "+msg);
                
                model.setViewName("test");                
		return model;

	}
         */
    
        /*******Static Page Controllers Below***********************/
        
        @RequestMapping(value = "/index", method = RequestMethod.GET)
	public String indexPage() {
		return "index";
	}
        @RequestMapping(value = "/patient", method = RequestMethod.GET)
	public String patientPage() {
		return "patient";
	}
        @RequestMapping(value = "/provider", method = RequestMethod.GET)
	public String providerPage() {
		return "provider";
	}
        
        @RequestMapping(value = "/about", method = RequestMethod.GET)
	public String aboutPage() {
		return "about";
	}
        
        @RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faqPage() {
		return "faq/index";
	}
        
        @RequestMapping(value = "/request", method = RequestMethod.GET)
	public String requestPage() {
		return "request/index";
	}
        
        @RequestMapping(value = "/track", method = RequestMethod.GET)
	public String trackPage() {
		return "track/index";
	}
        @RequestMapping(value = "/resources", method = RequestMethod.GET)
	public String resourcePage() {
		return "resources/index";
	}
        
        @RequestMapping(value = "patresource", method = RequestMethod.GET)
	public String patresourcePage() {
		return "resources/patresource";
	}
        
        @RequestMapping(value = "proresource", method = RequestMethod.GET)
	public String proresourcePage() {
		return "resources/proresource";
	}
        
        @RequestMapping(value = "/library", method = RequestMethod.GET)
	public String libraryPage() {
		return "library/index";
	}
        
        
        @RequestMapping(value = "/member")
	public ModelAndView memberPage() {

	       ModelAndView model = new ModelAndView("welcome");             
               return model;
        }
        
        //Followings are for testing purpose
        @RequestMapping(value = "/requestTest", method = RequestMethod.GET)
	public String requestTestPage() {
		return "request/index_test";
	}
                


}