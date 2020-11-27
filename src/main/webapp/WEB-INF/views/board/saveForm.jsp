<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ include file="../layouts/header.jsp" %>
<div class="container">
    <form action="/auth/loginProc" method="POST">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="title" class="form-control" placeholder="Enter title" id="title" name="title">
        </div>
        <div class="form-group">
            <textarea class="form-control summernote" rows="5" id="content"></textarea>
        </div>
    </form>
        <button id="btn-save" class="btn btn-primary">글쓰기 저장</button>

</div>
<script>
    $('.summernote').summernote({
        placeholder: 'Hello Bootstrap 4',
        tabsize: 2,
        height: 300
    });
</script>
<script src="/js/board.js"></script>
<%@ include file="../layouts/footer.jsp" %>


