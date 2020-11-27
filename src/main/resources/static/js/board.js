let index = {
    init: function () {
        $("#btn-save").on("click", () => {
            this.save()
        });
        $("#btn-remove").on("click", () => {
            this.remove()
        });
        $("#btn-update").on("click", () => {
            this.update()
        });
    },
    save: function () {
        let data = {
            title: $("#title").val(),
            content: $("#content").val(),
        }
        $.ajax({
            type: "POST",
            url: "/api/board",
            data: JSON.stringify(data),
            contentType:"application/json; charset=utf-8",
        }).done(function (res) {
            alert("글쓰기 완료");
            location.href = "/";
        }).fail(function (error) {
            alert(JSON.stringify(error))
        });
    },
    update: function () {
        let id = $("#id").val();
        let data = {
            title: $("#title").val(),
            content: $("#content").val(),
        }
        $.ajax({
            type: "PUT",
            url: "/api/board/"+id,
            data: JSON.stringify(data),
            contentType:"application/json; charset=utf-8",
        }).done(function (res) {
            alert("글수정 완료");
            location.href = "/";
        }).fail(function (error) {
            alert(JSON.stringify(error))
        });
    },
    remove: function () {
        let id = $("#id").text();

        $.ajax({
            type: "DELETE",
            url: "/api/board/"+id,
        }).done(function (res) {
            alert("글삭제 완료");
            location.href = "/";
        }).fail(function (error) {
            alert(JSON.stringify(error))
        });
    },

}
index.init();