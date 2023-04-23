<!DOCTYPE html>
<html>
<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
        $(document).ready(function() {
            $("#datepicker").datepicker();
            $("#datepicker-btn").click(function() {
                $("#datepicker").datepicker("show");
            });
        });
    </script>

    <title>Doctor's Appointment</title>
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
        }

        h1 {
            color: #005580;
            font-size: 36px;
            text-align: center;
            margin-top: 50px;
        }

        h2 {
            font-size: 24px;
            margin-top: 30px;
        }

        form {
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 5px 0px #c2c2c2;
            padding: 20px;
            margin: 0 auto;
            width: 80%;
            max-width: 600px;
            margin-top: 50px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #555555;
        }

        select, input[type="text"] {
            border: 1px solid #c2c2c2;
            border-radius: 3px;
            padding: 10px;
            width: 100%;
            font-size: 18px;
            margin-bottom: 20px;
        }

        input[type="submit"] {
            background-color: #0077b6;
            color: #ffffff;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #005580;
        }
    </style>
</head>
<body>
<c:choose>
    <c:when test="${not empty user.email}">
        <h1>Thanks For Your Appointment</h1>
        <h2>Here is your information</h2>

        <p>Name: ${user.name}</p>
        <p>Phone: ${user.phone}</p>
        <c:choose>
            <c:when test="${user.gender == 0}">
                <p>Gender: Male</p>
            </c:when>
            <c:otherwise>
                <p>Gender: Female</p>
            </c:otherwise>
        </c:choose>
        <p>Email: ${user.email}</p>
        <p>Address: ${user.address}</p>
        <p>Faculty: ${user.faculty_selected}</p>
        <p>Symptom: ${user.symptom}</p>
        <p>Doctor: ${user.doctor_selected}</p>
        <p>Time: ${user.dateTime}</p>

        <form action="delete" method="post">
            <input type="hidden" name="email" value="${user.email}">
            <input type="hidden" name="faculty_selected" value="${user.faculty_selected}">
            <input type="hidden" name="doctor_selected" value="${user.doctor_selected}">
            <input type="submit" value="Cancel Appointment">
        </form>
    </c:when>
    <c:otherwise>
        <h1>You do not have any appointment before!</h1>
    </c:otherwise>
</c:choose>

<form action="./booking1.jsp" method="post">
    <input type="submit" value="Return to home page">
</form>


</body>
</html>
