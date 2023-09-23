<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, fit-to-shrink=no, initial-scale=1.0"
    />
    <link rel="stylesheet" href="static/css/index.css" />
    <title>Brahmaveda</title>

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
      <div class="index-div">
        <div class="header justify-content-md-end d-grid gap-2 d-md-flex m-2">
          <a class="btn btn-outline-danger login-btn-index" href="login.do">
            login / Register
          </a>
        </div>
        <div class="name">
          <img
            src="static/images/name.png"
            id="projectName"
            class="text-center"
            alt="projectName"
          />
        </div>
      </div>
      
      
    </div>
    <%@ include file="footer.jsp" %>

    <script>
      // var login_btn_index = document.querySelector(".login-btn-index"); //btn login
      // var already_btn_index = document.querySelector(".already-btn-index"); //btn login
      // var signup_btn_index = document.querySelector("#signup-btn-index");
      // var index_div = document.querySelector(".index-div");
      // var signup_div = document.querySelector(".signup-div");
      // var login_div = document.querySelector(".login-div");

      // login_btn_index.addEventListener("click", () => {
      //   index_div.classList.add("d-none");
      //   login_div.classList.remove("d-none");
      // });
      // already_btn_index.addEventListener("click", () => {
      //   index_div.classList.add("d-none");
      //   login_div.classList.remove("d-none");
      // });
      // signup_btn_index.addEventListener("click", () => {
      //   index_div.classList.add("d-none");
      //   login_div.classList.add("d-none");
      //   signup_div.classList.remove("d-none");
      // });
    </script>
  </body>
</html>
