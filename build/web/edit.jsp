<%-- 
    Document   : add
    Created on : Aug 25, 2022, 12:21:19 PM
    Author     : Chuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="col-lg-8">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Add Contact</h2>
                </div>
                <div class="card-body">
                    <form action="add">
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Name</label>
                            <input type="text" name="name" class="form-control" id="exampleFormControlInput1" placeholder="Name">
                            <span class="mt-2 d-block"></span>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Author</label>
                            <input type="text" name="author" class="form-control" id="exampleFormControlInput1" placeholder="Author">
                            <span class="mt-2 d-block"></span>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Publishing year</label>
                            <input type="text" name="publishingYear" class="form-control" id="exampleFormControlInput1" placeholder="Publishing year">
                            <span class="mt-2 d-block"></span>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Price</label>
                            <input type="text" name="price" class="form-control" id="exampleFormControlInput1" placeholder="Price">
                            <span class="mt-2 d-block"></span>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Amount</label>
                            <input type="text" name="amount" class="form-control" id="exampleFormControlInput1" placeholder="Amount">
                            <span class="mt-2 d-block"></span>
                        </div>
                        <div class="form-footer pt-4 pt-5 mt-4 border-top">
                            <button type="submit" class="btn btn-primary btn-default">Submit</button>
                        </div>
                    </form>
                </div>
            </div>


        </div>
    </body>
</html>
