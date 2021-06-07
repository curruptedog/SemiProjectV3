<%@ page pageEncoding="UTF-8"%>


<title>게시판-새글쓰기</title>

<style>
    .moveright {margin-left: 135px}
    .pushright {float: right}
    .pushdown {margin-bottom: 10px}
    .cardwidth {width: 250px;}
    .imgsize {width: 220px; height: 220px; margin-left: 14px; cursor: pointer;}
    img {background: url(/img/cookie.png) no-repeat center;}
</style>
  
<div id="main">
    <div class="col-12">
    <h2 style="font-weight: bold;"><i class="fas fa-images"></i> 갤러리</h2>
<hr>
</div> <!-- 페이지 타이틀 -->

<div class="row">

    <div class="col-11 text-right">
        <button type="button" id="newbdbtn" class="btn btn-light"><i class="fas fa-plus-circle"></i> 사진올리기</button>
    </div>
</div> <!-- 검색과 버튼 -->

<div class="row">
    <div class="col-12">
        <ul class="list-inline moveright">
            <li class="list-inline-item  pushdown">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top" onclick="showing('123');">
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->

            </li>
            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
            </li>

            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
             </li>
            <hr>
            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top" >
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
             </li>

            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top" >
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
             </li>

            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
             </li>
            <hr>
            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
             </li>

            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
             </li>

            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
             </li>
            <hr>
            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
             </li>

            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
             </li>

            <li class="list-inline-item">
                <div class="card cardwidth">
                    <img class="imgsize card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">제목제목</h5>
                        <p class="card-text">작성자
                        <span class="pushright">2021.05.21</span></p>
                        <p class="card-text">
                        <i class="far fa-eye"></i> 15
                        <span class="pushright"><i class="fas fa-thumbs-up"></i> 3</span></p>
                    </div> <!-- card body -->
                </div> <!-- card -->
             </li>
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

<script>
    $('#newbdbtn').click(function() {location.href='write.html';})
</script>
<script>
    $('#joinbtn').click(function() {location.href='/join/agree.html';})
</script>

<script>
    function showing(gno) {location.href='/gallery/view.html'}
</script>


