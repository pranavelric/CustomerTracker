package com.example.WebCustomerTracker.service;

import com.example.WebCustomerTracker.entity.Customer;

import java.util.List;

public interface CustomerService {
    public List<Customer> getCustomers();
    public void saveCustomer(Customer customer);

}
