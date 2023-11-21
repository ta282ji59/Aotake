function checkDeviceType() {
    const isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent);
    if (isMobile) {
        document.getElementById('tab-bar').style.display = 'flex';
    }
}

document.addEventListener('DOMContentLoaded', checkDeviceType);
document.addEventListener('DOMContentLoaded', loadContent('home'));



/* 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/

function loadContent(tab) {
    var url;
    if (tab == "home") {
        url = 'home.html'
    }
    else if (tab == "sns") {
        url = 'sns.html'
    }
    else if (tab == "account") {
        url = 'account.html'
    }

    $.ajax({
        url: url,
        type: 'GET',
        dataType: 'html',
        success: function (data) {
            $('#content').html(data);
        },
        error: function () {
            alert('コンテンツのロードに失敗しました。');
        }
    });

}
