function check() {
    var gmail = document.getElementById('email').value;
    var checkmail = gmail.length - "@gmail.com".length;
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
}
//Validate form