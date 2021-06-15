
// list
$('#newpdsbtn').on('click', function () {
   location.href = '/pds/write';
});

// 목록으로
$('#back2list').on('click', function () {
   location.href = '/pds/list';
});

// write 게시판 글 입력
$('#newpds').on('click', function () {
   if ( $('#title').val() == '' ) alert('제목을 입력하세요.');
   else if ( $('#contents').val() == '' ) alert('내용을 입력하세요.');
   else if ( grecaptcha.getResponse() == '' ) alert('캡챠를 확인하세요.');
   else {
      const frm = $('#pdsfrm');
      frm.attr('action', '/pds/write');
      frm.attr('method', 'post');
      frm.submit();
   }
});

// 추천하기 버튼
$('#pdthumbbtn').on('click', function () {
   location.href='/pds/recommd?pno=' + $('#pno').val();
});

// 이전 게시물 버튼
$('#pdprvbtn').on('click', function () {
   location.href='/pds/prev?pno=' + $('#pno').val();
});

// 다음 게시물 버튼
$('#pdnxtbtn').on('click', function () {
   location.href='/pds/next?pno=' + $('#pno').val();
});

// 게시물 삭제
$('#pdrmvbtn').on('click', function () {
   location.href = '/pds/pdrmv?pno=' + $('#pno').val();
});