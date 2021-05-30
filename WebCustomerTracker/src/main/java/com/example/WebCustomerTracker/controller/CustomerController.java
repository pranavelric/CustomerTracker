package com.example.WebCustomerTracker.controller;

import com.example.WebCustomerTracker.entity.Customer;
import com.example.WebCustomerTracker.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {



    @Autowired
    private CustomerService customerService;

    @RequestMapping( "/list")
    public ModelAndView listCustomer(Model model) {

        ModelAndView modelAndView = new ModelAndView("list-customers","command",new Customer());
        // get Cutomers
        List<Customer> customers = customerService.getCustomers();
        //add Customers
        // model.addAttribute("customers", customers);
        modelAndView.addObject("customers",customers);

        // Customer for form
        Customer customer = new Customer();
        // model.addAttribute("customerr", customer);

        modelAndView.addObject("customer",customer);


        return modelAndView;
    }





    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") Customer customer){

        customerService.saveCustomer(customer);

        return "redirect:/customer/list";
    }


    @GetMapping("/updateCustomer")
    public  ModelAndView  updateCustomer(@RequestParam("customerId") int id,  Model model){


        Customer customer = customerService.getCustomer(id);
        ModelAndView modelAndView = new ModelAndView("update-customers","command",customer);
        modelAndView.addObject("customer",customer);
        return modelAndView;
    }

    @GetMapping("/deleteCustomer")
    public String deleteCustomer(@RequestParam("customerId")int id){

        customerService.deleteCustomer(id);
        return "redirect:/customer/list";
    }

    @GetMapping("/search")
    public  ModelAndView searchCustomer(@RequestParam("theSearchName") String searchName,Model model){

        ModelAndView modelAndView = new ModelAndView("list-customers","command",new Customer());
        List<Customer> theCustomers = customerService.searchCustomers(searchName);

        // add the customers to the model

        modelAndView.addObject("customer",theCustomers);
        model.addAttribute("customers", theCustomers);
        return  modelAndView;

    }


}
