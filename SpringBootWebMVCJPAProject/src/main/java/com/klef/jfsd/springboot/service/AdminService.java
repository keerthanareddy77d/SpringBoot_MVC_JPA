package com.klef.jfsd.springboot.service;

import java.util.*;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
public interface AdminService
{
	public List<Employee> viewallemps();
	public String deleteemp(int eid);
	public Employee viewempbyid(int eid);
	public Admin checkadminlogin(String username,String pwd);
	
}
