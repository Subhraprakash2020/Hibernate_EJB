package com.java.payment;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class AvlBalanceImpl {
	SessionFactory sf;
	Session session;
	

	public String addBalance(AvailableBalance avlBalance) {
		sf=SessionHelper.getConnection();
		session=sf.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(avlBalance);
		transaction.commit();
		return"Record Inserted....";
	}

}
