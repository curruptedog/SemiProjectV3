<%@ page pageEncoding="UTF-8"%>


    <title>게시판-새글쓰기</title>

    <style>
        .tbbg1 {background: #dff0f8}
        .tbbg2 {background: #ccff99}
        .tbbg3 {background: #F9E79F}
        .pushdwn {margin-top: 45px }
        .cmtbg1 {background: #D3D3D3; padding: 7px 0 ;}
        .cmtbg2 {background: #5F8575; padding: 7px 0 ;}
        .pushright {float: right}

    </style>
  


<div id="main">
    <div class="col-12">
        <h2 style="font-weight: bold;"><i class="fas fa-comments"></i> 자유 게시판</h2>
     <hr>
 </div> <!-- 페이지 타이틀 -->

 <div>
     <div class="row">
         <div class="col-5 offset-1">
             <div class="form-group row">
                 <button type="button" id="prepage" class="btn btn-primary"><i class="fas fa-chevron-left"></i> 이전게시물</button>&nbsp;
                 <button type="button" id="nxtpage" class="btn btn-primary">다음게시물 <i class="fas fa-chevron-right"></i></button>
             </div>
         </div>
         <div class="col-5 text-right">
             <button type="button" id="back2list" class="btn btn-light"><i class="fas fa-plus"></i> 새글쓰기</button>
         </div>
     </div> <!-- 버튼 -->

     <div class="row">
         <table class="table col-10 offset-1">
             <tr class="tbbg1 text-center"><th colspan="2">
                 <h2>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</h2></th></tr>
             <tr class="tbbg2"><td style="width: 50%">작성자</td>
             <td class="text-right">2021.05.21 11:11:11 / 22 / 33 </td></tr>
             <tr class="tbbg3"><td colspan="2">
                 <div><img src="/img/good.jpg" class="img-fluid"></div>
                 <div><img src="/img/maybeblack.gif" class="img-fluid"></div>
                 <div><img src="/img/1b86f811d2ecbd0d6fcf58f7f6ca110b.jpg" class="img-fluid"></div>
                 </td></tr>
             <tr><td colspan="2" class="tbbg4">첨부1 :
                 <img src="/img/png.png"> homework.zip (123kb, 10회 다운로드함)</td></tr>
             <tr><td colspan="2" class="tbbg4">첨부2 :
                 <img src="/img/png.png"> homework.txt (456kb, 10회 다운로드함)</td></tr>
             <tr><td colspan="2" class="tbbg4">첨부3 :
                 <img src="/img/png.png"> homework.png (789kb, 10회 다운로드함)</td></tr>
         </table>
     </div> <!-- 본문 테이블 -->

     <div class="row">
         <div class="col-5 offset-1">
             <div class="form-group row">
                 <button type="button" id="prepage" class="btn btn-warning text-white"><i class="fas fa-user-edit"></i> 수정하기</button>&nbsp;
                 <button type="button" id="nxtpage" class="btn btn-danger"><i class="fas fa-trash-alt"></i> 삭제하기</button>
             </div>
         </div>
         <div class="col-5 text-right">
             <button type="button" id="back2list" class="btn btn-light"><i class="bi bi-card-list"></i> 목록으로</button>
         </div>
     </div> <!-- 수정,삭제 버튼 -->

 </div> <!-- 본문 -->

 <div>
     <div class="row">
         <h2 class="col-10 offset-1">
             <i class="fas fa-comment-dots"></i> 댓글</h2><hr></div>
     <table class="table col-10 offset-1">
         <tr><td><h4>작성자</h4></td>
             <td><div  class="cmtbg1">2021.05.21 10:10:10</div><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque suscipit odio eget condimentum finibus. </p></td>
         </tr>
         <tr><td></td>
             <td><div  class="cmtbg2">
                 <span>작성작성자</span>
                 <span class="pushright">2021.05.21 10:10:10</span></div>
                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque suscipit odio eget condimentum finibus. </p></td></tr>
         <tr><td><h4>작성자</h4></td>
             <td><div  class="cmtbg1">2021.05.21 10:10:10</div><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque suscipit odio eget condimentum finibus. </p></td>
         </tr>
         <tr><td><h4>작성자</h4></td>
             <td><div  class="cmtbg1">2021.05.21 10:10:10</div><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque suscipit odio eget condimentum finibus. </p></td>
         </tr>
         <tr><td><h4>작성자</h4></td>
             <td><div  class="cmtbg1">2021.05.21 10:10:10</div><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque suscipit odio eget condimentum finibus. </p></td>
         </tr>
         <tr><td><h4>작성자</h4></td>
             <td><div  class="cmtbg1">2021.05.21 10:10:10</div><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque suscipit odio eget condimentum finibus. </p></td>
         </tr>
         <tr><td><h4>작성자</h4></td>
             <td><div  class="cmtbg1">2021.05.21 10:10:10</div><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque suscipit odio eget condimentum finibus. </p></td>
         </tr>
         <tr><td><h4>작성자</h4></td>
             <td><div  class="cmtbg1">2021.05.21 10:10:10</div><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque suscipit odio eget condimentum finibus. </p></td>
         </tr>

     </table>
 </div> <!-- 댓글 목록 -->

 <div>
     <div class="row">
         <form name="replyfrm" id="replyfrm"
               class="card card-body bg-light col-10 offset-1">
             <div class="form-group row justify-content-center">
                 <label class="col-form-label col-2 pushdwn" for="reply">작성자</label>
                 <textarea class="form-control col-7" name="reply" id="reply" rows="5"></textarea>&nbsp;&nbsp;
                 <button class="btn btn-dark form-control col-2 pushdwn" type="button"><i class="fas fa-reply"></i> 댓글쓰기</button>
             </div>
         </form>
     </div>
 </div> <!-- 댓글 작성 -->


</div> <!-- main -->



