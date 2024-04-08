// slider proposal
const proposalSliderList = document.querySelector(".proposal__slider-list");
const proposalSliderItems = document.querySelectorAll(".proposal__slider-item");
const proposalSliderPrev = document.querySelector(
    ".proposal__slider-button#prev"
);
const proposalSliderNext = document.querySelector(
    ".proposal__slider-button#next"
);

const proposalSliderDots = document.querySelectorAll(
    ".proposal__slider-dots li"
);
const proposalSliderContents = document.querySelectorAll(".proposal__content");

let proposalActive = 0;
let proposalIndex = proposalSliderItems.length - 1;

proposalSliderNext.addEventListener("click", function () {
    proposalActive = (proposalActive + 1) % proposalSliderItems.length;
    reloadProposalSlider();
});

proposalSliderPrev.addEventListener("click", function () {
    proposalActive =
        (proposalActive - 1 + proposalSliderItems.length) %
        proposalSliderItems.length;
    reloadProposalSlider();
});

function reloadProposalSlider() {
    proposalSliderItems.forEach((item, index) => {
        const dot = proposalSliderDots[index];
        const content = proposalSliderContents[index];
        item.classList.remove("active", "next", "prev");
        dot.classList.remove("active");
        content.classList.remove("active");
    });

    proposalSliderItems[proposalActive].classList.add("active");
    const nextIndex = (proposalActive + 1) % proposalSliderItems.length;
    const prevIndex =
        (proposalActive - 1 + proposalSliderItems.length) %
        proposalSliderItems.length;
    proposalSliderItems[nextIndex].classList.add("next");
    proposalSliderItems[prevIndex].classList.add("prev");

    proposalSliderDots[proposalActive].classList.add("active");
    proposalSliderContents[proposalActive].classList.add("active");
}
