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
	    System.out.println("Inside method");
	    SessionFactory sf = SessionHelper.getConnection();
	    Session session = sf.openSession();
	    Transaction trans = session.beginTransaction();
	    
	    double monthlyPlanPrice = 30;
	    Plandetails plandetails = null;
	    int userId = 2;
	    
	    try {
	        Criteria cr = session.createCriteria(Plandetails.class);
	        cr.add(Restrictions.eq("userId", userId));
	        plandetails = (Plandetails) cr.uniqueResult();
	        
	        if (plandetails != null) {
	            if (plandetails.getBalance() >= monthlyPlanPrice) {
	                plandetails.setBalance(plandetails.getBalance() - monthlyPlanPrice); // Reduce the balance by 30
	                plandetails.setPlan("Monthly");
	                plandetails.setPlanStartTime(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
	                session.update(plandetails);
	                trans.commit();
	                return "SubscriptionPlan.jsp?faces-redirect=true";
	            } else {
	                trans.rollback();
	                return "Amount is less than the required monthly plan price.";
	            }
	        } else {
	            trans.rollback();
	            return "User ID not found.";
	        }
	    } catch (Exception e) {
	        if (trans != null) trans.rollback();
	        e.printStackTrace();
	        return "Error while processing the subscription.";
	    } finally {
	        session.close();
	    }
	}

	
	public String plan2() {
		System.out.println("Inside plan");
		return "SubscriptionPlan.jsp?faces-redirect=true";

	}
	
}
