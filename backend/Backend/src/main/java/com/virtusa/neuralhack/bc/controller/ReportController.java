package com.virtusa.neuralhack.bc.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.neuralhack.bc.dao.dataDAO;
import com.virtusa.neuralhack.bc.model.Data;
import com.virtusa.neuralhack.bc.service.ViewService;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Controller
public class ReportController {
	
	Integer id;
	String name;
	@Autowired
	dataDAO dataDAO;
	
  	@Autowired
	ViewService service;
	
	@RequestMapping("/teacher")
	public String showHome() {
		//System.out.println("here");
		return "home";
	}
	
	
	@RequestMapping("/student")
	public String studshowHome() {
		return "student";
	}
	
	@RequestMapping("/index")
	public String index(Data data) {
		id = data.getTestid();
		return "index";
	}
	@CrossOrigin(origins = "http://localhost:8080")
	@RequestMapping("/listStudents")
	@GetMapping("/listStudents")
	public ModelAndView list() {
		List<String> list =  service.getAllStudents();
		ModelAndView mv=new ModelAndView("view");
		
		mv.addObject("name",list);
		return mv;
	}
	
	@CrossOrigin(origins = "http://localhost:8080")
	@RequestMapping("/linechartdata")
	@ResponseBody
	public String getDataFromDB(){
		List<Data> dataList = service.getStudentsbyid(id);
		System.out.println(dataList);
		JsonArray jsonArrayUname = new JsonArray();
		JsonArray jsonArrayMarks = new JsonArray();
		JsonObject jsonObject = new JsonObject();
		dataList.forEach(data->{
			// jsonArrayUname.add(data.getUname());
			jsonArrayUname.add(data.getUname());
			jsonArrayMarks.add(data.getMarks());
		});
		jsonObject.add("uname", jsonArrayUname);
		jsonObject.add("marks", jsonArrayMarks);
		return jsonObject.toString();
	}
	
	@RequestMapping("/individualreport")
	public String report(String uname) {
		//System.out.println(uname);
		name= uname;
		return "individual";
	}
	
	@CrossOrigin(origins = "http://localhost:8080")
	@RequestMapping("/individualstuddata")
	@ResponseBody
	public String getData(){
		List<Data> dataList = service.getStudentsbyname(name);
		System.out.println(dataList);
		JsonArray jsonArrayTestid = new JsonArray();
		JsonArray jsonArrayMarks = new JsonArray();
		JsonObject jsonObject = new JsonObject();
		dataList.forEach(data->{
			jsonArrayTestid.add(data.getTestid());
			jsonArrayMarks.add(data.getMarks());
		});
		jsonObject.add("testid", jsonArrayTestid);
		jsonObject.add("marks", jsonArrayMarks);
		return jsonObject.toString();
	}
	
	
}
