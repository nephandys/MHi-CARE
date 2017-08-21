package edu.jhu.mhicareweb;

import edu.jhu.mhicareweb.business.BizManager;
import edu.jhu.mhicareweb.business.Credential;
import edu.jhu.mhicareweb.business.MHIRequestData;
import edu.jhu.mhicareweb.business.MHIRequestDataTest;
import edu.jhu.mhicareweb.entities.*;
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
		/*model.addObject("message",mhiData.getSubname()+mhiData.getSubjhed() + mhiData.getSubemail()+mhiData.getDescription());*/
		model.setViewName("welcome");
		return model;

	}
         
         
         
         //eg. if auto bind needed @ModelAttribute("inputData") MHIRequestDataTest mhiData
         @RequestMapping(value = "/doMHIRequestTest", method = RequestMethod.POST)
         public ModelAndView doMHIRequestTest(MHIRequestData mhiData) { 
		ModelAndView model = new ModelAndView();   
		model.addObject("inputData",mhiData);
                model.addObject("message","This is test");
		model.setViewName("test");
		return model;

	}
    
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