
function checkPassword() {
    var password = document.getElementById('password').value;
    //Kiem tra it nhat 1 chu hoa
    var containUpercase = /[A-Z]/.test(password);

    //Kiem tra ky tu dac biet
    var containSpecialChar = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/.test(password);
    return containUpercase && containSpecialChar;
}

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
        if (!checkPassword) {
            alert("Mật khẩu phải có ít nhất 1 chữ hoa và 1 ký tự đặc biệt!!");
        }
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