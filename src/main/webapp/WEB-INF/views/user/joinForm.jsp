<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ include file="../layouts/header.jsp" %>
<div class="container">
    <form action="/user/join" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="username" class="form-control" placeholder="Enter username" id="username">
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" placeholder="Enter email" id="password">
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" placeholder="Enter email" id="email">
        </div>


    </form>
    <button id="btn-save" class="btn btn-primary">회원가입</button>
</div>
<script src="/blog/js/user.js"></script>
<%@ include file="../layouts/footer.jsp" %>


