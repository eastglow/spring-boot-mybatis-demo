<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>자유게시판 - 목록</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>게시글 목록</title>
    <script type="application/javascript">
        function boardInsert(){
            location.href = "/boardInsertView";
        }
    </script>
</head>
<body>
<div class="container">
    <h2 style="text-align:center"><a href="/boardList" style="text-decoration:none">자유게시판</a></h2>
    <p style="text-align:right">자유롭게 글을 쓸 수 있는 공간입니다.</p>
    <table class="table table-condensed">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>내용</th>
            <th>작성자</th>
            <th>등록일</th>
            <th>삭제</th>
        </tr>
        <c:forEach var="entity" items="${list}" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td><a href="/boardView?bno=${entity.bno}">${entity.subject}</a></td>
                <td>${entity.content}</td>
                <td>${entity.writer}</td>
                <td>${entity.reg_date}</td>
                <td><a href="/boardDelete?bno=${entity.bno}">[삭제]</a></td>
            </tr>
        </c:forEach>
        <c:if test="${fn:length(list) == 0}">
            <tr>
                <td colspan="6" style="text-align:center"><strong>등록된 게시물이 없습니다.</strong></td>
            </tr>
        </c:if>
    </table>
    <div stytle="margin:0 auto">
        <form class="form-horizontal" action="/boardList" method="post" name="searchForm">
            <input type="text" name="searchText">
            <button type="submit" class="btn btn-default">검색</button>
        </form>
    </div>
    <div class="btn-group" role="group" style="float:right">
        <button type="button" class="btn btn-default" onclick="javascript:boardInsert()">등록</button>
    </div>
</div>
</body>
</html>