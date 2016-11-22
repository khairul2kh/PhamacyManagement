<%-- 
    Document   : second
    Created on : Nov 19, 2016, 11:02:37 AM
    Author     : Khairul
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/bootstrap/bootstrap.min.css" />" rel="stylesheet">
        <title>Second</title>
    </head>
    <body>
        <form>
            <div class="form-group">
                <label for="email">Email address:</label>
                <input type="email" class="form-control" id="email">/
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd">
            </div>
            <div class="checkbox">
                <label><input type="checkbox"> Remember me</label>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
    </body>
</html>
