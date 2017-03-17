/**
 * Created by Liang.qx on 2017/3/6.
 * 标签墙弹出页面相关设置
 */
layer.config({
    extend: ['extend/layer.ext.js', 'skin/moon/style.css'],
    skin: 'layer-ext-moon'
});
layer.ready(function () {

    var pin_board_html = $('#pin-board-add').html();

    $('a.pin-board-add-view').click(function () {
        pin_board_add_tips();
    });

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
    };
});