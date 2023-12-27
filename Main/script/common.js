$(document).ready(function() {
    $('#tab-bar .tab-item img').hover(
        function() {
            // ホバー時の処理
            var src = $(this).attr('src');
            // _clickがまだ含まれていない場合のみ変更を適用
            if (!src.includes('_click')) {
                $(this).data('original-src', src); // 元のsrcを記録
                $(this).attr('src', src.replace('.png', '_click.png'));
            }
        }, 
        function() {
            // ホバーが終わった時の処理
            var originalSrc = $(this).data('original-src');
            // 元々_clickが含まれていなかった画像のみを元に戻す
            if (originalSrc) {
                $(this).attr('src', originalSrc);
            }
        }
    );
});
