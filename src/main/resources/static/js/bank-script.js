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
    
    // Automatically triggers the banking warning notice popup window 1.5 seconds after load
    setTimeout(() => {
        openNoticeModal();
    }, 1500);
});
