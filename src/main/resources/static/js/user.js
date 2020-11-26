let index = {
    init: function () {
        $("#btn-save").on("click", () => {
            this.save()
        });
    },
    save: function () {
        // alert("회원가입 ")
        let data = {
            username: $("#username").val(),
            password: $("#password").val(),
            email: $("#email").val(),
        }
        // console.log(data)
        $.ajax({
            type: "POST",
            url: "/blog/api/users",
            data: JSON.stringify(data),
            contentType:"application/json; charset=utf-8",
            // dataType:"json"
        }).done(function (res) {
            alert("회원가입 완료");
            // console.log(res);
            location.href = "/blog";
        }).fail(function (error) {
            alert(JSON.stringify(error))
        });
    }
}
index.init();