<%@ page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="fname" value="${fn:split(g.fnames, '/')}" />

  
<div id="main" class="row">
<script src="https://www.google.com/recaptcha/api.js"></script>
    <div class="col-12">
    <h2 style="font-weight: bold;"><i class="fas fa-comments"></i> 자유 게시판</h2>
    <hr>
    </div> <!-- 페이지 타이틀 -->

    <div class="col-12 row">
    <div class="col-5 offset-1">
        <h3><i class="fas fa-edit"></i> 수정하기</h3></div>
    <div class="col-5 text-right">
        <button type="button" id="back2gal" class="btn btn-light">
            <i class="bi bi-card-list"></i> 목록으로</button>
    </div>
    </div> <!-- 섹션 타이틀 -->

    <div class="col-10 offset-1 card card-body bg-light">
        <form name="modgalfrm" id="modgalfrm">
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-group row">
                        <label class="col-2 col-form-label text-danger text-right" for="title">제목</label>
                        <input type="text" class="col-9 form-control border-danger" name="title" id="title"
                               value="${g.title}">
                    </div>

                    <div class="form-group row">
                        <label class="col-2 col-form-label text-danger text-right" for="userid">작성자</label>
                        <input type="text" class="col-3 form-control border-danger" name="userid" id="userid"
                        readonly value="${g.userid}">
                    </div>

                    <div class="form-group row">
                        <label class="col-2 col-form-label text-danger text-right" for="contents">본문 내용</label>
                        <textarea class="col-9 col-form-label border-danger form-control" name="contents" id="contents"
                                  rows="22" value="${g.contents}"></textarea>
                    </div>

                    <!-- 첨부파일들 -->
                    <div class="form-group row">
                        <label class="col-2 col-form-label text-danger text-right" for="file1">파일 첨부</label>

                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" id="die1" class="custom-control-input">
                            <label for="die1" class="custom-control-label"></label>
                        </div>
                        <div class="custom-file col-8">
                            <input type="file" name="img" id="file1"
                                   class="custom-file-input" disabled>
                            <label class="custom-file-label">${fname[0]}</label>
                        </div>
                    </div>

                    <div class="form-group-row">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" id="die2" class="custom-control-input">
                            <label for="die2" class="custom-control-label"></label>
                        </div>
                        <div class="custom-file col-8">
                        <input type="file" name="img" id="file2"
                               class="custom-file-input" disabled>
                        <label class="custom-file-label">${fname[1]}</label>
                        </div>
                    </div>

                    <div class="form-group-row">
                        <div class="custom-control custom-checkbox offset-2">
                            <input type="checkbox" id="die3" class="custom-control-input">
                            <label for="die3" class="custom-control-label"></label>
                        </div>
                        <div class="custom-file col-8">
                        <input type="file" name="img" id="file3"
                               class="custom-file-input" disabled>
                        <label class="custom-file-label">${fname[2]}</label>
                        </div>
                    </div>


                    <div class="form-group align-items-center">
                        <label class="col-2 col-form-label text-danger text-right">자동<br> 입력방지</label>
                        <div class="g-recaptcha col-7" data-sitekey="6LdoIwgbAAAAALfBPVcgpuKT8532BKHw6wusA_l1" ></div>
                		<input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                        <div class="form-group row col-10 offset-2">
                        <input type="text" id="findposttxt" class="col-">
                            &nbsp;&nbsp;
                        <button type="button" id="findpostbtn" class="btn btn-dark"><i class="bi bi-question-circle"></i> 다른 capcha 보기</button></div>
                    </div> <!-- 캡챠 -->

                    <div class="row">
                    <div class="col text-center">
                        <hr>
                        <button type="button" id="modgal" class="btn btn-primary"><i class="bi bi-check-lg"></i> &nbsp;입력완료</button>
                        <button type="reset" id="cancel" class="btn btn-danger"><i class="bi bi-x-lg"></i> &nbsp;취소하기</button>
                    </div></div> <!-- 버튼들 -->


                </div>
            </div> <!-- 실명확인 입력 폼 -->

            <%-- 첨부파일 수정여부를 저장하기 위한 변수 --%>
            <input type="hidden" name="todie" id="todie" >
            <%-- uuid 를 저장하기 위한 변수 --%>
            <input type="hidden" name="uuid" id="uuid" value="${g.uuid}" >
            <input type="hidden" name="gno" id="gno" value="${g.gno}" >

        </form>


</div>
</div>



