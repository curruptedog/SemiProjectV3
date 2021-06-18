<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="thumbURL" value="http://localhost/thumb/" />


<title>게시판-새글쓰기</title>

<div id="main">
    <div class="col-12">
    <h2 style="font-weight: bold;"><i class="fas fa-images"></i> 갤러리</h2>
<hr>
</div> <!-- 페이지 타이틀 -->

<div class="row">

    <div class="col-11 text-right">
        <button type="button" id="newgalbtn" name="newgalbtn" class="btn btn-light">
            <i class="fas fa-plus-circle"></i> 사진올리기</button>
    </div>
</div> <!-- 검색과 버튼 -->

<div class="row">
    <div class="col-12">
        <ul class="list-inline moveright">

            <c:forEach var="g" items="${gals}" >
                <c:set var="f" value="${fn:split(g.fnames, '/')[0]}" />
                <c:set var="pos" value="${fn:indexOf(f,'.')}" />
                <c:set var="fname" value="${fn:substring(f, 0, pos)}" />
                <c:set var="fext" value="${fn:substring(f, pos+1, fn:length(f))}" />
            <li class="list-inline-item  pushdown">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top" onclick="showimg('${g.gno}');"
                         src="${thumbURL}small_${g.gno}_${fname}${g.uuid}.${fext}">
                    <div class="card-body">

                        <h5 class="card-title">${g.title}</h5>
                        <p class="card-text">${g.userid}
                        <span class="pushright">${fn:substring(g.regdate, 0, 10)}</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> ${g.views}
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> ${g.thumdup}</span></p>

                    </div> <!-- carString uuid = imgutil.makeUUID();   // 식별코드 생성d body -->
                </div> <!-- card -->

            </li>
            </c:forEach>


            <hr>
        </ul>
    </div>

</div> <!-- 이미지 리스트 -->

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






