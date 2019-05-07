---
layout: default
title: Introduction & getting started
title_nav: Introduction &amp; getting started
description: New to self-hosting TinyMCE? Start here.
type: folder
---
{% assign navigaton = site.data.nav %}
{% for entry in navigaton %}
  {% if entry.url == "general-configuration-guide" %}
    {% assign links = entry.pages %}
  {% endif %}
{% endfor %}

{% include index.html links=links %}
