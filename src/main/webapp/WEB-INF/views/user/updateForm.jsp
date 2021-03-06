<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ include file="../layouts/header.jsp" %>
<div class="container">
    <form>
        <input type="hidden" value="${principal.user.id}" id="id">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="username" value="${principal.user.username}" class="form-control" placeholder="Enter username" id="username" readonly>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password"  class="form-control" placeholder="Enter password" id="password">
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" value="${principal.user.email}" class="form-control" placeholder="Enter email" id="email">
        </div>
    </form>
    <button id="btn-update" class="btn btn-primary">회원수정</button>
</div>
<script src="/js/user.js"></script>
<%@ include file="../layouts/footer.jsp" %>


