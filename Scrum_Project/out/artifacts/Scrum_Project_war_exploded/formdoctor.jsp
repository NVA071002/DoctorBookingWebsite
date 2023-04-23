<!DOCTYPE html>
<html>
<head>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  <script>
    $(document).ready(function() {
      $("#datepicker").datepicker({
        dateFormat: "dd/mm/yy"
      });
      $("#datepicker-btn").click(function() {
        $("#datepicker").datepicker("show");
      });
    });
  </script>

  <title>Doctor's Appointment</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }

    h1 {
      color: #005580;
      text-align: center;
    }

    form {
      background-color: #ffffff;
      border-radius: 5px;
      box-shadow: 0px 0px 5px 0px #c2c2c2;
      padding: 20px;
      margin: 0 auto;
      width: 400px;
    }

    label {
      display: block;
      margin-bottom: 10px;
      color: #555555;
    }

    select, input[type="text"] {
      border: 1px solid #c2c2c2;
      border-radius: 3px;
      padding: 5px;
      width: 100%;
      font-size: 16px;
      margin-bottom: 20px;
    }

    input[type="submit"] {
      background-color: #005580;
      color: #ffffff;
      border: none;
      border-radius: 3px;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #003d4d;
    }
  </style>
</head>
<body>
<h1>Doctor's Appointment</h1>

<form action="booking3" method="post">
  <label for="doctor">Select Doctor:</label>
  <select id="doctor" name="doctor_selected">
    <c:forEach items="${doctorList}" var="o"><
      <option value="${o.name}">${o.name}</option>
    </c:forEach>
  </select>
  <label >Choose Date:</label>

  <input type="hidden" name="name" value="${user.name}">
  <input type="hidden" name="phone" value="${user.phone}">
  <input type="hidden" name="gender" value="${user.gender}">
  <input type="hidden" name="address" value="${user.address}">
  <input type="hidden" name="email" value="${user.email}">
  <input type="hidden" name="faculty_selected" value="${user.faculty_selected}">
  <input type="hidden" name="symptom" value="${user.symptom}">



  <input type="text" id="datepicker" name="dateTime">
<%--  <select id="datetime" name="date">--%>

<%--  </select>--%>
  <input type="submit" value="Submit">
</form>
</body>
</html>
