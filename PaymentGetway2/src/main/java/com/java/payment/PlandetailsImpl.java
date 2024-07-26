package com.java.payment;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Map;

import javax.faces.context.FacesContext;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;


public class PlandetailsImpl {
	SessionFactory sf;
	Session session;

	
	
	public String addBalance(Plandetails avlBalance) {
		sf=SessionHelper.getConnection();
		session=sf.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(avlBalance);
		transaction.commit();
		return"Record Inserted....";
	}
	
	public String plan1() {
		Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		sessionMap.put("company","NetFlix");
		sessionMap.put("plan", "Monthly");
		sessionMap.put("gst", "3.5");
		sessionMap.put("amount", "$30");
		return "SubscriptionPayment.jsp?faces-redirect=true";
	}
	
	public String ClaimPlanMonthly() {
		Plandetails plandetails = new Plandetails();
		System.out.println("Inside method");
		sf=SessionHelper.getConnection();
		session=sf.openSession();
		Transaction trans = session.beginTransaction();
		double monthlyPlanPrice = 30;
		Criteria cr = session.createCriteria(Plandetails.class);
		cr.add(Restrictions.eq("userId", plandetails.getUserId()));
		 plandetails = (Plandetails) cr.uniqueResult();
		if(plandetails != null) {
			if(plandetails.getBalance()> monthlyPlanPrice) {
				plandetails.setPlan("Monthly");
				plandetails.setPlanStartTime(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
				session.update(plandetails);
			}
		}
		trans.commit();
		return "SubscriptionPlan.jsp?faces-redirect=true";
	}
	
}
