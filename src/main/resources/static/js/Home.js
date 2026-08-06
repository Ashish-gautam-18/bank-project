// --- Slide Transitions Logic (3-Stage Rotator Layout) ---
let currentSlideIndex = 0;
const slides = document.querySelectorAll('.slide');
const dots = document.querySelectorAll('.dot');
let slideInterval;

function showSlide(index) {
    if (index >= slides.length) currentSlideIndex = 0;
    else if (index < 0) currentSlideIndex = slides.length - 1;
    else currentSlideIndex = index;

    slides.forEach(slide => slide.classList.remove('active'));
    dots.forEach(dot => dot.classList.remove('active'));

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
    }, 3000);
}

// --- Interactive Popup Engine Control Sequences ---
function openNoticeModal() {
    const modal = document.getElementById('noticeModal');
    if (!modal) {
        console.warn("noticeModal element not found in the page.");
        return;
    }
    modal.classList.add('active');
}

function closeNoticeModal() {
    const modal = document.getElementById('noticeModal');
    if (modal) {
        modal.classList.remove('active');
    }
}

// --- Initialize Components on Document Ready ---
document.addEventListener("DOMContentLoaded", () => {
    if (slides.length > 0) {
        startAutoSlide();
    }

    let alreadyShown = false;
    try {
        alreadyShown = sessionStorage.getItem("noticeShown") === "true";
    } catch (e) {
        console.warn("sessionStorage not accessible.");
    }

    if (!alreadyShown) {
        setTimeout(() => {
            openNoticeModal();
            try {
                sessionStorage.setItem("noticeShown", "true");
            } catch (e) {
                // ignore
            }
        }, 1500);
    }
});

// --- Mobile Responsive Navbar Toggle Logic ---
function toggleMenu() {
    const menu = document.getElementById("navMenu");
    if (menu) {
        menu.classList.toggle("show");
    } else {
        console.warn("navMenu element not found in the page.");
    }
}
