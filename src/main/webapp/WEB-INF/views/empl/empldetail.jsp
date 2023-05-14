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

    <title>사원 상세 정보</title>

    <!-- Custom fonts for this template-->
    <link href="/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

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
                    <h1 class="h3 mb-4 text-gray-800">사원 상세</h1>
                    <p class="mb-4">선택한 사원의 상세 정보입니다.</p>
                </div>
                <!-- /.container-fluid -->
            <form action="/modify/empl/${oneEmpl.empno}" method="GET" name="detailForm" id="detailForm">
                <table align="center" cellpadding="5" cellspacing="1" width="600" border="1" class = "table">
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">직원번호</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span id="empno" style="font-size:12pt;">
                                ${oneEmpl.empno}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">부서번호</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span id="deptno" style="font-size:12pt;">
                                ${oneEmpl.deptno}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">부서이름</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                ${oneEmpl.department.dname}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">평가등급</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                ${oneEmpl.evalGrade}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">이름</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                ${oneEmpl.ename}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">나이</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                ${oneEmpl.age}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">성별</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                ${oneEmpl.gender}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">직급</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                ${oneEmpl.position}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">상태</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                ${oneEmpl.status}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">연봉</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                ${oneEmpl.sal}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">연봉증가율(%)</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                ${oneEmpl.evaluation.salChange}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">승진여부</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                ${oneEmpl.evaluation.promotion}
                                </span>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td width="150" height="20">
                            <p align="center"><b><span style="font-size:12pt;">&nbsp;</span></b></p>
                        </td>
                        <td width="450" height="20" align="center">
                            <b>
                                <span style="font-size:12pt;">
                                <button class="btn btn-primary btn-user btn-block" type="submit">
                                    사원 정보 수정
                                </button>
                                </span>
                            </b>
                        </td>
                    </tr>
                </table>
            </form>

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
    <script src="/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/bootstrap/js/sb-admin-2.min.js"></script>

</body>

</html>