package email;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import entity.UserSignUp;
import util.HibernateUtil;

public class HibernateSaveUser {

	public HibernateSaveUser() {

	}

	public static void saveuserTemp(String veri_token, String userName) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactotry();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		UserSignUp signUp = new UserSignUp();
		signUp.setUser_name(userName);
		signUp.setVeri_token(veri_token);
		session.save(signUp);
		tx.commit();
		session.close();
	}
}
