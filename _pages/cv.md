---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* Ph.D. Candidate in [your field], Duke University, [expected year]
* [Your prior degree], [your institution], [year]

Research Experience
======
* [Dates]: [Position]
  * Duke Quantum Center
  * [Short description of the work]

Skills
======
* [Skill 1]
* [Skill 2]
* [Skill 3]

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Service and leadership
======
* [Add any service/leadership items here]
