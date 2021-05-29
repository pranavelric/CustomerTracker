package com.example.WebCustomerTracker.data;

import com.example.WebCustomerTracker.entity.Customer;

import java.util.List;

public interface CustomerDao {

    public List<Customer> getCustomers();

    public void saveCustomer(Customer customer);
}
