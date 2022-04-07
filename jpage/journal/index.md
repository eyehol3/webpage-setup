---
layout: page
title: journal
permalink: /journal/
---
# my journal and other notes idk
<br>
blablabla
<br>

<ul>
  {% for post in site.posts %}
  {% if post.categories.last contains "journal" %}
  <li>
    {%- assign date_format = "%Y-%m-%d" -%}
    [ {{ post.date | date: date_format }} ] <a href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
  </li>
  {% endif %}
  {% endfor %}
</ul>

\***
[go back]({% link index.md %})