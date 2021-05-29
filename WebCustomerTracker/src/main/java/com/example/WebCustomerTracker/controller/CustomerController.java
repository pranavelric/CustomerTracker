package com.example.WebCustomerTracker.controller;

import com.example.WebCustomerTracker.data.CustomerDao;
import com.example.WebCustomerTracker.data.CustomerDaoImpl;
import com.example.WebCustomerTracker.entity.Customer;
import com.example.WebCustomerTracker.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

//    @Autowired
//    private CustomerDao customerDao;

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/list")
    public String listCustomer(Model model) {

        // get Cutomers
        List<Customer> customers = customerService.getCustomers();


        //add Customers
        model.addAttribute("customers", customers);

        return "list-customers";
    }


}
