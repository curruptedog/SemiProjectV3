<%@ page pageEncoding="UTF-8"%>


    <title>게시판-새글쓰기</title>
  
<div id="main" class="row">
<script src="https://www.google.com/recaptcha/api.js"></script>
    <div class="col-12">
    <h2 style="font-weight: bold;"><i class="fas fa-box-open"></i> 자료실</h2>
    <hr>
    </div> <!-- 페이지 타이틀 -->

    <div class="col-12 row">
    <div class="col-5 offset-1">
        <h3><i class="bi bi-plus-circle-fill"></i> 새글 쓰기</h3></div>
    <div class="col-5 text-right">
        <button type="button" id="back2list" name="back2list" class="btn btn-light"><i class="bi bi-card-list"></i> 목록으로</button>
    </div>
    </div> <!-- 섹션 타이틀 -->

    <div class="col-10 offset-1 card card-body bg-light">
        <form name="pdsfrm" id="pdsfrm" enctype="multipart/form-data">
            <div class="form-group row">
                <div class="col-12">
                    <div class="form-group row">
                        <label class="col-2 col-form-label text-danger text-right" for="title">제목</label>
                        <input type="text" class="col-9 form-control border-danger" name="title" id="title">
                    </div>

                    <div class="form-group row">
                        <label class="col-2 col-form-label text-danger text-right" for="userid">작성자</label>
                        <input type="text" class="col-3 form-control border-danger" name="userid" id="userid"
                        readonly value="${UID}">
                    </div>

                    <div class="form-group row">
                        <label class="col-2 col-form-label text-danger text-right" for="contents">본문 내용</label>
                        <textarea class="col-9 col-form-label border-danger form-control" name="contents" id="contents" rows="22"></textarea>
                    </div>

                    <div class="form-group row">
                        <label class="col-2 col-form-label text-danger text-right" for="file1">파일 첨부</label>
                        <div class="custom-file col-9">
                            <input type="file" name="file" id="file1"
                                   class="custom-file-input">
                            <label class="custom-file-label">첨부할 파일을 선택하세요</label>
                        </div>
                        <div class="custom-file col-9 offset-2">
                            <input type="file" name="file" id="file2"
                                   class="custom-file-input">
                            <label class="custom-file-label">첨부할 파일을 선택하세요</label>
                        </div>
                        <div class="custom-file col-9 offset-2">
                            <input type="file" name="file" id="file3"
                                   class="custom-file-input">
                            <label class="custom-file-label">첨부할 파일을 선택하세요</label>
                        </div>
                    </div>

                    <div class="form-group align-items-center">
                        <label class="col-2 col-form-label text-danger text-right">자동<br> 입력방지</label>
                        <div class="g-recaptcha" data-sitekey="6LdoIwgbAAAAALfBPVcgpuKT8532BKHw6wusA_l1" ></div>
                		<input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                        <div class="form-group row col-10 offset-2">
                        <input type="text" id="findposttxt" class="col-">
                            &nbsp;&nbsp;
                        <button type="button" id="findpostbtn" class="btn btn-dark"><i class="bi bi-question-circle"></i> 다른 capcha 보기</button></div>
                    </div> <!-- 캡챠 -->

                    <div class="row">
                    <div class="col text-center">
                        <hr>
                        <button type="button" id="newpds" class="btn btn-primary">
                            <i class="bi bi-check-lg"></i> &nbsp;입력완료</button>
                        <button type="reset" class="btn btn-danger">
                            <i class="bi bi-x-lg"></i> &nbsp;다시입력</button>
                    </div></div> <!-- 버튼들 -->


                </div>
            </div> <!-- 실명확인 입력 폼 -->
        </form>


</div>
</div>
