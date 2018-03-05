package com.test.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.domain.Appointment;

@Repository
@Transactional
public class AppointmentDao {

	@Autowired
	private SessionFactory sessionFactory;
	public Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public void saveApp(Appointment appointment)
	{
		
		getSession().saveOrUpdate(appointment);
		getSession().flush();
	}
	
	public List<Appointment> loadAll()
	{
		
		Criteria criteria=getSession().createCriteria(Appointment.class);
		List<Appointment> appointments=criteria.list();
		return appointments;
	}
	
	public List<Appointment> searchAppointment(String description)
	{
		Criteria criteria=getSession().createCriteria(Appointment.class).add(Restrictions.eq("description", description));
		List<Appointment> listAppointments = criteria.list();
		return listAppointments;
	}
}
