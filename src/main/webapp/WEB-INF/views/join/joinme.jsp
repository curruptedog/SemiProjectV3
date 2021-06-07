<%@ page pageEncoding="UTF-8"%>

<div id="main">
<script src="https://www.google.com/recaptcha/api.js"></script>
    <div class="col-12">
    <h2 ><i class="bi bi-people-fill" style="font-size: 3rem;"></i>회원가입</h2>
    <hr>
    </div> <!-- 페이지 타이틀 -->

    <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item active" aria-current="page">
            <button type="button" disabled class="btn btn-success">이용약관</button></li>
        <li class="breadcrumb-item ">
            <button type="button" disabled class="btn btn-success">가입인증</button></li>
        <li class="breadcrumb-item active">
            <button type="button" disabled class="btn btn-secondary">회원정보입력</button></li>
        <li class="breadcrumb-item">
            <button type="button" disabled class="btn btn-secondary">가입완료</button></li>
    </ol>
    </nav> <!-- 브레드크럼 -->



<div class="col-10">
   <h2>회원정보 입력</h2>
       <small class="text-muted">회원정보는 개인정보 취급방침에 따라 안전하게 보호되며, 회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.</small>
   <hr>
</div> <!-- 섹션 타이틀 -->

<div class="card card-body bg-light">
    <h3>일반회원</h3>
    <form name="joinfrm" id="joinfrm">
        <div class="col-11 offset-1">
            <div class="form-group row">
                    <label class="col-3 col-form-label text-danger text-right" for="name">이름</label>
                    <input type="text" class="col-2 form-control border-danger" name="name" id="name" readonly>
            </div> <!-- 이름 -->

        <div class="form-group row">
                <label class="col-3 col-form-label text-danger text-right" for="jumin1">주민번호</label>
                <input type="text" name="jumin1" id="jumin1" class="col-2 form-control border-danger" readonly>
                <span class="col-form-label">&nbsp;&mdash;&nbsp;</span>
                <input type="text" id="jumin2" class="col-2 form-control border-danger" readonly>
                &nbsp;
        </div> <!-- 주민번호 -->

        <div class="form-group row align-items-center">
                <label class="col-3 col-form-label text-danger text-right" for="uid">아이디</label>
                <input type="text" class="col-3 form-control border-danger" name="uid" id="uid">
                <span class="text-muted">&nbsp;&nbsp;6~16 자의 영문 소문자, 숫자와 특수기호(_) 만 사용할 수 있습니다.</span>
        </div> <!-- 아이디 -->

        <div class="form-group row align-items-center">
                <label class="col-3 col-form-label text-danger text-right" for="pswd">비밀번호</label>
                <input type="text" class="col-3 form-control border-danger" name="pswd" id="pswd">
                <small class="text-muted">&nbsp;&nbsp;6~16 자의 영문 소문자, 숫자와 특수문자 사용할 수 있습니다.</small>
        </div> <!-- 비번 -->

        <div class="form-group row align-items-center">
                <label class="col-3 col-form-label text-danger text-right" for="chkpswd">비밀번호 확인</label>
                <input type="text" class="col-3 form-control border-danger" name="pswd" id="pswd">
                <small class="text-muted">&nbsp;&nbsp;이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요.</small>
        </div> <!-- 비번 확인 -->

        <div class="form-group row">
                <label class="col-3 col-form-label text-danger text-right" for="zip1">우편번호</label>
                <input type="text" id="zip1" class="col-1 form-control border-danger" readonly><span class="col-form-label">&nbsp;&mdash;&nbsp;</span>
                <input type="text" id="zip2" class="col-1 form-control border-danger" readonly>
                <span>&nbsp;&nbsp;&nbsp;</span>
                <button type="button" id="findpostbtn" class="btn btn-dark" data-toggle="modal" data-target="#zipcode"><i class="bi bi-question-circle"></i> 우편번호 찾기</button>
        </div> <!-- 우편번호 -->

        <div class="form-group row">
                <label class="col-3 col-form-label text-danger text-right" for="addr1">주소</label>
                <input type="text" name="addr1" id="addr1" class="col-4 form-control border-danger">
                &nbsp;
                <input type="text" name="addr2" id="addr2" class="col-4 form-control border-danger">
        </div> <!-- 주소 -->

        <div class="form-group row">
            <label class="col-3 col-form-label text-danger text-right" for="emladdr">전자우편 주소</label>
            <!-- <label class="col-3 col-form-label border-warning sr-only" for="inlineFormInput">이메일</label> -->
            <input type="text" class="col-2 form-control border-danger" name="email" id="email">

            <div class="input-group-append border-danger">
                <span class="input-group-text border-danger">@</span> </div>
            <input type="text" class="col-2 form-control align-items-center border-danger" name="email2" id="email2" readonly>
            &nbsp;
            <select class="col-2 border-danger form-control">
                <option>-선택하세요-</option>
                <option>직접입력하기</option>
                <option>naver.com</option>
                <option>daum.com</option>
                <option>google.net</option>
            </select>
       </div> <!-- 이메일 -->

    <div class="form-group row">
                <label class="col-3 col-form-label text-danger text-right" for="tel1">개인 연락처</label>
            <select name="tel1" id="tel1" class="col-2 form-control border-danger">
                <option selected>국번</option>
                <option>010</option>
                <option>011</option>
                <option>016</option>
            </select>
                <span class="col-form-label">&nbsp;&mdash;&nbsp;</span>
                <input type="text" name="tel2" id="tel2" class="col-1 form-control border-danger">
                <span class="col-form-label">&nbsp;&mdash;&nbsp;</span>
                <input type="text" name="tel3" id="tel3" class="col-1 form-control border-danger">
    </div> <!-- 전화번호 -->
    <div class="form-group row align-items-center">
                <label class="col-3 col-form-label text-danger text-right">자동 가입방지</label>
                <div class="g-recaptcha" data-sitekey="6LdoIwgbAAAAALfBPVcgpuKT8532BKHw6wusA_l1" ></div>
                <input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                <button type="button" id="findpostbtn" class="btn btn-dark"><i class="bi bi-question-circle"></i> 다른 capcha 보기</button>
    </div> <!-- 캡챠 -->


    <div class="row">
    <div class="col text-center">
        <hr>
        <button type="button" id="joinbtn" class="btn btn-primary"><i class="bi bi-check-lg"></i> &nbsp;입력완료</button>
        <button type="button" id="c" class="btn btn-danger"><i class="bi bi-x-lg"></i> &nbsp;취소하기</button>
        </div></div>
  </div>
</form>

<!-- 우편번호 찾기 모달 -->
<div id="zipcode" class="modal" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">우편번호 찾기</h3>
                <button type="button" data-dismiss="modal" class="close">&times;</button>
            </div>
            <div class="modal-body">
                <form name="zipfrm" id="zipfrm">
                    <div class="form-inline row justify-content-center">
                        <label class="col-form-label text-primary text-right" for="dong">검색하실 주소의<br> 동 이름을 입력하세요</label>
                        &nbsp;&nbsp;
                        <input type="text" class="col-4 form-control border-primary" name="dong" id="dong">
                        &nbsp;
                        <button type="button" id="findzipbtn" class="col-2 form-control btn btn-primary">검색하기</button>
                    </div>
                    <div class="form-group row">
                        <hr class="col-9">
                        <p class="col-12 text-danger text-center">지역의 읍/면/동의 이름을 공백없이 입력하신 후, [검색하기] 버튼을 클릭하세요.</p>
                        <select class="col-10 offset-1 form-control" size="10">
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger"><i class="bi bi-x-square"></i> 선택하고 닫기</button>
            </div>
        </div>
    </div>
</div>

</div> <!-- 회원정보 입력 -->
</div>

    