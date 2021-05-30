<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CRM</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">


    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/vegas/2.5.4/vegas.css"
          integrity="sha512-EpEnw81J0OHvzW6IJBk6U57oNffOy3voB5MasxdZTB2B6st6qEL38R/gVWYc7wMOcgqb3de8Vs6iqZkSlTHlEg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    <link href='https://fonts.googleapis.com/css?family=Rajdhani:400,500,700' rel='stylesheet' type='text/css'>
    <script src="https://kit.fontawesome.com/2b43ff5473.js" crossorigin="anonymous"></script>


</head>
<body>

<%-- pre loader --%>


<section class="preloader" id="preloading">
    <div class="pre-circle">
        <div class="pre-circle1 pre-chid"></div>
        <div class="pre-circle2 pre-chid"></div>
        <div class="pre-circle3 pre-chid"></div>
        <div class="pre-circle4 pre-chid"></div>
        <div class="pre-circle5 pre-chid"></div>
        <div class="pre-circle6 pre-chid"></div>
        <div class="pre-circle7 pre-chid"></div>
        <div class="pre-circle8 pre-chid"></div>
        <div class="pre-circle9 pre-chid"></div>
        <div class="pre-circle10 pre-chid"></div>
        <div class="pre-circle11 pre-chid"></div>
        <div class="pre-circle12 pre-chid"></div>
    </div>
</section>
<%--pre loader end--%>

<section id="home">

    <div class="container">
        <div class="row">
            <div>

                <div class="home-thumb">

                    <h1 class="wow animate__animated animate__fadeInUp" data-wow-delay="0.4s">Customer-Relationship-Manager</h1>
                    <h3 class="wow animate__animated animate__fadeInUp" data-wow-delay="0.6s">The core technology used is
                        <strong>Spring MVC</strong> and<strong> Hibernate
                        </strong>.
                        </h3>
                    <a href="#" data-bs-toggle="modal" data-bs-target="#modal1"
                       class="btn btn-lg btn-success smoothScroll wow animate__animated animate__fadeInUp"
                       data-wow-delay="1.0s">Add Customer!</a>


                    <div class="search">

                        <form:form action="search" method="GET" cssClass="search-form">
                         <input type="text" name="theSearchName" placeholder="Search for Customers" />
                            <input type="submit" value="Search" class="add-button" />
                        </form:form>

                    </div>



                </div>

            </div>


        </div>

    </div>

</section>

<%--Customer table here --%>

<section id="customer_data">

    <div class="container">
        <div class="row">
            <div>
                <div class="customer_table wow animate__animated animate__fadeInUp" data-wow-delay="1.0s">
                    <div class="header">Customers</div>
                    <table cellspacing="0">
                        <tr>
                            <th>id</th>
                            <th>First name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Actions</th>

                        </tr>

                        <c:forEach var="tempCustomer" items="${customers}">

                            <tr>
                                <td>${tempCustomer.id}</td>
                                <td>${tempCustomer.firstName}</td>
                                <td>${tempCustomer.lastName}</td>
                                <td>${tempCustomer.email}</td>
                                <td>
                                    <div>

                                        <c:url value="/customer/updateCustomer" var="updateLink">
                                            <c:param name="customerId" value="${tempCustomer.id}"/>
                                        </c:url>
                                        <c:url value="/customer/deleteCustomer" var="deleteLink">
                                            <c:param name="customerId" value="${tempCustomer.id}"/>
                                        </c:url>

                                        <a href="${updateLink}" class="btn btn-warning">Update</a>
                                        <a href="${deleteLink}" onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false"  class="btn btn-danger">Delete</a>

                                    </div>
                                </td>

                            </tr>

                        </c:forEach>


                    </table>

                </div>

            </div>

        </div>

    </div>

</section>


<%--customer table end--%>

<%--footer --%>

<footer>
    <div class="container">
        <div class="row">
            <svg class="svgcolor-light" preserveAspectRatio="none" viewBox="0 0 100 102" height="100" width="100%"
                 version="1.1" xmlns="http://www.w3.org/2000/svg">
                <path d="M0 0 L50 100 L100 0 Z"></path>
            </svg>


            <div class="col-md-4 col-sm-6">
                <h2>CRM</h2>
                <div class="wow animate__animated animate__fadeInUp" data-wow-delay="0.3s">
                    <p>A full CRUD application, Customer Relationship Manager system that allows to track customers</p>
                    <p class="copyright-text">Copyright &copy; 2021 CRM <br>

                </div>
            </div>

            <div class="col-md-1 col-sm-1"></div>

            <div class="col-md-4 col-sm-5">
                <h2>Made By</h2>
                <p class="wow animate__animated animate__fadeInUp" data-wow-delay="0.6s">
                   Pranav Elric,<br>
                    Jaipur, India
                </p>
                <ul class="social-icon">
                    <li><a href="https://pranavelric.me/" target="_blank" class="fas fa-globe wow  animate__animated animate__bounceIn"
                           data-wow-delay="0.9s"></a></li>
                    <li><a href="https://www.instagram.com/pranav.elric/" target="_blank" class="fab fa-instagram wow  animate__animated animate__bounceIn"
                           data-wow-delay="1.2s"></a></li>
                    <li><a href="https://github.com/pranavelric" class="fab fa-github wow  animate__animated animate__bounceIn"
                           data-wow-delay="1.4s"></a></li>
                    <li><a href="https://stackoverflow.com/users/10224590/pranav-choudhary?tab=profile" class="fab fa-stack-overflow wow  animate__animated animate__bounceIn"
                           data-wow-delay="1.6s"></a></li>
                </ul>
            </div>

        </div>
    </div>


    </div>

    </div>

</footer>

<%--footer end--%>

<%--customer form--%>

<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content modal-popup">
            <div class="modal-header">
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h2 class="modal-title">Add new Customer</h2>
            </div>
            <form:form action="saveCustomer" method="post" modelAttribule="customer">


                <form:input path="firstName" placeholder="First Name" cssClass="form-control"/>
                <form:input path="lastName" placeholder="Last Name" cssClass="form-control"/>
                <form:input path="email" placeholder="Email" cssClass="form-control"/>
                <input name="submit" type="submit" class="form-control" id="submit" value="save">


            </form:form>
            <p>Thank you for your visiting!</p>
        </div>
    </div>
</div>


<%--customer form end--%>

<!-- Back top -->
<a href="#" class="go-top"><i class="fas fa-angle-up"></i></a>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"
        integrity="sha512-n/4gHW3atM3QqRcbCn6ewmpxcLAHGaDjpEBu4xZd47N0W2oQ+6q7oc3PXstrJYXcbNU1OHdQ1T7pAP+gi5Yu8g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
        integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
        crossorigin="anonymous"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/vegas/2.5.4/vegas.js"
        integrity="sha512-8b0Npb1J3g9Ouc4btqH5lyjwRXdVD6iWMQJTTVeFRzaSA930H6FmeL46AI+YfKYXS5wDQhQqbKAL7+u/jzS4jw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.0.2/wow.js"
        integrity="sha512-GNPL2Xds/NxEEdhgKxQUjzCgkCmWvJdIOSWd+8+kO8mxe/sFNyRA1jkA8ZO9l9fc2QWF5gPy1cgEdOfjo8fZZA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="<c:url value="/resources/js/main.js" /> "></script>


</body>
</html>
