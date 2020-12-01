<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ include file="../layouts/header.jsp" %>
<div class="container">
    <form action="/auth/loginProc" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="username" class="form-control" placeholder="Enter username" id="username" name="username">
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" placeholder="Enter password" id="password" name="password">
        </div>
        <button id="btn-login" class="btn btn-primary">로그인</button>
        <a id="custom-login-btn" href="https://kauth.kakao.com/oauth/authorize?client_id=b6b2a7bf1601ad00ac3ee7c24d268db3&redirect_uri=http://localhost:8000/auth/kakao/callback&response_type=code">
            <img
                    src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
                    height="38"
            />
        </a>
    </form>

</div>
<%@ include file="../layouts/footer.jsp" %>


