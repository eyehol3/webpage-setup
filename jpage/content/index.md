---
layout: page
title: content
permalink: /questionable_content/
---
# quality_content 
<br>
lolololololo
<br>

<ul>
  {% for post in site.posts %}
  {% if post.categories.last contains "content" %}
  <li>
    {%- assign date_format = "%Y-%m-%d" -%}
    [ {{ post.date | date: date_format }} ] <a href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
  </li>
  {% endif %}
  {% endfor %}
</ul>
\***
[go back]({% link index.md %})