// --- Slide Transitions Logic (3-Stage Rotator Layout) ---
let currentSlideIndex = 0;
const slides = document.querySelectorAll('.slide');
const dots = document.querySelectorAll('.dot');
let slideInterval;

function showSlide(index) {
    if (index >= slides.length) currentSlideIndex = 0;
    else if (index < 0) currentSlideIndex = slides.length - 1;
    else currentSlideIndex = index;

    // Resetting states across components
    slides.forEach(slide => slide.classList.remove('active'));
    dots.forEach(dot => dot.classList.remove('active'));

    // Activating target slide layout window
    slides[currentSlideIndex].classList.add('active');
    dots[currentSlideIndex].classList.add('active');
}

function changeSlide(direction) {
    clearInterval(slideInterval);
    showSlide(currentSlideIndex + direction);
    startAutoSlide();
}

function currentSlide(index) {
    clearInterval(slideInterval);
    showSlide(index);
    startAutoSlide();
}

function startAutoSlide() {
    slideInterval = setInterval(() => {
        showSlide(currentSlideIndex + 1);
    }, 3000); // Transitions slide variations every 3 sec
}

// --- Interactive Popup Engine Control Sequences ---
function openNoticeModal() {
    document.getElementById('noticeModal').classList.add('active');
}

function closeNoticeModal() {
    document.getElementById('noticeModal').classList.remove('active');
}

// --- Initialize Components on Document Ready ---
document.addEventListener("DOMContentLoaded", () => {
    startAutoSlide();

    // Show the notice popup automatically only ONCE per browser session.
    // If the user already saw it (this tab/session), don't auto-show it again
    // on page reload or re-visit. The "View Bank Notices" button still opens
    // it manually anytime, regardless of this check.
    const alreadyShown = sessionStorage.getItem("noticeShown");

    if (!alreadyShown) {
        setTimeout(() => {
            openNoticeModal();
            sessionStorage.setItem("noticeShown", "true");
        }, 1500);
    }
});