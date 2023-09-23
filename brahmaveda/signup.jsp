<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Brahmaveda</title>
    <link rel="stylesheet" href="static/css/signup.css">
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
</head>
<body>
    <div class="container-fluid">
        <div class="signup-div ">
            <!-- <h1>sign up portal</h1> -->
            <%@ include file="header.jsp" %>
    
            <div class="signup-body">
              <div class="content-title">
                <h2>Create new Account</h1>
                <h6>Already Registered?<a class="btn already-btn-index" href="login.do">
                    Click here
                </a></h4>
              </div>
              <div class="content-body">
                <form action="signup.do" method="post">
                    <div class="row mt-lg-2">
                        <div class="col-2"></div>
                        <div class="col-4">
                            <div class="mb-3 text-start">
                                <label for="name" class="signup-form-label text-uppercase form-label">Name</label>
                                <input type="text" name="name" id="name" class="form-control signup-form-control" required>
                            </div>
                            <div class="mb-3 text-start">
                                <label for="email" class="signup-form-label text-uppercase form-label">Email</label>
                                <input type="email"  name="email" id="email" class="form-control signup-form-control" required>
                            </div>
                            <div class="mb-3 text-start">
                                <label for="password" class="signup-form-label text-uppercase form-label">Password</label>
                                <input type="password"  name="password" id="password" class="form-control signup-form-control" required>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="mb-3 text-start">
                                <label for="contact " class="form-label text-uppercase signup-form-label">Contact</label>
                                <input type="text" class="form-control signup-form-control" id="contact" name="contact" aria-describedby="contact" maxlength="10" required>
                              </div>
                              <div class="mb-3 text-start">
                                <label for="registerId" class="form-label text-uppercase signup-form-label">Register Id </label>
                                <input type="text" class="form-control signup-form-control" id="registerdId" name="registrationId" required >
                              </div>
                              <div class="mb-3 text-start">
                                  <label class="form-label text-uppercase signup-form-label" for="instituteName">INSTITUTE NAME
                                </label>
                                <input type="text" class="form-control signup-form-control" name="instituteName" id="instituteName">
                              </div>
                        </div>
                    </div>
                    <button type="submit" class="btn verify-btn"> Click to Verify</button>
                </form>
    
              </div>
              <div class="content-footer"></div>
            </div>
          </div>
          <%@ include file="footer.jsp" %>
    </div>
</body>
</html>