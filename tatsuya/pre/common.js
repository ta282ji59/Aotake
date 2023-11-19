function checkDeviceType() {
    const isMobile = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent);
    if (isMobile) {
        document.getElementById('tab-bar').style.display = 'flex'; // モバイルデバイスであれば表示
    }
}



document.addEventListener('DOMContentLoaded', checkDeviceType);


function navigate(tab) {
    console.log(tab + 'にナビゲートします。');
    // ここにナビゲーションのロジックを記述
}