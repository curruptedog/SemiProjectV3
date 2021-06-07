<%@ page pageEncoding="UTF-8"%>
<header class="row">
    <!-- col 클래스 넣어서 아래로 내려올거 옆으로 이동시킴 -->
    <div class="col"><h1>Lorem Ipsum</h1></div>
    <div class="col text-right"><h1>
       <button type="button" class="btn btn-danger" data-toggle="modal"
               data-target="#loginfrm">로그인</button>
       <button type="button" class="btn btn-primary">회원가입</button></h1></div>
</header>
<nav class="navbar-expand navbar-dark bg-dark">
    <ul class="navbar-nav nav-fill w-100">
        <li class="nav-item"><a href="/" class="nav-link">프로젝트소개</a></li>
        <li class="nav-item"><a href="/join/agree" class="nav-link">회원가입</a></li>
        <li class="nav-item"><a href="/board/list" class="nav-link">게시판</a></li>
        <li class="nav-item"><a href="/pds/list" class="nav-link">자료실</a></li>
        <li class="nav-item"><a href="/gallery/list" class="nav-link">갤러리</a></li>
        <li class="nav-item"><a href="/admin" class="nav-link">관리자</a></li>
    </ul>
</nav>