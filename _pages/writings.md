---
layout: page
title: Writing
permalink: /writing/
---

# Writing

A collection of thoughts, reflections, and essays. To find all my main pieces you can check out my [Substack](https://substack.com/@clevan).

<style>
.date {
  font-size: 0.9em;
  color: #888;
}
.title {
  font-weight: bold;
}
</style>

{% assign writing_notes = site.notes | where: "category", "writing" | sort: "date" | reverse %}

{% for note in writing_notes %}
<span class="date">{{ note.date | date: "%Y-%m-%d" }}</span> <span class="title">[{{ note.title }}]({{ note.url }})</span>
{% endfor %}
