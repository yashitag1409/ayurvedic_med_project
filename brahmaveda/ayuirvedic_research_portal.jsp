<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Brahmaveda</title>
    <link rel="stylesheet" href="static/css/ayurvedic_research_portal.css" />
  </head>
  <body>
    <%@ include file="header.jsp" %>
    <div class="container-fluid">
      <nav aria-label="breadcrumb" class="w-50 d-flex">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a class="btn" href="login.do">login</a>
          </li>
          <li class="btn breadcrumb-item active" id="bcarp" aria-current="page">
            AYURVEDIC REASEARCH portal
          </li>
          <li class="btn">
            <button class="goBack btn btn-outline-danger d-none">
              <i class="bi bi-arrow-left"></i>goBack
            </button>
          </li>
        </ol>
      </nav>
      <div class="arp">
        <div class="arp-heading">
          <span id="ayur">AYURVEDIC</span>
          <span id="rp">REASEARCH PORTAL</span>
        </div>
        <div class="arp-body-one row">
          <div class="col-4"></div>

          <div class="col-4 ayur-name ml-2">
            <div class="name row">
              <div class="col-6">
                <label class="form-check-label" for="ayurveda">
                  AYURVEDA
                </label>
              </div>
              <div class="col-6">
                <input
                  class="form-check-input"
                  type="checkbox"
                  value="AYURVEDA"
                  id="ayurveda"
                />
              </div>
            </div>
            <div class="name row">
              <div class="col-6">
                <label class="form-check-label" for="unani"> UNANI </label>
              </div>
              <div class="col-6">
                <input
                  class="form-check-input"
                  type="checkbox"
                  value="UNANI"
                  id="unani"
                />
              </div>
            </div>
            <div class="name row">
              <div class="col-6">
                <label class="form-check-label" for="siddha"> SIDDHA </label>
              </div>
              <div class="col-6">
                <input
                  class="form-check-input"
                  type="checkbox"
                  value="SIDDHA"
                  id="siddha"
                />
              </div>
            </div>
            <div class="name row">
              <div class="col-6">
                <label class="form-check-label" for="homeopathy">
                  HOMEOPATHY
                </label>
              </div>
              <div class="col-6">
                <input
                  class="form-check-input"
                  type="checkbox"
                  value="HOMEOPATHY"
                  id="homeopathy"
                />
              </div>
            </div>

            <button id="arp-btn-one">PRESS OK AFTER SELECTION</button>
          </div>
          <div class="col-4"></div>
        </div>
        <div class="arp-body-two d-none">
          <div class="arp-two-heading row">
            <div class="col-4"></div>
            <div class="col-4">
              <h3 id="slogan" style="color: #1f7a59; margin-left: 50px">
                "Meet your own health Tech "
              </h3>
            </div>
            <div class="col-4"></div>
          </div>
          <div class="arp-two-body row">
            <div class="col-5"></div>
            <div class="col-7">
              <form
                action="search_medicines.do"
                class="text-center"
                method="post"
              >
                <input type="hidden" name="type" id="types" />
                <table class="arp-two-table">
                  <tr>
                    <td class="right">Body Symptoms</td>
                    <td class="left">
                      <input
                        type="text"
                        name="main_indications"
                        id=""
                        class="form-select"
                      />
                    </td>
                  </tr>
                  <tr>
                    <td class="right">Preffered Use</td>
                    <td class="left">
                      <select
                        name="preffered"
                        id="preffered_use"
                        class="form-select"
                      >
                        <option value="opd">
                          Out Patient Department (OPD)
                        </option>
                        <option value="ipd">In Patient Department (IPD)</option>
                      </select>
                    </td>
                  </tr>
                  <!-- <tr>
                    <td class="right">Precaution :</td>
                    <td class="left">
                      <select
                        name="precautions"
                        id="precaution_select"
                        class="form-select"
                      >
                        <option>Select Precaution</option>
                      </select>
                    </td>
                  </tr> -->
                  <tr>
                    <td colspan="2" class="btn">
                      <button type="submit" class="btn btn-outline-warning">
                        View Medicines
                      </button>
                    </td>
                  </tr>
                </table>
              </form>
            </div>

            <div class="col-2"></div>
          </div>
        </div>
        <!-- <div class="arp-body-three d-none"></div> -->
      </div>
    </div>

    <%@ include file="footer.jsp" %>

    <script src="static/js/ayuirvedic_research_portal.js"></script>
  </body>
</html>
