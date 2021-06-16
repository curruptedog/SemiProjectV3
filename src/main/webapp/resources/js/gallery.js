
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