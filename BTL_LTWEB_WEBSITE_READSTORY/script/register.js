function checkTT() {
    var user = document.getElementById('username').value;
    var pass1 = document.getElementById('password').value;
    var pass2 = document.getElementById('repeatPass').value;
    var gmail = document.getElementById('email').value;
    var checkmail = gmail.length - "@gmail.com".length;
    if (user == "") {
        alert("Vui lòng nhập tài khoản!");
        document.getElementById('username').focus();
        return false;
    }
    if (user == "admin") {
        alert("Không thể đăng kí tài khoản mặc định admin!");
        document.getElementById('username').focus();
        return false;
    }
    if (pass1 == "") {
        alert("Vui lòng nhập mật khẩu!");
        document.getElementById('password').focus();
        return false;
    }
    if (pass2 == "") {
        alert("Vui lòng nhập lại mật khẩu!");
        document.getElementById('repeatPass').focus();
        return false;
    }
    if (pass1 != pass2) {
        alert("Mật khẩu không trùng khớp! Vui lòng nhập lại!");
        document.getElementById('repeatPass').focus();
        document.getElementById('repeatPass').value = "";
        document.getElementById('repeatPass').value = "";
        return false;
    }
    if (gmail == "") {
        alert("Vui lòng nhập gmail!")
        document.getElementById('email').focus();
        return false;
    }
    if (!gmail.endsWith("@gmail.com")) {
        alert("Gmail không hợp lệ, định dạng @gmail.com!")
        document.getElementById('email').focus();
        return false;
    }
    if (checkmail < 6) {
        alert("Gmail phải lớn hơn 6 kí tự");
        document.getElementById('email').focus();
        return false;
    }
    return true;
    return true;
}
//Validate form