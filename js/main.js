// ========================================
// THEME TOGGLE FUNCTIONALITY
// ========================================

// Initialize theme from localStorage or default to light
const initTheme = () => {
    const savedTheme = localStorage.getItem('theme') || 'light';
    document.documentElement.setAttribute('data-theme', savedTheme);
    updateThemeIcon(savedTheme);
};

// Update theme icon
const updateThemeIcon = (theme) => {
    const icon = document.getElementById('theme-icon');
    if (icon) {
        icon.textContent = theme === 'dark' ? '☀️' : '🌙';
    }
};

// Toggle theme
const toggleTheme = () => {
    const currentTheme = document.documentElement.getAttribute('data-theme');
    const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
    
    document.documentElement.setAttribute('data-theme', newTheme);
    localStorage.setItem('theme', newTheme);
    updateThemeIcon(newTheme);
};

// Initialize theme on page load
document.addEventListener('DOMContentLoaded', () => {
    initTheme();
    
    // Add event listener to theme toggle button
    const themeToggle = document.getElementById('theme-toggle');
    if (themeToggle) {
        themeToggle.addEventListener('click', toggleTheme);
    }
});

// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        const href = this.getAttribute('href');
        if (href !== '#' && href !== '#login') {
            e.preventDefault();
            const target = document.querySelector(href);
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        }
    });
});

// Contact form submission
const contactForm = document.querySelector('.contact-form form');
if (contactForm) {
    contactForm.addEventListener('submit', function (e) {
        e.preventDefault();
        alert('Thank you for your message! We will get back to you soon.');
        this.reset();
    });
}

// Navbar scroll effect
let lastScroll = 0;
const navbar = document.querySelector('.navbar');

window.addEventListener('scroll', () => {
    const currentScroll = window.pageYOffset;

    // Add scrolled class for enhanced shadow
    if (currentScroll > 10) {
        navbar.classList.add('scrolled');
    } else {
        navbar.classList.remove('scrolled');
    }

    lastScroll = currentScroll;
});

// Video player functionality
const video = document.getElementById('brand-video');
const playBtn = document.getElementById('play-btn');
const videoWrapper = document.querySelector('.video-wrapper');

if (playBtn && video) {
    playBtn.addEventListener('click', () => {
        if (video.paused) {
            video.play();
            videoWrapper.classList.add('playing');
        } else {
            video.pause();
            videoWrapper.classList.remove('playing');
        }
    });

    video.addEventListener('click', () => {
        if (!video.paused) {
            video.pause();
            videoWrapper.classList.remove('playing');
        }
    });

    video.addEventListener('ended', () => {
        videoWrapper.classList.remove('playing');
    });
}

// Mega menu interactions with improved hover behavior
document.querySelectorAll('.nav-item.has-mega').forEach(item => {
    const megaMenu = item.querySelector('.mega-menu');
    let hideTimeout;

    if (megaMenu) {
        const showMenu = () => {
            clearTimeout(hideTimeout);
            megaMenu.style.opacity = '1';
            megaMenu.style.visibility = 'visible';
            megaMenu.style.transform = 'translateX(-50%) translateY(0)';
            item.classList.add('menu-open');
        };

        const hideMenu = () => {
            hideTimeout = setTimeout(() => {
                megaMenu.style.opacity = '0';
                megaMenu.style.visibility = 'hidden';
                megaMenu.style.transform = 'translateX(-50%) translateY(10px)';
                item.classList.remove('menu-open');
            }, 150); // 150ms delay before hiding
        };

        // Show menu when hovering over nav item
        item.addEventListener('mouseenter', showMenu);
        
        // Keep menu open when hovering over the menu itself
        megaMenu.addEventListener('mouseenter', showMenu);
        
        // Hide menu when leaving nav item
        item.addEventListener('mouseleave', hideMenu);
        
        // Hide menu when leaving the menu itself
        megaMenu.addEventListener('mouseleave', hideMenu);
    }
});

// Add animation on scroll for cards
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
            entry.target.classList.add('animate-in');
        }
    });
}, observerOptions);

// Observe all cards for animation
document.addEventListener('DOMContentLoaded', () => {
    const cards = document.querySelectorAll('.value-card, .solution-card, .capability-block, .operation-item, .retail-section');
    cards.forEach((card, index) => {
        card.style.opacity = '0';
        card.style.transform = 'translateY(20px)';
        card.style.transition = `opacity 0.6s ease ${index * 0.1}s, transform 0.6s ease ${index * 0.1}s`;
        observer.observe(card);
    });

    // Add particles to hero sections
    const heroSections = document.querySelectorAll('.hero-section, .page-header');
    heroSections.forEach(section => {
        if (!section.querySelector('.particles')) {
            const particles = document.createElement('div');
            particles.className = 'particles';
            for (let i = 0; i < 9; i++) {
                const particle = document.createElement('div');
                particle.className = 'particle';
                particle.style.top = Math.random() * 100 + '%';
                particles.appendChild(particle);
            }
            section.appendChild(particles);
        }
    });

    // Add hover effects to icons
    const icons = document.querySelectorAll('.value-icon');
    icons.forEach(icon => {
        icon.addEventListener('mouseenter', () => {
            icon.style.transform = 'scale(1.2) rotate(5deg)';
        });
        icon.addEventListener('mouseleave', () => {
            icon.style.transform = 'scale(1) rotate(0deg)';
        });
    });

    // Parallax effect on scroll
    window.addEventListener('scroll', () => {
        const scrolled = window.pageYOffset;
        const parallaxElements = document.querySelectorAll('.hero-image, .device-preview img');
        parallaxElements.forEach(el => {
            const speed = 0.5;
            el.style.transform = `translateY(${scrolled * speed * 0.1}px)`;
        });
    });

    // Add gradient text effect to main headings
    const mainHeadings = document.querySelectorAll('.hero-section h1, .page-header h1');
    mainHeadings.forEach(heading => {
        heading.classList.add('text-reveal');
    });

    // Cyber grid effect
    const sections = document.querySelectorAll('.value-props, .industry-solutions, .payment-capabilities');
    sections.forEach(section => {
        section.classList.add('cyber-grid');
    });
});
