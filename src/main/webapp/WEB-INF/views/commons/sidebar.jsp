<!-- 한글 깨짐 해결 --!>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Sidebar 여기부터 -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand 수정-->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/main">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">인사관리 <sup>v1</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard  수정-->
            <li class="nav-item active">
                <a class="nav-link" href="/main">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>메인 메뉴</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading 수정-->
            <div class="sidebar-heading">
                관리 기능
            </div>

            <!-- Nav Item - Pages Collapse Menu 수정-->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <!--<i class="fas fa-fw fa-cog"></i>--!>
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>부서 관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!--<h6 class="collapse-header">Custom Components:</h6>--!>
                        <a class="collapse-item" href="/dept">부서 목록</a>
                        <a class="collapse-item" href="cards.html">추가 예정</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu 수정-->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>사원 관리</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="/empl">사원 목록</a>
                        <a class="collapse-item" href="/empl/register">사원 추가</a>
                        <a class="collapse-item" href="utilities-animation.html">추가 예정</a>
                        <a class="collapse-item" href="utilities-other.html">추가 예정</a>
                    </div>
                </div>
            </li>

<!-- 여기까지 --!>

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->