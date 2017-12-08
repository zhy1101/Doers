package com.doers.utils;

import java.io.PrintStream;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils
{
  private static SessionFactory sf;

  static
  {
    Configuration conf = new Configuration().configure();

    sf = conf.buildSessionFactory();
  }

  public static Session openSession()
  {
    Session session = sf.openSession();

    return session;
  }

  public static Session getCurrentSession()
  {
    Session session = sf.getCurrentSession();

    return session;
  }
  public static void main(String[] args) {
    System.out.println(openSession());
  }
}
