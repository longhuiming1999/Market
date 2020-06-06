$(function () {
    $("#cartBtn").click(function () {
        location.href = "/toCartPage";
    })

    $("#signIn").click(function () {
        var name = $("#username1").val();
        var pass = $("#password1").val();
        $.post("/userLogin", {username: name, password: pass}, function (data) {
            if (data == "true") {
                location.href = "index.jsp";
            }
        });
    });

    function goodType() {
        $.get("/getGoodTypes", function (data) {
            var option = "<option value=''>所有种类</option>"
            for (var key in data) {
                option += "<option value='" + data[key].gtid + "'>" + data[key].gtname + "</option>"
            }
            $("#agileinfo-nav_search").append($(option));
        });
    }

    //初始化下拉框
    goodType();
    //获取被选中的种类
    $(".goodTypes").on("change", function () {
        var gtid = $(this).find(":selected").val();
        console.log(gtid);
        location.href = "getFreshGoods?gtid=" + gtid;
    });


})
