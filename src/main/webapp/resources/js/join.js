// agree
$('#okagree').on('click', function() {
    if ( !$('#agree1').is(':checked') )
        alert('이용약관에 동의하세요.');
    else if ( !$('#agree2').is(':checked') )
        alert('개인정보 수집에 동의하세요.');
    else
        location.href='/join/checkme';
});

// 동의 하지 않음
$('#noagree').on('click', function() {location.href='/';});


// checkme
$('#chk2btn').on('click', function () {
    if ( $('#name2').val() == '' ) alert('이름을 입력하세요.');
    else if ( $('#jumin1').val() == '' || $('#jumin2').val() == '' ) alert('주민번호를 입력하세요.');
    else if ( !$('#chkjumin').is(':checked') ) alert('주민번호 처리 동의에 체크하세요.');
    else {
        const frm = $('#checkfrm2');
        frm.attr('action', '/join/joinme');
        frm.attr('method', 'post');
        frm.submit();
    }
});

// 취소하기 버튼
$('#cance2btn').on('click', function () {
    location.href='/';
});

// userid 중복 체크
$('#userid').on('blur', function () { checkuserid(); });

$('#userid').on('focus', function () {
    $('#uidmsg').text(' 6~16 자의 영문 소문자, 숫자와 특수기호(_) 만 사용할 수 있습니다.')
    $('#uidmsg').attr('style', 'color:black');
});

// ajax check userid
function checkuserid() {
    //
    let uid = $('#userid').val();
    if (uid == '') {    // 아이디를 입력하지 않고 탭을 누른 경우
        $('#uidmsg').text(' 6~16 자의 영문 소문자, 숫자와 특수기호(_) 만 사용할 수 있습니다.')
        $('#uidmsg').attr('style', 'color:black');
        return
    }
    $.ajax({
        url:'/join/checkuid',
        type: 'GET',
        data: { 'uid': uid }
    })
        .done(function (data) {
            // 기본적으로 보여줄 기본값
            let msg = '  사용불가능 아이디 입니다.';
            $('#uidmsg').attr('style', 'color:red !important');

            // 데이터가 0일때 출력할 메세지
            if (data.trim() == '0') {
                msg = '  사용가능한 아이이디 입니다.';
                $('#uidmsg').attr('style', 'color:blue !important');
            }
            $('#uidmsg').text(msg);
        })
        .fail(function (xhr, status, error) {
            alert(xhr.status +'/' + error)
        });
}

// check equal passwd
$('#chkpswd').on('blur', function () {
    if ($('#chkpswd').val() != $('#passwd').val()) {
        $('#chkpdwmsg').text(' 비밀번호가 일치하지 않습니다.')
        $('#chkpdwmsg').attr('style', 'color:red !important');
    } else if ($('#chkpswd').val() == $('#passwd').val()) {
        $('#chkpdwmsg').text(' 비밀번호와 일치합니다.');
        $('#chkpdwmsg').attr('style', 'color:black ');
    }
});

// joinme
$('#joinbtn').on('click', function () {
    if ( $('#userid').val() == '' ) alert('아이디를 입력하세요.');
    else if ( $('#passwd').val() == '' ) alert('비밀번호를 입력하세요.');
    else if ( $('#chkpswd').val() != $('#passwd').val() ) alert('비밀번호를 확인하세요.');
    /* else if ( $('#zip1').val() == '' || $('#zip2').val() == '' )
        alert('우편번호를 입력하세요.'); */
    else if ( $('#addr1').val() == '' || $('#addr2').val() == '' )
        alert('주소를 입력하세요');
    else if ( $('#email').val() == '' || $('#email2').val() == '' )
        alert('email을 입력하세요.');
    else if ( $('#tel1').val() == '' || $('#tel2').val() == '' || $('#tel3').val() == '' )
        alert('전화번호를 입력하세요.');
    else if ( grecaptcha.getResponse() == '' ) alert('captcha를 확인하세요.');
    else {
        $('#jumin').val( $('#jumin1').val() + '-' + $('#jumin2').val() );
        $('#zipcode').val( $('#zip1').val() + '-' + $('#zip2').val() );
        $('#emailf').val( $('#email').val() + '@' + $('#email2').val() );
        $('#phone').val( $('#tel1').val() + '-' + $('#tel2').val() + '-' + $('#tel3').val() );

        const jfrm = $('#joinfrm');
        jfrm.attr('action', '/join/joinok');
        jfrm.attr('method', 'post');
        jfrm.submit();
    }
});

// 취소 버튼
$('#cancelbtn').on('click', function () { location.href='/'; });

// show zipcode
$('#findzipbtn').on('click', function () {
   $.ajax({
       url: '/join/zipcode',
       type: 'GET',
       data: { dong: $('#dong').val() }
   })
       .done(function (data) {
           // 서버에서 넘어온 데이터는 JSON 형식임
           // alert(data);      // object 로 출력
           let opts = "";
           $.each(data, function () {   // 행단위 반복 처리
               let zip = '';
               $.each(this, function (k,v) {    // 열단위 반복 처리
                   if (v != null) zip += v + ' ';
               });
               opts += '<option>' + zip + '</option>';  // 나온 결과를 option 으로 묶어서 출력
           });
           $('#addrlist').find('option').remove();      // 기존 option 태그 삭제
           $('#addrlist').append(opts);     // 새로 만든 option 태그를 추가함
       })
       .fail(function (xhr, status, error) {
           alert(xhr.status + '/' + error);
       });
});

// zipcode dong prevent enter key (zipcode 엔터키 잠금?)
$('input[type="text"]').keydown(function () {
    if (event.keyCode === 13) {
        event.preventDefault();
    }
});

// send zipcode
$('#sendzip').on('click', function () {
    let addr = $('#addrlist option:selected').val();
    if (addr == undefined) {
        alert('주소를 선택하세요.');
        return ;
    }

    let addrs = addr.split(' ');    // 선택한 주소를 공백으로 나눔

    // 잘라낸 첫번째 뭉치를 -로 다시 나눔.
    $('#zip1').val( addrs[0].split('-')[0] );     // 0번은 앞자리 우편번호를 -로 자르고 앞자리를 불러옴
    $('#zip2').val( addrs[0].split('-')[1] );

    // 잘라낸 나머지 뭉치들을 합쳐서 addr1로 보냄
    $('#addr1').val( addrs[1] + ' ' + addrs[2] + ' ' + addrs[3] );

    // 검색창 닫기
    $('#zipmodal').modal('hide');

});

// send email2
// option:selected => select 요소들 중 선택한 요소의 값 알아냄
$('#email3').on('change', function () {
   let val = $('#email3 option:selected').text();
   if (val == '직접입력하기') {
       $('#email2').attr('readonly', false);       // readonly 설정 해제
       $('#email2').val('');
   } else {
       $('#email2').attr('readonly', true);        // readonly 설정
       $('#email2').val(val);
   }
});

// loginbtn (로그인 모달 버튼)  joinme 했던거랑 똑같대
$('#loginbtn').on('click', function () {
   if ($('#userid').val == '') alert('아이디를 입력하세요');
   else if ($('#passwd').val == '') alert('비밀번호를 입력하세요.');
   else {
       const frm = $('#loginfrm');
       frm.attr('method', 'post');
       frm.attr('action', '/join/login');
       frm.submit();
   }
});

// close login modal (로그인 모달 창 닫기 버튼)
$('#lgmbtn').on('click', function () {
    $('#loginmodal').modal('hide');
});

// logoutbtn (로그아웃)
$('#logoutbtn').on('click', function () {
   location.href='/join/logout';
});

// 메인으로 이동 버튼
$('#go2index').on('click', function () {
    location.href='/';
})

function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}
