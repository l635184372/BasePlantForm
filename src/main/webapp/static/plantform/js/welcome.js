//欢迎信息

layer.config({
    extend: ['extend/layer.ext.js', 'skin/moon/style.css'],
    skin: 'layer-ext-moon'
});

layer.ready(function () {

    var html = $('#welcome-template').html();

    var pin_board_html = $('#pin-board-add').html();

    $('a.viewlog').click(function () {
        logs();
        return false;
    });

    $('a.pin-board-add-view').click(function () {
        pin_board_add_tips();
    });

    $('#pay-qrcode').click(function(){
        var html=$(this).html();
        parent.layer.open({
            title: false,
            type: 1,
            closeBtn:false,
            shadeClose:true,
            area: ['600px', 'auto'],
            content: html
        });
    });

    function logs() {
        parent.layer.open({
            title: '初见倾心，再见动情',
            type: 1,
            area: ['700px', 'auto'],
            content: html,
            btn: ['确定', '取消'],
        });
    };


    function pin_board_add_tips() {
        parent.layer.open({
            title: '标签页添加',
            id: 'pin-board',
            type: 1,
            area: ['600px', '350px'],
            content: pin_board_html
            // btn: ['确定', '取消'],
            // yes: function (index, layero) {
            //     $("#pin-board-addForm").submit();
            //     parent.layer.alert('确定！',{icon: 2});
            // },
            // btn2: function (index, layero) {
            //     parent.layer.alert('取消！', {icon: 2});
            // }
        });
    }
});