<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/datepicker.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/reset.css">
    <title>TechTitans Hospital</title>
</head>
<body>

<div class="inner-layer">
    <div class="container">
        <div class="row no-margin">
            <div class="col-sm-7">
                <div class="content">
                    <h1>Book Your Slot Now <br> Save your time</h1>
                    <p>TechTitans</p>

                </div>
            </div>
            <div class="col-sm-5">
                <div class="form-data">
                    <div class="form-head">
                        <h2>Book Appointment</h2>
                    </div>
                    <form class="form-body" action="loadbooking">
                        <div class="row form-row">
                            <input type="text" placeholder="Enter your email" class="form-control" name="email" value="">
                        </div>
                        <div class="row form-row">
                            <input type="text" placeholder="Enter Mobile Number" class="form-control" name="phone" value="">
                        </div>
                        <h6>Address Details</h6>


                        <div class="row form-row">
                            <div class="row form-row">
                                <%--                                    <button class="btn btn-success btn-appointment" action="booking1">--%>
                                <%--                                        Submit--%>
                                <%--                                    </button>--%>
                                <input class="btn btn-success btn-appointment" type="submit" ></a>

                            </div>
                        </div>
                    </form>
                    <%--                        <form action="./forminfo.jsp" method="post">--%>
                    <%--                            <input type="hidden" name="name" value="${user.name}">--%>
                    <%--                            <input type="hidden" name="phone" value="${user.phone}">--%>
                    <%--                            <input type="hidden" name="gender" value="${user.gender}">--%>
                    <%--                            <input type="hidden" name="address" value="${user.address}">--%>
                    <%--                            <input type="hidden" name="email" value="${user.email}">--%>
                    <%--                            <input type="hidden" name="faculty_selected" value="${user.faculty_selected}">--%>
                    <%--                            <input type="hidden" name="symptom" value="${user.symptom}">--%>
                    <%--                            <input type="hidden" name="doctor_selected" value="${user.doctor_selected}">--%>
                    <%--                            <input type="hidden" name="dateTime" value="${user.dateTime}">--%>

                    <%--                            <input class="btn btn-success btn-appointment" type="submit" value="View your appointment"/>--%>
                    <%--                        </form>--%>

                </div>
            </div>
        </div>
    </div>
</div>
</body>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="assets/js/jquery-3.3.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-datepicker.js"></script>

<script>
    $(document).ready(function(){
        $("#dat").datepicker();
    })
</script>

</body>
</html>