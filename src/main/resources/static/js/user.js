let index = {
    init: function () {
        $("#btn-save").on("click", () => {
            this.save()
        });
        $("#btn-update").on("click", () => {
            this.update()
        });
        // $("#btn-login").on("click", () => {
        //     this.login()
        // });
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
            url: "/auth/joinProc",
            data: JSON.stringify(data),
            contentType:"application/json; charset=utf-8",
            // dataType:"json"
        }).done(function (res) {
            alert("회원가입 완료");
            // console.log(res);
            location.href = "/";
        }).fail(function (error) {
            alert(JSON.stringify(error))
        });
    },
    update: function () {
        let data = {
            id: $("#id").val(),
            username: $("#username").val(),
            password: $("#password").val(),
            email: $("#email").val(),
        }
        $.ajax({
            type: "PUT",
            url: "/user",
            data: JSON.stringify(data),
            contentType:"application/json; charset=utf-8",
        }).done(function (res) {
            alert("회원수정 완료");
            location.href = "/";
        }).fail(function (error) {
            alert(JSON.stringify(error))
        });
    },
    // login: function () {
    //     // alert("회원가입 ")
    //     let data = {
    //         username: $("#username").val(),
    //         password: $("#password").val(),
    //     }
    //     // console.log(data)
    //     $.ajax({
    //         type: "POST",
    //         url: "/api/users/login",
    //         data: JSON.stringify(data),
    //         contentType:"application/json; charset=utf-8",
    //         // dataType:"json"인
    //     }).done(function (res) {
    //         alert("로그 완료");
    //         // console.log(res);
    //         location.href = "/";
    //     }).fail(function (error) {
    //         alert(JSON.stringify(error))
    //     });
    // }
}
index.init();