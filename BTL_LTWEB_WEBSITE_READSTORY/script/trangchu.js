const bannerSliderList = document.querySelector(".banner__slider-list");
const bannerSliderItems = document.querySelectorAll(".banner__slider-item");
const bannerSliderDots = document.querySelectorAll(".banner__slider-dots li");
const bannerSliderPrev = document.querySelector(".banner__slider-button#prev");
const bannerSliderNext = document.querySelector(".banner__slider-button#next");

let bannerActive = 0;
let bannerLengthItems = bannerSliderItems.length - 1;

bannerSliderNext.addEventListener("click", () => {
    if (bannerActive + 1 > bannerLengthItems) {
        bannerActive = 0;
    } else {
        bannerActive = bannerActive + 1;
    }
    reloadBannerSlider();
});

bannerSliderPrev.addEventListener("click", () => {
    if (bannerActive - 1 < 0) {
        bannerActive = bannerLengthItems;
    } else {
        bannerActive = bannerActive - 1;
    }
    reloadBannerSlider();
});

function reloadBannerSlider() {
    let checkLeft = bannerSliderItems[bannerActive].offsetLeft;
    bannerSliderList.style.left = -checkLeft + "px";

    let lastActiveDot = document.querySelector(".banner__slider-dots li.active");
    lastActiveDot.classList.remove("active");
    bannerSliderDots[bannerActive].classList.add("active");
}

const booksSliderLists = document.querySelectorAll(".books__slider-list");
const booksSliderPrevs = document.querySelectorAll(
    ".books__slider-button--prev"
);
const booksSliderNexts = document.querySelectorAll(
    ".books__slider-button--next"
);

booksSliderLists.forEach((booksSliderList, index) => {
    const booksSliderItems = booksSliderList.querySelectorAll(
        ".books__slider-item"
    );
    let booksActive = 0;
    let booksLengthItems = booksSliderItems.length - 1;

    booksSliderNexts[index]?.addEventListener("click", () => {
        booksActive = Math.min(booksActive + 1, booksLengthItems);
        reloadBooksSlider(
            booksSliderList,
            booksSliderItems,
            booksActive,
            booksSliderPrevs[index],
            booksSliderNexts[index]
        );
    });

    booksSliderPrevs[index]?.addEventListener("click", () => {
        booksActive = Math.max(booksActive - 1, 0);
        reloadBooksSlider(
            booksSliderList,
            booksSliderItems,
            booksActive,
            booksSliderPrevs[index],
            booksSliderNexts[index]
        );
    });

    function reloadBooksSlider(
        booksSliderList,
        booksSliderItems,
        booksActive,
        booksSliderPrev,
        booksSliderNext
    ) {
        let checkLeft = booksSliderItems[booksActive].offsetLeft;
        booksSliderList.style.left = -checkLeft + "px";

        if (booksActive === 0) {
            booksSliderPrev.style.display = "none";
        } else {
            booksSliderPrev.style.display = "block";
        }

        if (booksActive === booksLengthItems) {
            booksSliderNext.style.display = "none";
        } else {
            booksSliderNext.style.display = "block";
        }
    }
});

//Xử lý phần slide show