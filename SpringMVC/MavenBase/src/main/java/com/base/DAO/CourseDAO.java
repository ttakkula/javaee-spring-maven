/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.base.DAO;

import com.base.models.Course;
import com.base.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Ohjelmistokehitys
 */
public class CourseDAO {
    /**
     * This method adds new teacher into database
     * @param enroll
     * @throws java.lang.Exception
     */
    public static void addCourse(Course enroll) throws Exception{
        //Create session to our database
        Session session = HibernateUtil.getSessionFactory().openSession();
        //Because we are writing to database we need transaction besides session
        Transaction transaction = session.beginTransaction();
        //Add teacher to database
        session.save(enroll);
        //End transaction
        transaction.commit();
        //Release session
        session.close();
    }
    public static List<Course> getCourse() throws Exception{
        Session session = HibernateUtil.getSessionFactory().openSession();
        //Use HQL query language here - NOT SQL!!!
        Query query = session.createQuery("from Course");
        List<Course> lst = query.list();
        session.close();
        //Return list of teachers
        return lst;
    }
}
