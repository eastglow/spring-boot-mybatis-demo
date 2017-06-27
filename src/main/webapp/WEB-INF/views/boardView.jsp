<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>자유게시판 - ${vo.subject}</title>
</head>
<body>
<div class="container">
    <h2>글보기</h2>
    <form class="form-horizontal" action="/boardUpdate" method="post" name="updateForm">
        <input type="hidden" value="${vo.bno}" name="bno">
        <div class="form-group">
            <label for="subject" class="col-sm-2 control-label">제목</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="subject" placeholder="제목" name="subject" value="${vo.subject}">
            </div>
        </div>
        <div class="form-group">
            <label for="content" class="col-sm-2 control-label">내용</label>
            <div class="col-sm-10">
                <textarea class="form-control" rows="3" id="content" name="content" placeholder="내용">${vo.content}</textarea>
            </div>
        </div>
        <div class="form-group">
            <label for="writer" class="col-sm-2 control-label">글쓴이</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="writer" placeholder="글쓴이" name="writer" value="${vo.writer}">
            </div>
        </div>
        <div class="btn-group" role="group" style="float:right">
            <button type="submit" class="btn btn-default">수정</button>
            <button type="button" onclick="document.updateForm.reset()" class="btn btn-default">취소</button>
            <button type="button" onclick="history.back()" class="btn btn-default">목록</button>
        </div>
    </form>
</div>
</body>
</html>