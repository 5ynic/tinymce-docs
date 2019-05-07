---
layout: default
title: Integrate with other projects
title_nav: Integrations
description: Faster development with integrations of TinyMCE into your favorite framework or CMS.
type: folder
---
{% assign navigaton = site.data.nav %}
{% for entry in navigaton %}
  {% if entry.url == "integrations" %}
    {% assign links = entry.pages %}
  {% endif %}
{% endfor %}

{% include index.html links=links %}
