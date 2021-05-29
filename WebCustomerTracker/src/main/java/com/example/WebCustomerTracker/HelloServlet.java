//package com.example.WebCustomerTracker;
//
//import java.io.*;
//import java.rmi.ServerException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//
//@WebServlet(name = "helloServlet", value = "/hello-servlet")
//public class HelloServlet extends HttpServlet {
//    private String message;
//    private String user;
//    private String pass;
//    private String jdbcUrl;
//
//
//    public void init() {
//        message = "Hello World!";
//        user = "root";
//        pass = "123456";
//        jdbcUrl = "jdbc:mysql://localhost:3306/web_customer_tracker";
//
//    }
//
//    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.setContentType("text/html");
//
//        PrintWriter out = response.getWriter();
//        out.println("<html><body>");
//        out.println("<h1>" + message + "</h1>");
//        out.println("</body></html>");
//
//
//        try {
//            out.println("<h1> Connecting to database </h1>");
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection(jdbcUrl, user, pass);
//            out.println("<h1> Success!!! </h1>");
//            con.close();
//
//        } catch (Exception e) {
//            e.printStackTrace();
//            throw new ServerException(e.getMessage());
//        }
//
//
//    }
//
//    public void destroy() {
//    }
//}