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
       $('#email2').attr('readonly', false);
       $('#email2').val('');
   } else {
       $('#email2').attr('readonly', true);
       $('#email2').val(val);
   }
});