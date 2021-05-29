package com.example.WebCustomerTracker.controller;

import com.example.WebCustomerTracker.data.CustomerDao;
import com.example.WebCustomerTracker.data.CustomerDaoImpl;
import com.example.WebCustomerTracker.entity.Customer;
import com.example.WebCustomerTracker.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

//    @Autowired
//    private CustomerDao customerDao;

    @Autowired
    private CustomerService customerService;

    @RequestMapping( "/list")
    public ModelAndView listCustomer(Model model) {

        ModelAndView modelAndView = new ModelAndView("list-customers","command",new Customer());
        // get Cutomers
        List<Customer> customers = customerService.getCustomers();
        //add Customers
//        model.addAttribute("customers", customers);

        modelAndView.addObject("customers",customers);

        // Customer for form
        Customer customer = new Customer();
//        model.addAttribute("customerr", customer);

        modelAndView.addObject("customer",customer);

//        return "list-customers";
        return modelAndView;
    }



    /*

        @RequestMapping("/list")
    public String listCustomer(Model model) {

        // get Cutomers
        List<Customer> customers = customerService.getCustomers();
        //add Customers
        model.addAttribute("customers", customers);


        // Customer for form
        Customer customer = new Customer();
        model.addAttribute("customer", customer);


        return "list-customers";
    }


     */


    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") Customer customer){

        customerService.saveCustomer(customer);

        return "redirect:/customer/list";
    }



}
