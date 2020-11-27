<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ include file="../layouts/header.jsp" %>
<div class="container">
    <button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
    <c:if test="${board.user.id == principal.user.id}">
        <a href="/board/${board.id}/updateForm"  class="btn btn-warning">수정</a>
        <button id="btn-remove" class="btn btn-danger">삭제</button>
    </c:if>
    <br/>
    <br/>
    <div>
        글번호 : <apan id="id"><i>${board.id} </i></apan>
        작성자 : <apan><i>${board.user.username} </i></apan>
    </div>
    <br/>
    <div>
        <h3>${board.title}</h3>
    </div>
    <hr/>
    <div>
        <div>${board.content}</div>
    </div>
</div>
<script src="/js/board.js"></script>
<%@ include file="../layouts/footer.jsp" %>


