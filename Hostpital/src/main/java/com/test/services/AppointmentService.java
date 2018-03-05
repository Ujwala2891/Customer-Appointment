package com.test.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.dao.AppointmentDao;
import com.test.domain.Appointment;

@Service
public class AppointmentService {

	@Autowired
	AppointmentDao appointmentdao;
	
	public void addAppointment(Appointment appointment)
	{
		appointmentdao.saveApp(appointment);
	}
	
	public List<Appointment> loadAll()
	{
		List<Appointment> loadAll = appointmentdao.loadAll();
		return loadAll;
	}
	
	public List<Appointment> searchAppointments(String description)
	{
	List<Appointment> loadAll = appointmentdao.searchAppointment(description);
		return loadAll;
	}
	
}
