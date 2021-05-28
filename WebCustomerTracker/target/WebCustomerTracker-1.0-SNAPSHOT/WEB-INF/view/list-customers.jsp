<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customers</title>
</head>
<body>

<h1>List customer</h1>

<div id="wrapper">
    <div id="header">
        <h1>CRM- </h1>
    </div>

</div>

<div id="container">
    <div id="content">

        <table>
            <tr>
                <th>id</th>
                <th>First name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>

            <c:forEach var="tempCustomer" items="${customers}">

                <tr>
                    <td>${tempCustomer.id}</td>
                    <td>${tempCustomer.firstName}</td>
                    <td>${tempCustomer.lastName}</td>
                    <td>${tempCustomer.email}</td>
                </tr>

            </c:forEach>


        </table>

    </div>

</div>

</body>
</html>
