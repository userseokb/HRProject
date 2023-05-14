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

    <title>사원 목록</title>

    <!-- Custom fonts for this template -->
    <link href="bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="bootstrap/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

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

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">사원 목록</h1>
                    <p class="mb-4">현재 존재하는 사원 목록입니다.</p>

                    <!-- DataTales Example 수정-->
                    <div class="card shadow mb-4">
                        <!--<div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">사원 목록</h6>
                        </div>--!>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>직원번호</th>
                                            <th>부서번호</th>
                                            <th>평가등급</th>
                                            <th>이름</th>
                                            <th>나이</th>
                                            <th>성별</th>
                                            <th>직급</th>
                                            <th>상태</th>
                                            <th>연봉</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <!-- 반복 출력 추가 --!>
                                    <c:forEach items="${requestScope.allEmpl}" var="empl">
                                        <tr>
                                            <td>${empl.empno}</td>
                                            <td>${empl.deptno}</td>
                                            <td>${empl.evalGrade}</td>
                                            <td>${empl.ename}</td>
                                            <td>${empl.age}</td>
                                            <td>${empl.gender}</td>
                                            <td>${empl.position}</td>
                                            <td>${empl.status}</td>
                                            <td>${empl.sal}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
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
    <script src="bootstrap/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="bootstrap/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="bootstrap/js/demo/datatables-demo.js"></script>

</body>

</html>