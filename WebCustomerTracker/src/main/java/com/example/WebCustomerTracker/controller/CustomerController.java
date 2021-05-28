package com.example.WebCustomerTracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {

@RequestMapping("/list")
    public String listCustomer(Model model){

    return "list-customers";
}


}
