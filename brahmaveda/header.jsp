<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<link rel="stylesheet" href="static/css/header.css" />

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

<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
  href="https://fonts.googleapis.com/css2?family=Alegreya+Sans+SC:wght@200&family=Kalam&display=swap"
  rel="stylesheet"
/>

<nav class="navbar">
  <img src="static/images/name.png" alt="logo" class="header-logo" />
  <div>
    <div class="btn userInfo">
      <c:choose>
        <c:when test="${sessionScope.user eq null}">
          <a class="btn btn-outline-danger login-btn-index" href="login.do">
            login / Register
          </a>
        </c:when>
        <c:otherwise>
          <div>
            <div class="btn id-box text-uppercase">
              Welcome : ${sessionScope.user.registrationId}
            </div>
            <a href="signout.do" class="text-uppercase btn btn-danger"
              >Sign out</a
            >
          </div>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
</nav>
