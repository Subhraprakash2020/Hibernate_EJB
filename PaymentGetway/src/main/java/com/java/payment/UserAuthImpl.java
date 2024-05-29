package com.java.payment;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class UserAuthImpl {
	SessionFactory sf;
	Session session;
	
//	public String loginUser(UserAuth userAuth) {
//		sf = SessionHelper.getConnection();
//		session = sf.openSession();
//		Criteria cr = session.createCriteria(UserAuth.class);
//		cr.add(Restrictions.eq("userName", userAuth.getUserName()));
//		cr.add(Restrictions.eq("password", userAuth.getPassword()));
//		cr.setProjection(Projections.rowCount());
//		Long count = (Long) cr.uniqueResult();
//		if(count == 1) {
//			return "SubscriptionPlan.jsp?faces-redirect=true";
//		}
//		else {
//			return "Login.jsp?faces-redirect=true";
//		}
//	}
	public String loginUser(UserAuth userAuth) throws ParseException {
	    sf = SessionHelper.getConnection();
	    session = sf.openSession();
	    
	    // Check user authentication and fetch user ID
	    Criteria cr = session.createCriteria(UserAuth.class);
	    cr.add(Restrictions.eq("userName", userAuth.getUserName()));
	    cr.add(Restrictions.eq("password", userAuth.getPassword()));
	    UserAuth authenticatedUser = (UserAuth) cr.uniqueResult();
	    
	    if (authenticatedUser != null) {
	        // Fetch user ID from authenticated user
	        int userId = authenticatedUser.getUserId();
	        System.out.println("User authenticated. Fetching plan details for user ID: " + userId);

	        // Fetch plan details using the user ID
	        Criteria planCriteria = session.createCriteria(Plandetails.class);
	        planCriteria.add(Restrictions.eq("userId", userId));
	        Plandetails planDetails = (Plandetails) planCriteria.uniqueResult();
	        
	        if (planDetails != null) {
	            System.out.println("PlanDetails is not null");
	            System.out.println("Plan Type: " + planDetails.getPlan());
	            if ("Monthly".equalsIgnoreCase(planDetails.getPlan())) {
	                // Parse start date string to Date object
	                String startDateString = planDetails.getPlanStartTime();
	                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	                try {
	                    Date startDate = dateFormat.parse(startDateString);
	                    Date currentDate = new Date();
	                    long diffInMillies = currentDate.getTime() - startDate.getTime();
	                    long diffInDays = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
	                    
	                    if (diffInDays <= 30) {
	                        return "Dashboard.jsp?faces-redirect=true";
	                    }
	                } catch (ParseException e) {
	                    e.printStackTrace();
	                    // Handle parsing exception
	                }
	            } else {
	                System.out.println("Plan is not Monthly");
	            }
	        } else {
	            System.out.println("PlanDetails is null");
	        }
	        return "SubscriptionPlan.jsp?faces-redirect=true";
	    } else {
	        return "Login.jsp?faces-redirect=true";
	    }

}
	}
