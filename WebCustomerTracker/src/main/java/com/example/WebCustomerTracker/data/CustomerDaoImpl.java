package com.example.WebCustomerTracker.data;

import com.example.WebCustomerTracker.entity.Customer;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class CustomerDaoImpl implements CustomerDao {

    @Autowired
    private LocalSessionFactoryBean localSessionFactoryBean;


    @Override
    @Transactional
    public List<Customer> getCustomers() {

        Session currentSession = localSessionFactoryBean.getObject().getCurrentSession();
        Query<Customer> theQuery = currentSession.createQuery("select c from Customer c", Customer.class);

        List<Customer> customers = theQuery.getResultList();

        return customers;
    }


}
