---
layout: page
title: Home
id: home
permalink: /
---

# Hi there, I'm Chris! 👋

<div style="margin-top: 20px;"></div>

<div style="max-width: 900px; margin: 0 auto; margin-bottom: 2rem;">
  <img src="{{ '/assets/home_photos/IMG_8265.JPG' | relative_url }}" alt="Christian Levan" style="width: 100%; height: 400px; object-fit: cover; border-radius: 8px;">
</div>

<div style="text-align: justify;">
  <p>I'm currently running Growth at <a href="https://nationgraph.com">NationGraph</a> based in Toronto and hosting cool events at <a href="https://x.com/555studio_">555</a>.</p>

  <p>Previously, I was a VC investor at <a href="https://www.panache.vc/panache-team/christian-levan">Panache Ventures</a>, an early-stage fund backing pre-seed and seed Canadian-rooted startups. Before that, I spent a few years going deep down the startup and VC rabbit hole, building products at <a href="https://altaml.com/">AltaML's</a> Venture Studio (founded by Investopedia's creator), investing in Seed to Series B at funds like <a href="https://www.whitestarcapital.com/">White Star Capital</a> and <a href="https://www.inovia.vc/">Inovia Capital</a>, and working in biz ops roles at startups like <a href="https://optionality.ai/">Optionality AI</a> & <a href="https://joinground.com/">Ground AI</a>.</p>

  <p>I also spent 2 years serving in the Singapore Military attached to the <a href="https://en.wikipedia.org/wiki/Singapore_Artillery">Singapore Artillery</a> as a Motor Transport Operator & an Emergency Ambulance Operator.</p>
  
  <p>When I'm not obsessing over startups, I'm training BJJ (purple belt, somehow still addicted), being forced to run half marathons by my girlfriend, suffering through another Chelsea FC season, or geeking out over watches.</p>
</div>

**A few links to explore**

• <a href="/writing" class="internal-link">Writing</a>
<br>
• <a href="/projects" class="internal-link">Projects</a>
<br>
• <a href="/resources" class="internal-link">Resources</a>

<strong>Recently</strong>

<ul>
  {% assign recent_writings = site.notes | where: "category", "writing" | where_exp: "note", "note.date != nil and note.date != '' and note.title contains '(wip)' == false" | sort: "date" | reverse %}
  {% for note in recent_writings limit: 5 %}
    {% unless note.title contains "(wip)" %}
    <li>
      <a class="internal-link" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
    </li>
    {% endunless %}
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
