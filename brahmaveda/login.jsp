<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Brahmaveda</title>
    <link rel="stylesheet" href="static/css/login.css" />
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
      <div class="login-div">
        <div class="upper">
          <img
            src="static/images/name.png"
            alt="projectName"
            class="text-center pro-image"
          />
        </div>
        <div class="lower">
          <div class="circle">
            <div class="login-form">
              <div class="heading text-uppercase">Sign In</div>

              <div class="form-div row">
                <div class="col-3"></div>
                <div class="col-6">
                  <form action="login.do" method="post">
                    <div class="mb-3 mt-2 text-start text-uppercase">
                      <label for="email" class="form-label">User Id </label>
                      <input
                        type="email"
                        class="form-control login-form-control"
                        id="email"
                        name="email"
                        placeholder="example@ggit.org.in"
                        aria-describedby="emailHelp"
                        required
                      />
                    </div>
                    <div class="mb-3 text-uppercase text-start">
                      <label for="password" class="form-label">Password</label>
                      <input
                        type="password"
                        name="password"
                        class="form-control login-form-control"
                        id="password"
                        aria-describedby="passwordhelp"
                        required
                      />
                    </div>
                    <button class="btn btn-light submit-btn" type="submit">
                      Log in
                    </button>
                    <small class="form-text">forgot Password?</small> <br />
                    <a
                      id="signup-btn-index"
                      class="btn form-text"
                      href="signup.do"
                    >
                      Sign up
                    </a>
                  </form>
                </div>
                <div class="col-3"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <%@ include file="footer.jsp" %>
    </div>
  </body>
</html>
