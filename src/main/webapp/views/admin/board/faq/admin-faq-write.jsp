<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>관리자 페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../resources/js/validator.js"></script>
    <script src="../resources/js/member_login4.js"></script>
    <script src="../resources/js/authorization.js"></script>
    <style>
        body {
            padding-top: 50px;
        }

        #wrap {
            max-width: 800px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div id="wrap">
        <h1 class="text-center">자주 찾는 질문 등록</h1>
        <form method="post" action="admin?command=faq_write" enctype="multipart/form-data" name="frm">
            <div class="form-group row">
                <label for="productName" class="col-sm-2 col-form-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
                </div>
            </div>
            
            <div class="form-group row">
                <label for="password" class="col-sm-2 col-form-label">비밀번호</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
                </div>
            </div>
            
            <div class="form-group row">
                <label for="author" class="col-sm-2 col-form-label">작성자</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="author" name="author" placeholder="작성자 명을 입력하세요" required>
                </div>
            </div>
            
            <div class="form-group row">
                <label for="pictureUrl" class="col-sm-2 col-form-label">사진</label>
                <div class="col-sm-10">
                    <input type="file" class="form-control-file" id="noticeImageUrl" name="imageUrl">
                    <small class="form-text text-muted">(주의사항 : 이미지를 변경하고자 할때만 선택하시오)</small>
                </div>
            </div>
            <div class="form-group row">
                <label for="description" class="col-sm-2 col-form-label">설명</label>
                <div class="col-sm-10">
                    <textarea class="form-control" id="content" name="content" rows="5" placeholder="내용을 입력하세요"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-10 offset-sm-2">
                    <button type="submit" class="btn btn-primary" onclick="return boardCheck()">등록</button>
                    <button type="reset" class="btn btn-secondary">다시작성</button>
                    <button type="button" class="btn btn-info" onclick="location.href='admin?command=faq_list'">목록</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
