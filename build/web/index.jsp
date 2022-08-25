<%-- 
    Document   : login
    Created on : Aug 22, 2022, 9:05:23 PM
    Author     : Dell Precision 7510
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="py-12">
            <div class='container'>
                <h4>Home</h4>
                <a href="add.jsp"><button class="btn btn-info">Add Book</button></a>
                <br><br>
                <div class="row">
                    <br><br>
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">All Book</div>

                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col" width="5%">ID</th>
                                        <th scope="col" width="15%">Name</th>
                                        <th scope="col" width="15%">Author</th>
                                        <th scope="col" width="15%">Publishing year</th>
                                        <th scope="col" width="15%">Price</th>
                                        <th scope="col" width="15%">Amount</th>
                                        <th scope="col" width="25%">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${books}"  var="book">
                                        <tr>

                                            <td>${book.id}</td>
                                            <td>${book.name}</td>
                                            <td>${book.author}</td>
                                            <td>${book.publishingYear}</td>
                                            <td>${book.price}</td>
                                            <td>${book.amount}</td>
                                            <td>
                                                <a href="" class="btn btn-info">Edit</a>
                                                <a href="" onclick=" return confirm('Are you sure to delete')" class="btn btn-danger">Delete</a>
                                            </td>

                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card"></div>
                    </div>

                </div>
            </div>


        </div>
    </body>
</html>
