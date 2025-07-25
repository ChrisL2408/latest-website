---
layout: page
title: Home
id: home
permalink: /
---

# Hi there, I'm Chris! 👋

<div style="margin-top: 20px;"></div>

<div class="carousel-container" style="max-width: 900px; margin: 0 auto; position: relative; overflow: hidden; border-radius: 8px; margin-bottom: 2rem;">
  <div class="carousel" style="display: flex; transition: transform 0.8s ease-in-out;">
    <div class="carousel-item" style="min-width: 100%;">
      <img src="{{ '/assets/home_photos/IMG_8265.JPG' | relative_url }}" alt="Christian Levan" style="width: 100%; height: 400px; object-fit: cover;">
    </div>
    <div class="carousel-item" style="min-width: 100%;">
      <img src="{{ '/assets/home_photos/friends.jpeg' | relative_url }}" alt="Friends at McGill" style="width: 100%; height: 400px; object-fit: cover; object-position: center middle;">
    </div>
    <div class="carousel-item" style="min-width: 100%;">
      <img src="{{ '/assets/home_photos/bjjj.jpeg' | relative_url }}" alt="Brazilian Jiu-Jitsu Training" style="width: 100%; height: 400px; object-fit: cover;">
    </div>
    <div class="carousel-item" style="min-width: 100%;">
      <img src="{{ '/assets/home_photos/shopify.jpeg' | relative_url }}" alt="Shopify" style="width: 100%; height: 400px; object-fit: cover;">
    </div>
    <div class="carousel-item" style="min-width: 100%;">
      <img src="{{ '/assets/home_photos/majulah.JPG' | relative_url }}" alt="Friends" style="width: 100%; height: 400px; object-fit: cover;">
    </div>
    <div class="carousel-item" style="min-width: 100%;">
      <img src="{{ '/assets/home_photos/running.jpg' | relative_url }}" alt="Toronto Marathon Finish" style="width: 100%; height: 400px; object-fit: cover;">
    </div>
    <div class="carousel-item" style="min-width: 100%;">
      <img src="{{ '/assets/home_photos/frv.jpeg' | relative_url }}" alt="Front Row Ventures" style="width: 100%; height: 400px; object-fit: cover;">
    </div>
    <div class="carousel-item" style="min-width: 100%;">
      <img src="{{ '/assets/home_photos/intramural.jpeg' | relative_url }}" alt="Intramural Sports" style="width: 100%; height: 400px; object-fit: cover;">
    </div>
    <div class="carousel-item" style="min-width: 100%;">
      <img src="{{ '/assets/home_photos/amea.jpeg' | relative_url }}" alt="AMEA" style="width: 100%; height: 400px; object-fit: cover;">
    </div>
    <div class="carousel-item" style="min-width: 100%;">
      <img src="{{ '/assets/home_photos/army.jpeg' | relative_url }}" alt="Army" style="width: 100%; height: 400px; object-fit: cover; object-position: center center;">
    </div>
  </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const carousel = document.querySelector('.carousel');
  const items = document.querySelectorAll('.carousel-item');
  let currentIndex = 0;
  let interval;
  let direction = 1; // 1 for forward, -1 for backward

  function updateCarousel() {
    carousel.style.transform = `translateX(-${currentIndex * 100}%)`;
  }

  function nextSlide() {
    currentIndex += direction;
    
    // Reverse direction when reaching the end or beginning
    if (currentIndex >= items.length - 1) {
      direction = -1;
    } else if (currentIndex <= 0) {
      direction = 1;
    }
    
    updateCarousel();
  }

  function startAutoRotate() {
    interval = setInterval(nextSlide, 2000);
  }

  function stopAutoRotate() {
    clearInterval(interval);
  }

  // Start auto-rotation
  startAutoRotate();

  // Pause on hover
  carousel.addEventListener('mouseenter', stopAutoRotate);
  carousel.addEventListener('mouseleave', startAutoRotate);
});
</script>

<div style="text-align: justify;">
  <p>Hey there! Thanks for exploring my little corner of the internet! I currently am part of the investment team at <a href="https://www.panache.vc/panache-team/christian-levan">Panache Ventures</a>, investing in pre-seed/seed Canadian-rooted founders.</p> 
  
  <p>I've spent the last few years mostly digging rabbit holes in venture capital - leading investments and portfolio support at <a href="https://frontrow.ventures/">Front Row Ventures</a>, building product at <a href="https://altaml.com/">AltaML's</a> Venture Studio (founded by Investopedia's creator), investing in Seed to Series B at other funds like <a href="https://www.whitestarcapital.com/">White Star Capital</a> and <a href="https://www.inovia.vc/">Inovia Capital</a>, and working in biz ops roles at various startup like <a href="https://optionality.ai/">Optionality AI</a> & <a href="https://joinground.com/">Ground AI</a>.</p> I also spent 2 years serving in the Singapore Military attached to the <a href="https://en.wikipedia.org/wiki/Singapore_Artillery">Singapore Artillery</a> as a Motor Transport Operator & an Emergency Ambulance Operator.
  
  <p>When I'm not obsessing over startups, I'm usually getting submitted in BJJ (somehow still addicted), suffering through another Chelsea FC's season, running in the city to clear my head, or geeking out over watches. I studied Economics, Computer Science & Entrepreneurship at McGill, which mostly taught me I'd rather build something real than debate theory all day.</p>
</div>

**A few links to explore**

• <a href="/writing" class="internal-link">Writing</a>
<br>
• <a href="/projects" class="internal-link">Projects</a>
<br>
• <a href="/resources" class="internal-link">Resources</a>

<strong>Recently</strong>

<ul>
  {% assign recent_writings = site.notes | where: "category", "writing" | where_exp: "note", "note.date != nil and note.date != ''" | sort: "date" | reverse %}
  {% for note in recent_writings limit: 5 %}
    <li>
      <a class="internal-link" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
    </li>
  {% endfor %}
</ul>

**Featured In**

<div class="featured-item">
  <span class="featured-icon">🎙️</span>
  <a href="https://open.spotify.com/episode/58NQ7Br1X5S5KIw0HAbrDX?si=Bx1My49ySUmzKut1x_V-PQ" class="featured-link">Built on WHY: He started at 0, now he's a VC and launching Montreal's tech scene</a>
  <p class="featured-desc">My personal journey from Singapore to Montreal, building connections from zero, and building in Montreal</p>
</div>

<div class="featured-item">
  <span class="featured-icon">🎤</span>
  <a href="https://open.spotify.com/episode/3z2RG9wX2RWMzXILBL2pRc" class="featured-link">Break Into VC Podcast: How This Uni Student Became a Venture Capitalist</a>
  <p class="featured-desc">My episode on the Break Into VC Podcast — advice, stories, and how I broke into venture capital as a student</p>
</div>

<div class="featured-links">
  <div class="featured-item">
    <span class="featured-icon">🎙️</span>
    <a href="https://open.spotify.com/episode/7hVGOIrBnof6XWQDQwxn3v" class="featured-link">The Hard Part by Evan McCann</a>
    <p class="featured-desc">Breaking into Venture Capital and my journey with Front Row Ventures</p>
  </div>

  <div class="featured-item">
    <span class="featured-icon">📻</span>
    <a href="https://www.bbc.co.uk/programmes/w3ct5rbp" class="featured-link">BBC Radio</a>
    <p class="featured-desc">My experience as an ambulance operator in Singapore's military for 2 years</p>
  </div>

  <div class="featured-item">
    <span class="featured-icon">🎧</span>
    <a href="https://www.youtube.com/watch?v=oQECInxJV0w" class="featured-link">Wynette's Podcast</a>
    <p class="featured-desc">The journey from Singapore to McGill  and Venture Capital</p>
  </div>
</div>

<style>
.featured-links {
  display: grid;
  gap: 0.5rem;
  margin: 0.5rem 0;
}

.featured-item {
  padding: 0.75rem;
  border-radius: 8px;
  background: rgba(255,255,255,0.05);
  backdrop-filter: blur(10px);
  transition: transform 0.2s ease;
}

.featured-item:hover {
  transform: translateY(-2px);
}

.featured-icon {
  font-size: 1.1rem;
  margin-right: 0.5rem;
}

.featured-link {
  font-size: 1.1rem;
  font-weight: 500;
  text-decoration: none;
}

.featured-desc {
  margin: 0.2rem 0 0 1.8rem;
  color: #888;
  font-size: 0.9rem;
}
</style>

<style>
  .wrapper {
    max-width: 46em;
  }
</style>
