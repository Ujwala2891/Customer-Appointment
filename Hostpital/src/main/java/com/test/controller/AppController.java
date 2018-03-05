package com.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.test.domain.Appointment;
import com.test.services.AppointmentService;

@Controller

public class AppController {
	
	@Autowired
	AppointmentService appointmentService;

/*	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView loadHomePage()
	{
		ModelAndView mv=new ModelAndView("index");
		List<Appointment> appointments = appointmentService.loadAll();
		mv.addObject("listappointments", appointments);
		return mv;
	}*/
	
	@RequestMapping(value = "/", method=RequestMethod.GET)
	public ModelAndView addAppointment()
	{
		ModelAndView mv=new ModelAndView("display");
		mv.addObject("addAppointment", new Appointment()); 
		List<Appointment> appointments = appointmentService.loadAll();
		mv.addObject("listappointments", appointments);
		return mv;
	}
	
	
	@RequestMapping(value = "/create",method=RequestMethod.POST)
	public ModelAndView createAppointment(@ModelAttribute Appointment addAppointment)
	{
		ModelAndView mv = new ModelAndView("display");
		appointmentService.addAppointment(addAppointment);
		mv.addObject("addAppointment", addAppointment);
		List<Appointment> appointments = appointmentService.loadAll();
		mv.addObject("listappointments", appointments);
		return mv;
		
	}
		
}
