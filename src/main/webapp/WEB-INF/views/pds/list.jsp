<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


    <title>자료실</title>
  

<div id="main">
    <div class="col-12">
    <h2 style="font-weight: bold;"><i class="fas fa-box-open"></i> 자료실</h2>
<hr>
</div> <!-- 페이지 타이틀 -->

<div class="row">
    <div class="col-5 offset-1">
        <div class="form-group row">
            <select class="form-control col-3 border-primary" name="findtype" id="findtype">
                <option value="txtitle">제목</option>
                <option value="titcont">제목+내용</option>
                <option value="userid">작성자</option>
                <option value="txtcontent">내용</option>
            </select>
            <input type="text" name="findkey" id="findkey" class="form-fontrol col-4 border-primary">&nbsp;
            <button type="button" id="findbtn" class="btn btn-primary"><i class="fas fa-search"></i> 검색</button>
        </div>
    </div>
    <div class="col-5 text-right">
        <button type="button" id="newpdsbtn" name="newpdsbtn" class="btn btn-light"><i class="fas fa-plus"></i> 새글쓰기</button>
    </div>
</div> <!-- 검색과 버튼 -->

    <div class="col-10 offset-1 row">

            <table class="table table-striped text-center table-hover">
                <thead style="background: #dff0d8">
                    <tr>
                        <th style="width: 7%">번호</th>
                        <th style="">제목</th>
                        <th style="width: 12%">작성자</th>
                        <th style="width: 10%">작성일</th>
                        <th style="width: 7%">추천</th>
                        <th style="width: 7%">조회</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="text-danger">공지</th>
                        <th><span class="badge badge-danger">Hot</span>
                            Lorem ipsum
                        </th>
                        <th>운영자</th>
                        <th>2021.05.21</th>
                        <th>10</th>
                        <th>521</th>
                    </tr>

                    <c:forEach var="p" items="${pds}">
                    <tr>
                        <td>${p.pno}</td>
                        <td><a href="/pds/view?pno=${p.pno}">
                            ${p.title}</a>
                        </td>
                        <td>${p.userid}</td>
                        <td>${fn.substring(p.regdate, 0, 10)}</td>
                        <td>${p.thumdup}</td>
                        <td>${p.views}</td>
                    </tr>
                    </c:forEach>

                </tbody>

            </table>

    </div>

    <div class="row">
        <div class="col-12">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a href="#" class="page-link">이전</a></li>

                <li class="page-item active"><a href="#" class="page-link">1</a></li>
                <li class="page-item"><a href="#" class="page-link">2</a></li>
                <li class="page-item"><a href="#" class="page-link">3</a></li>
                <li class="page-item"><a href="#" class="page-link">4</a></li>
                <li class="page-item"><a href="#" class="page-link">5</a></li>
                <li class="page-item"><a href="#" class="page-link">6</a></li>
                <li class="page-item"><a href="#" class="page-link">7</a></li>
                <li class="page-item"><a href="#" class="page-link">8</a></li>
                <li class="page-item"><a href="#" class="page-link">9</a></li>
                <li class="page-item"><a href="#" class="page-link">10</a></li>

                <li class="page-item"><a href="#" class="page-link">다음</a></li>
            </ul>
        </div>
    </div> <!-- 페이지 네이션 -->


</div> <!-- main -->

    <script>
        $('#newbdbtn').click(function() {location.href='write.html';})
    </script>
    <script>
        $('#joinbtn').click(function() {location.href='/join/agree.html';})
    </script>


