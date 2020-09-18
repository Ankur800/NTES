<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>


<html>

    <link rel="short icon" type="image/png" href="/static/images/favicon.ico"/>


    <head>

        <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>

    </head>

    <style>
        h1 {
          font-size: 30px;
          color: #fff;
          text-transform: uppercase;
          font-weight: 300;
          text-align: center;
          margin-bottom: 15px;
        }
        table {
          width: 100%;
          table-layout: fixed;
        }
        .tbl-header {
          background-color: rgba(255, 255, 255, 0.3);
        }
        .tbl-content {
          height: 300px;
          overflow-x: auto;
          margin-top: 0px;
          border: 1px solid rgba(255, 255, 255, 0.3);
        }
        th {
          padding: 20px 15px;
          text-align: left;
          font-weight: 500;
          font-size: 12px;
          color: #fff;
          text-transform: uppercase;
        }
        td {
          padding: 15px;
          text-align: left;
          vertical-align: middle;
          font-weight: 300;
          font-size: 12px;
          color: #fff;
          border-bottom: solid 1px rgba(255, 255, 255, 0.1);
        }

        /* demo styles */

        @import url(https://fonts.googleapis.com/css?family=Roboto:400, 500, 300, 700);
        body {
          background: -webkit-linear-gradient(left, #25c481, #25b7c4);
          background: linear-gradient(to right, #25c481, #25b7c4);
          font-family: "Roboto", sans-serif;
        }
        section {
          margin: 50px;
        }

        /* follow me template */
        .made-with-love {
          margin-top: 40px;
          padding: 10px;
          clear: left;
          text-align: center;
          font-size: 10px;
          font-family: arial;
          color: #fff;
        }
        .made-with-love i {
          font-style: normal;
          color: #f50057;
          font-size: 14px;
          position: relative;
          top: 2px;
        }
        .made-with-love a {
          color: #fff;
          text-decoration: none;
        }
        .made-with-love a:hover {
          text-decoration: underline;
        }

        /* for custom scrollbar for webkit browser*/

        ::-webkit-scrollbar {
          width: 6px;
        }
        ::-webkit-scrollbar-track {
          -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
        }
        ::-webkit-scrollbar-thumb {
          -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
        }

    </style>

    <body>
        <section>
          <!--for demo wrap-->
          <h1>Train Between Stations</h1>
          <div class="tbl-header">
            <table cellpadding="0" cellspacing="0" border="0">
              <thead>
                <tr>
                  <th>Train No.</th>
                  <th>Train Name</th>
                  <th>Source</th>
                  <th>Destination</th>
                  <th>Expected Arrival</th>
                  <th>Delay in Arrival</th>
                  <th>Expected Departure</th>
                  <th>Delay in Departure</th>
                  <th>Platform</th>
                </tr>
              </thead>
            </table>
          </div>
          <div class="tbl-content">
            <table cellpadding="0" cellspacing="0" border="0">
              <tbody>

                <c:forEach var="train" items="${TRAINS}">
                    <tr>
                      <td>${train.trainNo}</td>
                      <td>${train.trainName}</td>
                      <td>${train.fromStationCode}</td>
                      <td>${train.toStationCode}</td>
                      <td>${train.actualArrival}</td>
                      <td>${train.delayedArrival}</td>
                      <td>${train.actualDeparture}</td>
                      <td>${train.delayedDeparture}</td>
                      <td>${train.platformNo}</td>

                    </tr>

                </c:forEach>

              </tbody>
            </table>
          </div>
        </section>

        <script>
            //check for Navigation Timing API support
            if (window.performance) {
              console.info("window.performance works fine on this browser");
            }
            console.info(performance.navigation.type);
            if (performance.navigation.type == performance.navigation.TYPE_RELOAD) {
              location.href = "/welcome";
            } else {
              console.info( "This page is not reloaded");
            }
        </script>

    </body>
</html>