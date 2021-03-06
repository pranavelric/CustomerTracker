package com.example.WebCustomerTracker.data;

import com.example.WebCustomerTracker.entity.Customer;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDaoImpl implements CustomerDao {

    @Autowired
    private LocalSessionFactoryBean localSessionFactoryBean;


    @Override
    public List<Customer> getCustomers() {

        Session currentSession = localSessionFactoryBean.getObject().getCurrentSession();
        Query<Customer> theQuery = currentSession.createQuery("select c from Customer c", Customer.class);

        List<Customer> customers = theQuery.getResultList();

        return customers;
    }

    @Override
    public void saveCustomer(Customer customer) {
        Session currentSession = localSessionFactoryBean.getObject().getCurrentSession();
        currentSession.saveOrUpdate(customer);

    }

    @Override
    public Customer getCustomer(int id) {
        Session currentSession = localSessionFactoryBean.getObject().getCurrentSession();
        Customer customer = currentSession.get(Customer.class, id);

        return customer;
    }

    @Override
    public void deleteCustomer(int id) {
        Session currentSession = localSessionFactoryBean.getObject().getCurrentSession();
        Query query = currentSession.createQuery("Delete from  Customer  where  id=:id");
        query.setParameter("id", id);
        query.executeUpdate();
    }

    @Override
    public List<Customer> earchCustomers(String theSearchName) {
        Session currentSession = localSessionFactoryBean.getObject().getCurrentSession();


        Query<Customer> theQuery = null;

        if (theSearchName != null && theSearchName.trim().length() > 0) {
            // search for firstName or lastName ... case insensitive
            theQuery =currentSession.createQuery("SELECT c from Customer c where lower(c.firstName) like :theName or lower(c.lastName) like :theName", Customer.class);
            theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
        }
        else {
            // theSearchName is empty ... so just get all customers
            theQuery =currentSession.createQuery("select c from Customer c", Customer.class);

        }

        // execute query and get result list
        List<Customer> customers = theQuery.getResultList();


        // return the results
        return customers;
    }


}
