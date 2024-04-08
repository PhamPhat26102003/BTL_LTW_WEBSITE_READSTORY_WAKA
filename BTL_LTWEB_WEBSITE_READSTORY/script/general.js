const header = document.querySelector(".header");

document.addEventListener("scroll", () => {
    const scrollY = window.scrollY;
    if (scrollY > 10) {
        header.classList.add("dark-overlay");
    } else {
        header.classList.remove("dark-overlay");
    }
});

//Xử lý fix cứng thanh header
