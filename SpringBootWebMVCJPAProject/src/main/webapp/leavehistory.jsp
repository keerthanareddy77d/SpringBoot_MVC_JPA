<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Request</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: ;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 40px;
            max-width: 600px;
            width: 100%;
            text-align: center;
        }

        .container h1 {
            color: #333333;
            margin-bottom: 20px;
            font-size: 32px;
            font-weight: bold;
        }

        .request-card {
            background-color: #f9f9f9;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        .request-card .title {
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 20px;
            color: #333333;
        }

        .request-card .date {
            color: #555555;
            font-size: 14px;
        }
    </style>
</head>
<body>
<%@ include file="empnavbar.jsp" %>

    <div class="container">
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        <h1>View Request History</h1>
        <div class="request-card">
            <div class="title">Leave Request 1</div>
            <div class="date">Requested on: January 10, 2023</div>
        </div>
        <div class="request-card">
            <div class="title">Leave Request 2</div>
            <div class="date">Requested on: January 15, 2023</div>
        </div>
        <div class="request-card">
            <div class="title">Leave Request 3</div>
            <div class="date">Requested on: January 20, 2023</div>
        </div>
        <div class="request-card">
            <div class="title">Leave Request 4</div>
            <div class="date">Requested on: January 20, 2023</div>
        </div>
        <div class="request-card">
            <div class="title">Leave Request 5</div>
            <div class="date">Requested on: January 20, 2023</div>
        </div>
    </div>
</body>
</html>
