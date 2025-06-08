---
layout: page
title: Resources
permalink: /resources
---

Here are some resources I've found helpful in my journey. I'll keep updating this list as I discover more valuable content.

<div class="note-list">
  {% assign sorted_notes = site.notes | where: "category", "resource" | sort: "date" | reverse %}
  {% for note in sorted_notes %}
    <div class="note-item">
      <span class="note-date">{{ note.date | date: "%B %d, %Y" }}</span>
      <a href="{{ note.url }}" class="note-title">{{ note.title }}</a>
    </div>
  {% endfor %}
</div>

<style>
.note-list {
  margin-top: 2rem;
}

.note-item {
  margin-bottom: 1rem;
}

.note-date {
  color: #666;
  font-size: 0.9rem;
  margin-right: 1rem;
}

.note-title {
  color: #333;
  text-decoration: none;
}

.note-title:hover {
  text-decoration: underline;
}
</style>
