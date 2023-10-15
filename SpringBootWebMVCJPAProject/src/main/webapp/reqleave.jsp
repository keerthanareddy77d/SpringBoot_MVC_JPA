<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Leave</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #ffd1d2;
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
            max-width: 800px;
            width: 100%;
            text-align: center;
        }

        .container h1 {
            color: #333333;
            margin-bottom: 20px;
            font-size: 32px;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            font-weight: bold;
            font-size: 18px;
            color: #333333;
            display: block;
            margin-bottom: 8px;
        }

        .form-group input {
            width: calc(100% - 20px);
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            transition: border-color 0.3s;
            box-sizing: border-box;
        }

        .form-group input:focus {
            border-color: #007bff;
            outline: none;
        }

        .button-group {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .button {
            display: inline-block;
            padding: 12px 24px;
            background-color: #007bff;
            color: #ffffff;
            text-decoration: none;
            border-radius: 6px;
            font-size: 18px;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s;
            margin-right: 10px;
        }

        .button:last-child {
            margin-right: 0;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .button:active {
            background-color: #004aa0;
        }

        .button:focus {
            outline: none;
        }
    </style>
</head>
<body>
<%@ include file="empnavbar.jsp" %>

    <div class="container">
    <br/><br/><br/><br/>
        <h1>Request Leave</h1>
        <form>
            <div class="form-group">
                <label for="subject">Subject</label>
                <input type="text" id="subject" name="subject" required>
            </div>
            <div class="form-group">
                <label for="startDate">Start Date</label>
                <input type="date" id="startDate" name="startDate" required>
            </div>
            <div class="form-group">
                <label for="endDate">End Date</label>
                <input type="date" id="endDate" name="endDate" required>
            </div>
            <div class="form-group">
                <label for="subject">Message</label>
                <input type="text" id="subject" name="subject" required>
            </div>
            <div class="button-group">
                <button class="button" type="submit">Submit Request</button>
            </div>
        </form>
    </div>
</body>
</html>
