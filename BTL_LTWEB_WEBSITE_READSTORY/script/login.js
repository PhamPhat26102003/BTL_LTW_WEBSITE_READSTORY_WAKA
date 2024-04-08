function check() {
    var user = document.getElementById('username').value;
    var pass = document.getElementById('password').value;

    if (user == "") {
        alert("Vui lòng nhập tài khoản!");
        document.getElementById('username').focus();
        return false;
    }
    if (pass == "") {
        alert("Vui lòng nhập mật khẩu!");
        document.getElementById('password').focus();
        return false;
    }
    return true;

}

//Validate form