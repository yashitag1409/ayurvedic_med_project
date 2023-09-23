<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width,shrink-to-fit=no, initial-scale=1.0"
    />
    <title>Brahmaveda</title>
    <link rel="stylesheet" href="static/css/verify.css" />
  </head>
  <body>
    <%@ include file="header.jsp" %>
 hello
    <!-- <h1>inside verify Page</h1> -->

    <div class="container-fluid">
      <h1 class="text-uppercase text-center mb-5">
        Verify Your Account to continue
      </h1>
      <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
            <div class="d-none alert alert-success login-div">
              Verified Successfully
              <a href="login.jsp" class="btn ">Click here to login</a>
            </div>
          <div class="otp-div">
            <br />
            <div class="otp-head alert alert-success text-dark text-center">
              Check your email , OTP sent on ${user.email}
            </div>
            <div class="otp-body">
              <h1 class="text-center">Enter OTP</h1>
              <div class="otp-field justify-content-center">
                <input type="text" maxlength="1" />
                <input type="text" maxlength="1" />
                <input class="space" type="text" maxlength="1" />
                <input type="text" maxlength="1" />
                <input type="text" maxlength="1" />
                <input type="text" maxlength="1" />
              </div>
            </div>
          </div>
        </div>
        <div class="col-4"></div>
      </div>
    </div>
    <%@ include file="footer.jsp" %>

    <script src="static/js/verify.js"></script>
  </body>
</html>
