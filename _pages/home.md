---
layout: page
title: Home
id: home
permalink: /
---

# About Me

<div style="margin-top: 20px;"></div>

<div style="display: flex; flex-wrap: wrap; gap: 20px; margin-bottom: 20px;">
  <img src="{{ '/assets/IMG_8265.jpg' | relative_url }}" alt="Christian Levan" style="width: calc(50% - 10px); height: 300px; object-fit: cover; border-radius: 8px;">
  <img src="{{ '/assets/555_photos/theboys.jpeg' | relative_url }}" alt="The boys" style="width: calc(50% - 10px); height: 300px; object-fit: cover; border-radius: 8px;">
</div>

<div style="text-align: justify;">
  <p>Hey, I'm Christian (Chris)! I currently am part of the investment team at <a href="https://www.panache.vc/panache-team/christian-levan">Panache Ventures</a>, investing in pre-seed/seed Canadian-rooted founders.</p> 
  
  <p>I've spent the last few years mostly digging rabbit holes in venture capital - leading investments and portfolio support at <a href="https://frontrow.ventures/">Front Row Ventures</a>, building product at <a href="https://altaml.com/">AltaML's</a> Venture Studio (founded by Investopedia's creator), investing in Seed to Series B at other funds like <a href="https://www.whitestarcapital.com/">White Star Capital</a> and <a href="https://www.inovia.vc/">Inovia Capital</a>, and working in biz ops roles at various startup like <a href="https://optionality.ai/">Optionality AI</a> & <a href="https://joinground.com/">Ground AI</a>.</p> I also spent 2 years serving in the Singapore Military attached to the <a href="https://en.wikipedia.org/wiki/Singapore_Artillery">Singapore Artillery</a> as a Motor Transport Operator & an Emergency Ambulance Operator.
  
  <p>When I'm not obsessing over startups, I'm usually getting submitted in BJJ (somehow still addicted), suffering through another Chelsea FC's season, or running in the city to clear my head. I studied Economics, Computer Science & Entrepreneurship at McGill, which mostly taught me I'd rather build something real than debate theory all day.</p>
</div>

**A few links to explore**

• <a href="/writing" class="internal-link">Writing</a>
<br>
• <a href="/projects" class="internal-link">Projects</a>
<br>
• <a href="/resources" class="internal-link">Resources</a>

<strong>Recently</strong>

<ul>
  {% assign recent_notes = site.notes | where_exp: "note", "note.category == 'writing' or note.category == 'projects'" | where_exp: "note", "note.date != nil and note.date != ''" | sort: "date" | reverse %}
  {% for note in recent_notes limit: 5 %}
    <li>
      {{ note.date | date: "%Y-%m-%d" }} — <a class="internal-link" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
      {% if note.category %}
        <span style="color: #666; font-size: 0.9em;">({{ note.category }})</span>
      {% endif %}
    </li>
  {% endfor %}
</ul>

**Featured In**

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

<div style="margin-top: 2rem;">
  <a href="/writing" style="text-decoration: none; color: inherit; margin-right: 2rem;">Writing</a>
  <a href="/projects" style="text-decoration: none; color: inherit; margin-right: 2rem;">Projects</a>
  <a href="/resources" style="text-decoration: none; color: inherit;">Resources</a>
</div>
