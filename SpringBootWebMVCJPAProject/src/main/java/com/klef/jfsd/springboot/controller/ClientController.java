package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private EmployeeService employeeService;
	
//	@GetMapping("/")
//	public String main()
//	{
//		return "index";
//	}
	
	@GetMapping("/")
	public String main()
	{
		return "MainNavBar";
	}
	@GetMapping("/login")
	public String login()
	{
		return "login";
	}
	
	@GetMapping("/reqleave")
	public String reqleave()
	{
		return "reqleave";
	}
	
	@GetMapping("/leavehistory")
	public String leavehistory()
	{
		return "leavehistory";
	}
	
	@GetMapping("/empaddsuc")
	public String empaddsuc()
	{
		return "empaddsuc";
	}
	@GetMapping("/cancelleave")
	public String cancelleave()
	{
		return "cancelLeave";
	}
	
	@GetMapping("adminlogin")//URI & method name can be different
	public ModelAndView adminlogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checadminlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String username = request.getParameter("username");
	     String pwd = request.getParameter("pwd");
	     
	    Admin ad =  adminService.checkadminlogin(username, pwd);
	    
	    if(ad!=null)
	    {
	      mv.setViewName("adminhome");
	    }
	    else
	    {
	      mv.setViewName("adminlogin");
	      mv.addObject("message","Login Failed");
	    }
	    return mv;
	}
	
	@GetMapping("emplogin")
	public ModelAndView emplogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("emplogin");
		return mv;
	}
	
	@PostMapping("checkemplogin")
	public ModelAndView checkemplogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     
	    Employee emp =  employeeService.checkemplogin(email, pwd);
	    
	    if(emp!=null)
	    {
	    	// SESSION 
	    	
	    	HttpSession session = request.getSession();
	    	
	    	session.setAttribute("eid",emp.getId());
	    	session.setAttribute("ename", emp.getName());
	    	
	    	// SESSION
	      mv.setViewName("emphome");
	    }
	    else
	    {
	      mv.setViewName("emplogin");
	      mv.addObject("message","Login Failed");
	    }
	    return mv;
	}
	
	@GetMapping("empreg")
	public ModelAndView empregistration()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("empreg");
		return mv;
	}
	@PostMapping("insertemp")
	public ModelAndView insertaction(HttpServletRequest request,HttpServletResponse response)
	{
		String msg=null;
		ModelAndView mv=new ModelAndView();
		try
		{
			String name = request.getParameter("name");
		    String gender = request.getParameter("gender");
		    String dob = request.getParameter("dob");
		    String dept = request.getParameter("dept");
		    String sal = request.getParameter("salary");
		    double salary = Double.parseDouble(sal);
		    String email = request.getParameter("email");
		    String pwd = request.getParameter("pwd");
		    String location = request.getParameter("location");
		    String contact = request.getParameter("contact");
		    
		    Employee emp=new Employee();
		    emp.setName(name);
		    emp.setGender(gender);
		    emp.setDateofbirth(dob);
		    emp.setDepartment(dept);
		    emp.setSalary(salary);
		    emp.setEmail(email);
		    emp.setPassword(pwd);
		    emp.setLocation(location);
		    emp.setContact(contact);
		    emp.setActive(true);
		    
		    msg=employeeService.addemployee(emp);
		    mv.setViewName("empaddsuc");
			mv.addObject("message",msg);
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}

		
		return mv;
	}
	@GetMapping("viewallemps")
	public ModelAndView viewemps()
	{
		List<Employee> emplist=adminService.viewallemps();
		ModelAndView mv=new ModelAndView("viewallemps");
		mv.addObject("empdata",emplist);
		return mv;
	}
	@GetMapping("view")
	  public ModelAndView viewempdemo(@RequestParam("id") int eid)
	  {
	    Employee emp = adminService.viewempbyid(eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewempbyid");
	    mv.addObject("emp", emp);
	    return mv;
	  }
	  
	  @GetMapping("delete/{id}")
	  public String deleteaction(@PathVariable("id") int eid)
	  {
	    adminService.deleteemp(eid);
	    return "redirect:/deleteemp";
	  }
	  
	  @GetMapping("deleteemp")
	  public ModelAndView deleteemployeedemo()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("deleteemp"); //deleteemp is jsp file name
	    List<Employee> emplist =  adminService.viewallemps();
	    mv.addObject("empdata", emplist);
	    return mv;
	  }
	  
	  @GetMapping("adminhome")
	  public ModelAndView adminhome()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("adminhome");
	    return mv;
	  }
	  
	  @GetMapping("emphome")
	  public ModelAndView emphome(HttpServletRequest req)
	  {
		  HttpSession session = req.getSession();
		  int eid = (int) session.getAttribute("eid");
		  String ename = (String) session.getAttribute("ename");
		  
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("emphome");
	    
	    
	      mv.addObject("eid",eid);
	      mv.addObject("ename",ename);
	    
	    
	    return mv;
	  }
	  
	  
	  @GetMapping("updateprofile")
	  public ModelAndView updateemp(HttpServletRequest request)
	  {
	    ModelAndView mv = new ModelAndView();
	    
	    HttpSession session = request.getSession();
	    
	    mv.setViewName("updateprofile");
	    
	    mv.addObject("eid", session.getAttribute("eid"));
	    mv.addObject("ename", session.getAttribute("ename"));
	    
	    int id = (int) session.getAttribute("eid");
	    
	    Employee emp = employeeService.viewemployeebyid(id);
	    
	    mv.addObject("emp", emp);
	    
	    return mv;
	  }
	  
	  @PostMapping("update")
	  public ModelAndView updateaction(HttpServletRequest request)
	  {
	    String msg = null;
	    
	    ModelAndView mv = new ModelAndView();
	    
	      HttpSession session = request.getSession();
	    
	    mv.addObject("eid", session.getAttribute("eid"));
	    mv.addObject("ename", session.getAttribute("ename"));
	    
	    int id = (int) session.getAttribute("eid");
	    
	   try
	   {
	     String name = request.getParameter("name");
	     String dob = request.getParameter("dob");
	     String dept = request.getParameter("dept");
	     String sal = request.getParameter("salary");
	     double salary = Double.parseDouble(sal);
	     String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     String location = request.getParameter("location");
	     String contact = request.getParameter("contact");
	     
	     Employee emp = new Employee();
	      emp.setId(id);
	      emp.setName(name);
	      emp.setDateofbirth(dob);
	      emp.setDepartment(dept);
	      emp.setSalary(salary);
	      emp.setEmail(email);
	      emp.setPassword(pwd);
	      emp.setLocation(location);
	      emp.setContact(contact);
	      
	      
	      msg = employeeService.updateemployee(emp);
	      
	      mv.setViewName("emplogin");
	      mv.addObject("message",msg);
	     
	   }
	   catch(Exception e)
	   {
	     msg = e.getMessage();
	     
	     mv.setViewName("updateerror");
	      mv.addObject("message",msg);
	   }
	    return mv;

	  }
	  
	  
	  
	  
	
}
