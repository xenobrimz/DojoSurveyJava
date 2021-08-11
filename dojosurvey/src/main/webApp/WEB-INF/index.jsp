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
    <form method="POST" action="/submitSurvey">
        <div class=" row mb-3">
            <label for="name" class="col-sm-2 col-form-label">Your Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" name ="name">
            </div>
        </div>
        <select class="form-select" name="location">
            <option selected="">Dojo Location</option>
            <option value="Belleveu, WA">Belleveu, WA</option>
            <option value="Boise,ID">Boise,ID</option>
            <option value="Chicago,IL">Chicago,IL</option>
            <option value="Online">Online</option>
            <option value="Los Angelas,CA">Los Angelas,CA</option>
            <option value="Silicon Valley,CA">Silicon Valley,CA</option>
        </select>
        <select class="form-select" name="faveLang">
            <option selected="">Favorite language</option>
            <option value="Java">Java</option>
            <option value="Python">Python</option>
            <option value="JavaScript">JavaScript</option>
            <option value="C#">C#</option>
            <option value="C++">C++</option>
        </select>
        <div class="row mb-3">
            <div class="form-floating">
                <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="comment" style="height: 100px"></textarea>
                <label for="floatingTextarea">Comments</label>
            </div>
        </div>
        <div>
            <button class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>
</body>
</html>