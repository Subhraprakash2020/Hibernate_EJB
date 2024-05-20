package com.java.payment;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class UserAuthImpl {
	SessionFactory sf;
	Session session;
	
	public String loginUser(UserAuth userAuth) {
		sf = SessionHelper.getConnection();
		session = sf.openSession();
		Criteria cr = session.createCriteria(UserAuth.class);
		cr.add(Restrictions.eq("userName", userAuth.getUserName()));
		cr.add(Restrictions.eq("password", userAuth.getPassword()));
		cr.setProjection(Projections.rowCount());
		Long count = (Long) cr.uniqueResult();
		if(count == 1) {
			return "SubscriptionPlan.jsp?faces-redirect=true";
		}
		else {
			return "Login.jsp?faces-redirect=true";
		}
	}
}
