---
layout: page
title: Home
id: home
permalink: /
---

# About Me

<img src="{{ '/assets/IMG_8265.jpg' | relative_url }}" alt="Christian Levan" style="max-width: 400px; width: 100%; height: auto; float: left; margin-right: 20px; margin-bottom: 20px;">

{: style="text-align: justify;"}
I'm Christian _(or Chris)_, currently finishing my degree at McGill in Economics & Computer Science while working in VC [Front Row Ventures](https://frontrow.ventures/) and at [Ground AI](https://joinground.com/) _(don't ask me about how I balance this pls)_

{: style="text-align: justify;"}
Previously, I was a VC Intern at funds like [White Star Capital](https://whitestarcapital.com/) and [Inovia Capital](https://inovia.vc/) and had several Ops roles at startups. I'm obsessed with Brazilian Jiu-Jitsu and have been supporting Chelsea FC since I was 13 years old.

**A few links to explore**

• <a href="/writing" class="internal-link">Writing</a>
<br>
• <a href="/projects" class="internal-link">Projects</a>
<br>
• <a href="/now" class="internal-link">Now</a>

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
