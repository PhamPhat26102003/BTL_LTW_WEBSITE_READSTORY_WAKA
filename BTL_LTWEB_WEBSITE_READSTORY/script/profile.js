
//Active các thanh ở profile bên trái
function activeItemCategory(item) {
    var categoryItems = document.querySelectorAll('.profile__left-categories .profile__left-categories--item');

    categoryItems.forEach(function (categoryItem) {
        categoryItem.classList.remove('active');
    });

    item.classList.add('active');
}

//Active và hhieenr thị các phần form tương ứng ở profile bên phải
function activeTitle(item, index) {
    var titleItems = document.querySelectorAll('.profile__right-title .profile__right-title--item');

    titleItems.forEach(function (titleItem) {
        titleItem.classList.remove('active');
    });

    item.classList.add('active');

    var formItems = document.querySelectorAll('.formInfo__item');

    formItems.forEach(function (formItem) {
        formItem.classList.remove('active');
    })

    formItems[index].classList.add('active');
}