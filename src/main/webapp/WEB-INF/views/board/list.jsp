<%@ page pageEncoding="UTF-8"%>

<div id="main">
    <div class="col-12">
    <h2 style="font-weight: bold;"><i class="fas fa-comments"></i> 자유 게시판</h2>
<hr>
</div> <!-- 페이지 타이틀 -->

<div class="row">
    <div class="col-5 offset-1">
        <div class="form-group row">
            <select class="form-control col-3 border-primary" name="findtype" id="findtype">
                <option value="txtitle">제목</option>
                <option value="titcont">제목+내용</option>
                <option value="userid">작성자</option>
                <option value="txtcontent">내용</option>
            </select>
            <input type="text" name="findkey" id="findkey" class="form-fontrol col-4 border-primary">&nbsp;
            <button type="button" id="findbtn" class="btn btn-primary"><i class="fas fa-search"></i> 검색</button>
        </div>
    </div>
    <div class="col-5 text-right">
        <button type="button" id="newbdbtn" class="btn btn-light"><i class="fas fa-plus"></i> 새글쓰기</button>
    </div>
</div> <!-- 검색과 버튼 -->

<div class="col-10 offset-1 row">

        <table class="table table-striped text-center table-hover">
            <thead style="background: #dff0d8">
               <tr>
                   <th style="width: 7%">번호</th>
                   <th style="">제목</th>
                   <th style="width: 12%">작성자</th>
                   <th style="width: 10%">작성일</th>
                   <th style="width: 7%">추천</th>
                   <th style="width: 7%">조회</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th class="text-danger">공지</th>
                    <th><span class="badge badge-danger">Hot</span>
                        Lorem ipsum
                    </th>
                    <th>운영자</th>
                    <th>2021.05.21</th>
                    <th>10</th>
                    <th>521</th>
                </tr>

                <tr>
                    <td>1</td>
                    <td><a href="view.html">
                        Lorem ipsum</a>
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>4</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>5</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>6</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>7</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>8</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>9</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>10</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>11</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>12</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>13</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>14</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>15</td>
                    <td>
                        Lorem ipsum
                    </td>
                    <td>강아지</td>
                    <td>2021.05.21</td>
                    <td>7</td>
                    <td>15</td>
                </tr>

            </tbody>

        </table>

</div>

<div class="row">
    <div class="col-12">
        <ul class="pagination justify-content-center">
            <li class="page-item"><a href="#" class="page-link">이전</a></li>

            <li class="page-item active"><a href="#" class="page-link">1</a></li>
            <li class="page-item"><a href="#" class="page-link">2</a></li>
            <li class="page-item"><a href="#" class="page-link">3</a></li>
            <li class="page-item"><a href="#" class="page-link">4</a></li>
            <li class="page-item"><a href="#" class="page-link">5</a></li>
            <li class="page-item"><a href="#" class="page-link">6</a></li>
            <li class="page-item"><a href="#" class="page-link">7</a></li>
            <li class="page-item"><a href="#" class="page-link">8</a></li>
            <li class="page-item"><a href="#" class="page-link">9</a></li>
            <li class="page-item"><a href="#" class="page-link">10</a></li>

            <li class="page-item"><a href="#" class="page-link">다음</a></li>
        </ul>
    </div>
</div> <!-- 페이지 네이션 -->


</div> <!-- main -->
