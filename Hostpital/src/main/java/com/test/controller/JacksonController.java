package com.test.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

//import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.test.dao.AppointmentDao;
import com.test.domain.Appointment;
import com.test.services.AppointmentService;


@Controller
@RequestMapping("/appointment/json")
public class JacksonController {
	
	@Autowired
	AppointmentService appointmentService;
	
	
	@RequestMapping(value="/fulldata")
	public @ResponseBody String getInJSON() {

		List<Appointment> appointments = appointmentService.loadAll();
		
		StringBuilder string = new StringBuilder();
		
		for (Appointment appointment : appointments) {
			com.fasterxml.jackson.databind.ObjectMapper mapperObj = new com.fasterxml.jackson.databind.ObjectMapper();
	        try {
	            String jsonStr = mapperObj.writeValueAsString(appointment);
	            string.append(jsonStr);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
		}
		return string.toString();
	}
		
		
		
		
	/*	List<Scholar> scholars=new ArrayList<>();
		String lastName = scholar.getLastName();
		scholars = scholarService.loadByLastName(lastName);
		StringBuilder string = new StringBuilder();
		
		for (Scholar scholar2 : scholars) {
			ObjectMapper mapperObj = new ObjectMapper();
	        try {
	            String jsonStr = mapperObj.writeValueAsString(scholar2);
	            string.append(jsonStr);
	            //string.append(System.lineSeparator());
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
		}
		
		
		return string.toString();
*/
	}



