<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	
	<!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	

    <title>SemiProjectV2</title>
  </head>
  <body>
  	<div class="container">
  		<tiles:insertAttribute name="header" />
        
        <tiles:insertAttribute name="main" />
    
    	<tiles:insertAttribute name="footer" />
    	
    </div>	
    <!-- 로그인 폼 모달 -->
<div class="modal" id="loginmodal" tabindex="-1">
  <div class="modal-dialog">
     <div class="modal-content">
        <div class="modal-header">
           <h3 class="modal-title">로그인</h3>
           <button type="button" class="btn btn-secondary close" data-dismiss="modal" aria-label="Close" id="lgmbtn">
              닫기
            </button>
        </div>
        <div class="modal-body">
            <form name="loginfrm" id="loginfrm" method="post">
           <div class="form-group row text-danger">
              <div class="col-2"></div>
              <label for="userid" class="col-form-label col-3 ">아이디</label>
              <input type="text" name="userid" id="userid" class="form-control col-4 border-danger">
           </div>
           <div class="form-group row text-danger">
              <div class="col-2"></div>
              <label for="passwd" class="col-form-label col-3">비밀번호</label>
              <input type="password" name="passwd" id="passwd" class="form-control col-4 border-danger">
           </div>
           <div class="form-group row">
              <div class="col-4"></div>
           <div class="form-check">
              <input class="form-check-input" type="checkbox" name="uzi" id="uzi" value="1">
              <label class="form-check-label text-warning">로그인 상태 유지</label>
           </div></div> </form>
         </div>
         <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-danger" data-dismiss="modal" id="loginbtn">로그인</button>
            <button type="button" class="btn btn-warning">아이디/비밀번호 찾기</button>
         </div>
     </div>
  </div>
</div>

    <!-- jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    
    <!-- fontawesome src -->
    <script src="https://kit.fontawesome.com/d248479533.js" crossorigin="anonymous"></script>

	<script src="/js/join.js" ></script>
  </body>
</html>