<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--    <head>--%>
<%--        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--        <meta charset="UTF-8"/>--%>
<%--        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>--%>
<%--        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>--%>
<%--        <link rel="stylesheet" href="./assets/css/combobox.css"/>--%>
<%--        <link rel="stylesheet" href="./assets/css/reset.css"/>--%>
<%--        <link rel="stylesheet" href="./assets/css/formfaculty.css"/>--%>
<%--        <title>TechTitans Hospital</title>--%>
<%--    </head>--%>
<%--    <body>--%>
<%--    <div class="content">--%>
<%--      <form method="post" action="booking2">--%>
<%--      <div class="faculty-form">--%>
<%--            <div id="select-box">--%>
<%--                <input type="checkbox" id="options-view-button"/>--%>
<%--                    <div id="select-button" class="brd">--%>
<%--                        <div id="selected-value" name="faculty_selected">--%>
<%--                            <span>Select Your Faculty</span>--%>
<%--                        </div>--%>
<%--                        <div id="chevrons">--%>
<%--                            <i class="fas fa-chevron-up"></i>--%>
<%--                            <i class="fas fa-chevron-down"></i>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div id="options">--%>
<%--                        <c:forEach items="${facultyList}" var="o">--%>
<%--                            <div class="option">--%>
<%--                                <input--%>
<%--                                        class="s-c top"--%>
<%--                                        type="radio"--%>
<%--                                        value="${o.name}"--%>
<%--                                />--%>
<%--                                <i class="fab fa-free-code-camp"></i>--%>
<%--                                <span class="label">${o.name}</span>--%>
<%--                                <span class="opt-val">${o.name}</span>--%>
<%--                            </div>--%>
<%--                        </c:forEach>--%>
<%--                        <div id="option-bg"></div>--%>
<%--                    </div>--%>
<%--              <div class="row form-row">--%>
<%--                <div class="row form-row">--%>
<%--                  &lt;%&ndash;                                    <button class="btn btn-success btn-appointment" action="booking1">&ndash;%&gt;--%>
<%--                  &lt;%&ndash;                                        Submit&ndash;%&gt;--%>
<%--                  &lt;%&ndash;                                    </button>&ndash;%&gt;--%>
<%--                  <input class="btn btn-success btn-appointment" type="submit" ></a>--%>

<%--                </div>--%>
<%--              </div>--%>

<%--            </div>--%>
<%--        </div>--%>
<%--        &lt;%&ndash;            <div class="symptoms-form">&ndash;%&gt;--%>
<%--        &lt;%&ndash;                <!-- symptoms  -->&ndash;%&gt;--%>
<%--        &lt;%&ndash;                <div class="form-row">&ndash;%&gt;--%>
<%--        &lt;%&ndash;                    <div id="options">&ndash;%&gt;--%>
<%--        &lt;%&ndash;                        <div class="option"></div>&ndash;%&gt;--%>
<%--        &lt;%&ndash;                        <h2>Describe Symptoms</h2>&ndash;%&gt;--%>
<%--        &lt;%&ndash;                        <div class="symptoms-form form-row">&ndash;%&gt;--%>
<%--        &lt;%&ndash;                            <input&ndash;%&gt;--%>
<%--        &lt;%&ndash;                                    type="text"&ndash;%&gt;--%>
<%--        &lt;%&ndash;                                    placeholder="Describe Your Symptoms"&ndash;%&gt;--%>
<%--        &lt;%&ndash;                                    class="form-control"&ndash;%&gt;--%>
<%--        &lt;%&ndash;                                    name="symtomp"&ndash;%&gt;--%>
<%--        &lt;%&ndash;                                    value=""&ndash;%&gt;--%>
<%--        &lt;%&ndash;                            />&ndash;%&gt;--%>
<%--        &lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--        &lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--        &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--        &lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--      </form>--%>
<%--    </div>--%>
<%--    </body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html>
<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<form action="booking2" method="post">
    <label for="faculty">Select Faculty:</label>
    <select id="faculty" name="faculty_selected">
        <c:forEach items="${facultyList}" var="o"><
            <option value="${o.name}">${o.name}</option>
        </c:forEach>
    </select>
    <label for="symptom">Describe Your Symptom:</label>

    <input type="hidden" name="name" value="${user.name}">
    <input type="hidden" name="phone" value="${user.phone}">
    <input type="hidden" name="gender" value="${user.gender}">
    <input type="hidden" name="address" value="${user.address}">
    <input type="hidden" name="email" value="${user.email}">

    <input type="text" id="symptom" name="symptom">
    <input type="submit" value="Submit">
</form>
</body>
</html>

