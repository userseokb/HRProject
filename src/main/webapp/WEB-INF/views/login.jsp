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

    <title>로그인</title>

    <!-- Custom fonts for this template-->
    <link href="bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">인사관리 V1</h1>
                                        <h1 class="h4 text-gray-900 mb-4">로그인이 필요합니다!</h1>
                                    </div>
                                    <form class="user">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="empno" name="empno" placeholder="사원번호를 입력해 주세요">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="ename" name="ename" placeholder="이름을 입력해 주세요">
                                        </div>

                                        <button class="btn btn-primary btn-user btn-block" onclick = "loginCheck();" type="button">
                                            로그인
                                        </button>
                                    </form>
                                    <hr>
                                    <span id="loginMsg" style="font-size:11pt; color:red;"></span>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="bootstrap/js/sb-admin-2.min.js"></script>

<script type="text/javascript">
function loginCheck() {
    var empno = document.getElementById("empno");
    var ename = document.getElementById("ename");

    var reg = /^[0-9]+$/; //숫자만 입력하는 정규식
    if (!reg.test(empno.value)) {
        alert("사원번호는 숫자만 입력할 수 있습니다.");
        empno.focus();
        return false;
    };

    if (ename.value == "") {
        alert("사원 이름을 입력해 주세요");
        ename.focus();
    return false;
    };

    const loginMsg = document.getElementById('loginMsg');
    axios.post("/login", {
            empno: empno.value,
            ename: ename.value
    })
    .then(function (response) {
    if(response.data==0) {
    loginMsg.innerHTML = '사원번호나 사원 이름이 일치하지 않습니다.';
    } else if(response.data==1) {
    loginMsg.innerHTML = '인사팀에 소속되지 않았습니다.';
    } else if(response.data==2) {
        window.location.href = '/main';
    }})

      //입력 값 전송
     <!-- document.loginForm.submit(); //유효성 검사의 포인트 -->

}

</script>
</body>

</html>