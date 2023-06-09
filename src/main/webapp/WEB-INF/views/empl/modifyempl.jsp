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

    <title>사원 정보 수정</title>
    <!-- Custom fonts for this template-->
    <link href="/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-password-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">사원 정보 수정</h1>
                            </div>
                            <form action="/empl/${employee.empno}" id="modifyForm" name="modifyForm" method="POST" class="user">
                                <input type="hidden" name="_method" value="PUT" /> <!--히든 메소드 사용 --!>
                                <div class="form-group row">
                                <input id="empno" name="empno" type="text" class="form-control form-control-user"
                                    value="${employee.empno}" readonly>
                                </div>
                                <div class="form-group row">
                                <select id = "deptno" name = "deptno" class="form-control">
                                    <option value = "" selected>부서를 선택하세요</option>
                                    <option value=10>인사팀(HR)</option>
                                    <option value=20>마케팅(Marketing)</option>
                                    <option value=30>기획팀(Planning)</option>
                                    <option value=40>개발팀(Development)</option>
                                </select>
                                </div>
                                <div class="form-group row">
                                <select id = "evalGrade" name = "evalGrade" class="form-control">
                                    <option value = "" selected>사원의 평가를 선택하세요</option>
                                    <option value="A">A</option>
                                    <option value="B">B</option>
                                    <option value="C">C</option>
                                    <option value="D">D</option>
                                </select>
                                </div>
                                <div class="form-group row">
                                <input id="ename" name="ename" type="text" class="form-control form-control-user"
                                    value="${employee.ename}" placeholder="사원 이름을 입력하세요">
                                </div>
                                <div class="form-group row">
                                <input id="age" name="age" type="text" class="form-control form-control-user"
                                    value="${employee.age}" placeholder="사원의 나이를 입력하세요">
                                </div>
                                <div class="form-group row">
                                <select id = "gender" name = "gender" class="form-control">
                                    <option value = "" selected>성별을 선택하세요</option>
                                    <option value="M">남자</option>
                                    <option value="F">여자</option>
                                </select>
                                </div>
                                <div class="form-group row">
                                <select id = "position" name = "position" class="form-control">
                                    <option value = "" selected>직급을 선택하세요</option>
                                    <option value="WORKER">사원</option>
                                    <option value="DEPUTY">대리</option>
                                    <option value="CHIEF">과장</option>
                                </select>
                                </div>
                                <div class="form-group row">
                                <select id = "status" name = "status" class="form-control">
                                    <option value = "" selected>현재 사원의 상태를 선택하세요</option>
                                    <option value="NORMAL">정상</option>
                                    <option value="VACATION">휴가</option>
                                    <option value="RESIGN">퇴사</option>
                                </select>
                                </div>
                                <div class="form-group row">
                                <input id="sal" name="sal" type="text" class="form-control form-control-user"
                                    value="${employee.sal}" placeholder="연봉을 입력하세요">
                                </div>
                                <button class="btn btn-primary btn-user btn-block" onclick = "modifyCheck();" type="button">
                                    수정
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/bootstrap/js/sb-admin-2.min.js"></script>

<script type="text/javascript">
function modifyCheck() {
    var empno = document.getElementById("empno");
    var deptno = document.getElementById("deptno");
    var evalGrade = document.getElementById("evalGrade");
    var ename = document.getElementById("ename");
    var age = document.getElementById("age");
    var gender = document.getElementById("gender");
    var position = document.getElementById("position");
    var status = document.getElementById("status");
    var sal = document.getElementById("sal");


    var reg = /^[0-9]+$/; //숫자만 입력하는 정규식
    if (!reg.test(empno.value)) {
        alert("사원번호는 숫자만 입력할 수 있습니다.");
        empno.focus();
        return false;
    };

    var deptValue = (deptno.options[deptno.selectedIndex].value);
    if(deptValue == "") {
        alert("부서를 선택해 주세요");
        return false;
    };

    var evalValue = (evalGrade.options[evalGrade.selectedIndex].value);
    if(evalValue == "") {
        alert("사원 평가를 선택해 주세요");
        return false;
    };

    if (ename.value == "") {
        alert("사원 이름을 입력해 주세요");
        ename.focus();
    return false;
    };

    if (!reg.test(age.value)) {
        alert("나이는 숫자만 입력할 수 있습니다.");
        age.focus();
        return false;
    };

    var genderValue = (gender.options[gender.selectedIndex].value);
    if(genderValue == "") {
        alert("성별을 선택해 주세요");
        return false;
    };

    var posiValue = (position.options[position.selectedIndex].value);
    if(posiValue == "") {
        alert("직급을 선택해 주세요");
        return false;
    };

    var statValue = (status.options[status.selectedIndex].value);
    if(statValue == "") {
        alert("직원의 상태를 선택해 주세요");
        return false;
    };

    if (!reg.test(sal.value)) {
        alert("연봉은 숫자만 입력할 수 있습니다.");
        sal.focus();
        return false;
    };

      //입력 값 전송
      document.modifyForm.submit(); //유효성 검사의 포인트

}
<!-- DB에서 값을 읽어와서 셀렉트박스에 값을 미리 지정 -->
$('#deptno').val("${employee.deptno}").prop("selected",true);
$('#evalGrade').val("${employee.evalGrade}").prop("selected",true);
$('#gender').val("${employee.gender}").prop("selected",true);
$('#position').val("${employee.position}").prop("selected",true);
$('#status').val("${employee.status}").prop("selected",true);


</script>

</body>

</html>