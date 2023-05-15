<!-- 한글 깨짐 해결 --!>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <title>메인 페이지</title>

    <!-- Custom fonts for this template-->
    <link href="bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

    <!-- 따로 뺀 sidebar -->
    <%@ include file="/WEB-INF/views/commons/sidebar.jsp" %>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

            <!-- 따로 뺀 topbar -->
            <%@ include file="/WEB-INF/views/commons/topbar.jsp" %>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Content Row -->

                    <div class="row">
                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">현재 직원 상태</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-pie pt-4 pb-2">
                                        <canvas id="myPieChart"></canvas>
                                    </div>
                                    <div class="mt-4 text-center small">
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-primary"></i> 정상
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> 휴가
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-info"></i> 퇴사
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- 따로 뺀 footer -->
            <%@ include file="/WEB-INF/views/commons/footer.jsp" %>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- 따로 뺀 Logout Modal -->
    <%@ include file="/WEB-INF/views/commons/logoutmodal.jsp" %>

    <!-- Bootstrap core JavaScript-->
    <script src="bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="bootstrap/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="bootstrap/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="bootstrap/js/demo/chart-area-demo.js"></script>

    <script>
    var ctx = document.getElementById("myPieChart");
    var config = {
                   type: 'doughnut',
                   data: {
                     labels: ["정상", "휴가", "퇴사"],
                     datasets: [{
                       data: [60, 30, 10],
                       backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
                       hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
                       hoverBorderColor: "rgba(234, 236, 244, 1)",
                     }],
                   },
                   options: {
                     maintainAspectRatio: false,
                     tooltips: {
                       backgroundColor: "rgb(255,255,255)",
                       bodyFontColor: "#858796",
                       borderColor: '#dddfeb',
                       borderWidth: 1,
                       xPadding: 15,
                       yPadding: 15,
                       displayColors: false,
                       caretPadding: 10,
                     },
                     legend: {
                       display: false
                     },
                     cutoutPercentage: 80,
                   },
                 };

    var myPieChart = new Chart(ctx, config);
    var data = config.data.datasets[0].data;
    axios.get('http://localhost:8083/api/empl/status')
    		        .then(response => response.data)
    		        .then(result => {
    		        data[0] = result.normal;
    		        data[1] = result.vacation;
    		        data[2] = result.resign;
    		        myPieChart.update();
    		        });
    </script>

</body>

</html>