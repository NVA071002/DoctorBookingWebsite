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
                        <a  href="inputinfor.jsp" class="btn btn-success btn-appointment" type="submit" >Check your booking</a>


                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="form-data">
                        <div class="form-head">
                            <h2>Book Appointment</h2>
                        </div>
                        <form class="form-body" action="booking1">
                            <div class="row form-row">
                                <input type="text" placeholder="Enter Full name" class="form-control" name="name" value="LAM">
                            </div>
                            <div class="row form-row">
                                <input type="text" placeholder="Enter Mobile Number" class="form-control" name="phone" value="0938591504">
                            </div>
                            <div class="row form-row">
                                <input type="text" placeholder="Enter Email Adreess" class="form-control" name="email" value="email@gmail.com">
                            </div>
                            <div class="gender-btn">
                                <div class="wrapper-gender-btn">
                                    <input type="radio" placeholder="Male" name="gender" class="radio-gender"
                                            value=0 checked="checked">Male
                                </div>
                                <div class="wrapper-gender-btn">
                                    <input type="radio" placeholder="Female" name="gender" class="radio-gender"
                                           value=1>Female
                                </div>
                            </div>
                            <%--                           <div class="row form-row">--%>
                            <%--                              <input id="dat" type="text" placeholder="Appointment Date" class="form-control">--%>
                            <%--                            </div>--%>
                            <%--                            --%>
                            <h6>Address Details</h6>

                            <div class="row form-row">
                                <div class="adrr col-sm-6 ">
                                    <input type="text" placeholder="Enter City" class="form-control" name="city" value="HCM">
                                </div>
                                <div class="adrr col-sm-6">
                                    <input type="text" placeholder="Enter District" class="form-control"
                                           name="district" value="TD">
                                </div>
                                <div class="adrr col-sm-6">
                                    <input type="text" placeholder="Enter Ward" class="form-control" name="ward" value="TT">
                                </div>
                                <div class="adrr col-sm-6">
                                    <input type="text" placeholder="Enter Street Name" class="form-control"
                                           name="street" value="HVT">
                                </div>

                            </div>
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