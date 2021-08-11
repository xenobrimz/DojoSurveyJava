<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Dojo Page</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <div class="container">
        <div class="card border-primary text-primary">
        <div class="card-header border-primary">Dojo User</div>
        <div class="card-body">
            <h5 class="card-title">Name: <c:out value="${name}"/></h5>
            <p class="card-text">location: <c:out value="${location}"/></p>
            <p class="card-text">Favorite language: <c:out value="${faveLang}"/></p>
        </div>
        <div class="card-body">
            <p class="card-text">comment: <c:out value="${comment}"/></p>
        </div>
        </div>
        <a href="/" class="btn btn-outline-primary">go back</a>
    </div>
</body>
</html>