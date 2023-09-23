<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Brahmaveda</title>
    <link rel="stylesheet" href="static/css/medicine_list.css" />
  </head>
  <body>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ include
    file="header.jsp" %>
    <div class="container-fluid">
      <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="login.do">login</a>
          </li>
          <li class="breadcrumb-item" aria-current="page">
            <a href="arsp.do"> AYURVEDIC REASEARCH portal </a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            list of medicines
          </li>
        </ol>
      </nav>
      <div class="lom-heading">
        <div class="loh-1">List of Medicines</div>
        <span class="lh-2">"A dose of care, a prescription for life"</span>
      </div>
      <div class="table-div">
        <table class="table text-center justify-content-center">
          <thead>
            <tr>
              <th>Med id</th>
              <th>Name of Medicine</th>
              <th>Main Indication</th>
              <th>dose size</th>
              <th>Precaution</th>
              <th>Preffered Use</th>
            </tr>
          </thead>
          <% int i = 1; %>
          <tbody>
            <c:forEach items="${medicinesList}" var="medicine">
              <tr>
                <td><%= i++ %></td>
                <td>${medicine.medicineName}</td>
                <td>${medicine.mainIndication}</td>
                <td>${medicine.dose}</td>
                <td>${medicine.precaution}</td>
                <td>${medicine.preferredUse}</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
    <%@ include file="footer.jsp" %>
  </body>
</html>
