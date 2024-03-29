<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>상품 리스트 - 관리자 페이지</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/shopping.css">
    <style>
    	.btn {
    		font-size: 0.8rem;
    	}
    </style>
</head>
<body>
<div id="wrap" class="container">
    <h1 class="text-center">관리자 리스트 - 관리자 페이지</h1>
     <div class="text-right">
        <a class="btn btn-success" href="banchan?command=product_write_form">관리자 등록</a>
    </div>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">코드</th>
            <th scope="col">이름</th>
            <th scope="col">아이디</th>
            <th scope="col">비밀번호</th>
            <th scope="col">이메일</th>
            <th scope="col">전화번호</th>
            <th scope="col">관리자</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="admin" items="${adminList}">
            <tr>
            	<td>${admin.code}</td>
            	<td>${admin.adminName}</td>
                <td>${admin.adminId}</td>
                <td>${admin.adminPassword}</td>
                <td>${admin.adminEmail}</td>
                <td>${admin.adminPhone}</td>
                <td>${admin.admin}</td>
                <td><a class="btn btn-primary" href="banchan?command=product_update_form&code=${admin.code}">관리자 수정</a></td>
                <td><a class="btn btn-danger" href="banchan?command=product_delete_form&code=${admin.code}">관리자 삭제</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
   
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
