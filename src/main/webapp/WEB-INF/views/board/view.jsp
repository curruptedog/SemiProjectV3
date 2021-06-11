<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--
    게시판 댓글 처리 : reply
    댓글 번호    댓글 내용    작성자    작성일    부모글 번호    부모 댓글번호
    1            댓글댓글     abc123   2021.06.11     100           1
    4            뭔데이게     bake     2021.06.11     100           1
    2            댓글을작성   abc123   2021.06.11     100           2
    3            댓글댓글     catCat   2021.06.11     100           3

    => 댓글 출력 순서는 부모글 번호로 추려낸 후, 댓글 번호로 정렬
    => 댓글 번호와 부모댓글 번호가 같으면 부모댓글, 다르면 대댓글
--%>

<%-- 줄바꿈 기호를 변수로 생성 : br 태그 변환 필요 --%>
<c:set var="newChar" value="
" scope="application"/>


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
                    <h2>${bd.title}</h2></th></tr>
                <tr class="tbbg2"><td style="width: 50%">${bd.userid}</td>
                <td class="text-right">${bd.regdate} / ${bd.thumdup} / ${bd.views}</td></tr>
                <tr class="tbbg3 bdcsize"><td colspan="2">
                    ${fn:replace(bd.contents, newChar, "<br>")}
                    </td></tr>
            </table>
        </div> <!-- 본문 테이블 -->

        <div class="row">
            <div class="col-5 offset-1">
                <%-- 자신이 작성한 글에 대해 수정/삭제 버튼이 표시되어야 함 --%>
                <c:if test="${not empty UID and UID eq bd.userid}" >
                <div class="form-group row">
                    <button type="button" id="modifybtn" class="btn btn-warning text-white"><i class="fas fa-user-edit"></i> 수정하기</button>&nbsp;
                    <button type="button" id="deletebtn" class="btn btn-danger"><i class="fas fa-trash-alt"></i> 삭제하기</button>
                </div>
                </c:if>
            </div>
            <div class="col-5 text-right">
                <button type="button" id="listbtn" class="btn btn-light"><i class="bi bi-card-list"></i> 목록으로</button>
            </div>
        </div> <!-- 수정,삭제 버튼 -->

    </div> <!-- 본문 -->

    <div>
        <div class="row">
            <h2 class="col-10 offset-1">
                <i class="fas fa-comment-dots"></i> 댓글</h2><hr></div>
        <table class="table col-10 offset-1">
            <c:forEach var="r" items="${rps}" >
                <c:if test="${r.rno eq r.rpno}" >
                    <tr><td><h4>${r.userid}</h4></td>
                        <td><div  class="cmtbg1">${r.regdate}
                        <span style="float:right">
                            <c:if test="${not empty UID}" >
                                <a href="javascript:addReply('${r.rno}')"> [추가] </a></c:if>

                            <c:if test="${not empty UID and UID eq r.userid}" >
                                [수정] [삭제] </c:if></span></div>
                            <p>${r.reply}</p></td>
                    </tr>
                </c:if> <%-- 댓글 --%>

                <c:if test="${r.rno ne r.rpno}" >
                    <tr><td></td>
                        <td><div  class="cmtbg2">
                            <span>${r.userid}</span>
                            <span class="pushright">${r.regdate}</span></div>
                            <p>${fn:replace(r.reply, newChar, "<br>")}</p></td></tr>
                </c:if> <%-- 대 댓글 --%>

            </c:forEach>
        </table>
    </div> <!-- 댓글 목록 -->

    <div>
        <div class="row">
            <form name="replyfrm" id="replyfrm"
                  class="card card-body bg-light col-10 offset-1">
                <div class="form-group row justify-content-center">
                    <label class="col-form-label col-2 pushdwn" for="reply">${UID}</label>
                    <textarea class="form-control col-7" name="reply" id="reply" rows="5"></textarea>&nbsp;&nbsp;
                    <button class="btn btn-dark form-control col-2 pushdwn" type="button" id="newbrbtn" name="newbrbtn">
                        <i class="fas fa-reply"></i> 댓글쓰기</button>
                </div>
                <input type="hidden" name="userid" value="${UID}" />
                <input type="hidden" name="bdno" value="${param.bdno}" />
                <!-- 주소창에 있는 요소는 params로 불러올 수 있음 -->
            </form>
        </div>
    </div> <!-- 댓글 작성 -->


</div> <!-- main -->

<!-- 대댓글 작성을 위한 모달 대화상자  -->
<div class="modal hide" id="replyModal" name="replyModal" rol="dialog" >
    <div class="modal-dialog" role="document">
        <div class="modal-content" >
            <div class="modal-header" >
                <h3 class="modal-title">대댓글 쓰기</h3>
            </div>

            <div class="modal-body" >
                <form name="rpfrm" id="rpfrm" class="well form-inline">
                    <textarea name="reply" id="rreply" rows="8" cols="75" class="" ></textarea>
                    <input type="hidden" name="userid" value="${UID}" >
                    <input type="hidden" name="bdno" value="${param.bdno}" >
                    <input type="hidden" name="rpno" id="rpno" >
                </form>
            </div>

            <div class="modal-footer" >
                <button type="button" id="newrrpbtn" class="btn btn-warning">대댓글 작성</button>
            </div>
        </div>
    </div>
</div>


  