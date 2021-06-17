
// show img
function showimg(gno) {
    location.href = '/gallery/view?gno=' + gno;
}
// 새 게시글 쓰기
$('#newgalbtn').on('click', function () {
   location.href = '/gallery/write';
});

// 목록으로
$('#back2gal').on('click', function () {
   location.href = '/gallery/list';
});

// 새 글 등록하기 write gallery
$('#newgal').on('click', function () {
   if (  $('#title').val() == '') alert('제목을 작성하세요');
   else if ($('#contents').val() == '') alert('본문을 작성하세요');
   else if (grecaptcha.getResponse() == '') alert('캡챠를 확인하세요');
   else {
       const frm = $('#galfrm');
       frm.attr('method', 'post');
       frm.attr('action', '/gallery/write');
       frm.attr('enctype', 'multipart/form-data');
       frm.submit();
   }
});

// 첨부파일 올리고 나서 뜰 메세지
// show attach filename
$('#file1').on('change', function () {
   var fname = $(this).val();
   fname = fname.substring(fname.lastIndexOf("\\") + 1);    // 가장 나중에 나오는 \부터 읽어들임
   $(this).next('.custom-file-label').html(fname);        // 클래스 이름이 custom-file-label 인 것의
});

$('#file2').on('change', function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);    // 가장 나중에 나오는 \부터 읽어들임
    $(this).next('.custom-file-label').html(fname);        // 클래스 이름이 custom-file-label 인 것의
});

$('#file3').on('change', function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);    // 가장 나중에 나오는 \부터 읽어들임
    $(this).next('.custom-file-label').html(fname);        // 클래스 이름이 custom-file-label 인 것의
});

// modify gallery
$('#modgbtn').on('click', function () {
    location.href = '/gallery/update?gno' + $('#gno').val();
});

// remove gallery
$('#rmvgbtn').on('click', function () {
    alert('기능 준비중');
});

// 수정?? gallery disable/enable upload file
$('#die1').on('change', function () {
    if ($('#die1').is(':checked')) {   // checkbox가 체크되면
        $('#file1').attr('disabled', false);    // disabled 해제
        $('#todie').val("1" + $('#todie').val());   // 첨부파일 수정목록에 1 추가
    } else if (!$('#die1').is(':checked')) {
        $('#file1').attr('disabled', true);
        $('#todie').val($('#todie').val().replace(/1/g, ''));
    }
});

$('#die2').on('change', function () {
    if ($('#die2').is(':checked')) {   // checkbox가 체크되면
        $('#file2').attr('disabled', false);    // disabled 해제
        $('#todie').val($('#todie').val() + "2");   // 첨부파일 수정목록에 2 추가
    } else if (!$('#die2').is(':checked')) {
        $('#file2').attr('disabled', true);
        $('#todie').val($('#todie').val().replace(/2/g, ''));
    }
});

$('#die3').on('change', function () {
    if ($('#die3').is(':checked')) {   // checkbox가 체크되면
        $('#file3').attr('disabled', false);    // disabled 해제
        $('#todie').val($('#todie').val() + "3");   // 첨부파일 수정목록에 3 추가
    } else if (!$('#die3').is(':checked')) {
        $('#file3').attr('disabled', true);
        $('#todie').val($('#todie').val().replace(/3/g, ''));
    }
});

// 글 update gallery
$('#modgal').on('click', function () {
    if (grecaptcha.getResponse() == '') alert('캡챠 확인해주세요.');
    else {
        const frm = $('#modalfrm');
        frm.attr('method', 'post');
        frm.attr('enctype', 'multipart/form-data');
        frm.attr('action', '/gallery/update');
        frm.submit();
    }
});