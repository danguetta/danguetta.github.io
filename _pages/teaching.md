---
layout: archive
title: "Teaching"
permalink: /teaching/
author_profile: true
---

I design and teach a broad range of analytics classes aimed at students in the [MBA](https://www8.gsb.columbia.edu/programs/mba), [Executive MBA](https://www8.gsb.columbia.edu/programs/executive-mba), and [Masters of Engineering](https://ieor.columbia.edu/masters) programs at Columbia.

Naturally, there is overlap between classes I teach to these populations, but I roughly divide them into four categories
* **MBA and EMBA classes** including Business Analytics, Business Analytics 2, Analytics in Action, and The Analytics Advantage
* **Engineering and PhD classes** including Demand Analytics and Business Analytics
* **Online classes** including the EdX class Demand and Supply Analytics, and CBS's Python for Managers
* Classes I TAed and taught before joining the faculty at Columbia

{% include base_path %}

{% for post in site.teaching reversed %}
  {% include archive-single.html %}
{% endfor %}
