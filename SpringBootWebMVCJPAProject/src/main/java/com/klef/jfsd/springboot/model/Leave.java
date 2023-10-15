package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "leave")
public class Leave 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="emp_id")
	private int id;
	
	@Column(name="emp_name",nullable=false,length = 50)
	private String name;
	
	@Column(name="emp_subject",nullable=false,length = 200)
	private String subject;
	
	@Column(name="emp_sd",nullable=false,length = 20)
	private String sd;
	
	@Column(name="emp_ed",nullable=false,length = 20)
	private String ed;
	
	@Column(name="emp_message",nullable=false,length = 200)
	private String message;
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public String getSd() {
		return sd;
	}


	public void setSd(String sd) {
		this.sd = sd;
	}


	public String getEd() {
		return ed;
	}


	public void setEd(String ed) {
		this.ed = ed;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}

    
	
	@Override
	public String toString() {
		return "Leave [id=" + id + ", name=" + name + ", subject=" + subject + ", sd=" + sd + ", ed=" + ed
				+ ", message=" + message + "]";
	}

}
