---
permalink: /history
title: "Feel++ History"
breadcrumbs: true
---



<section class="timeline clearfix ir">
	<h2 class="timeline-date">The Future</h2>
	{% assign lastYear = 0 %}
	{% for milestone in site.milestones reversed %}{% unless milestone.hidden %}
		<a href="{{ site.baseurl }}{{ milestone.url }}" title="Click for more details">
		<article class="timeline-box {% if milestone.type == 'Company' %}left{% else %}right{% endif %}">
			<h3>{{ milestone.title }}</h3>
			<span class="icon-calendar">
				{% assign milestone_from = milestone.dates.from | date: '%Y' %}
				{% assign milestone_to = milestone.dates.to | date: '%Y' %}
				{% if milestone_from != milestone_to %}
				<span title="{{ milestone.dates.from }}">{{ milestone_from }}</span> &ndash; <span title="{{ milestone.dates.to }}">{{ milestone_to }}</span>
				{% else %}
				<span title="{{ milestone.dates.from }} &ndash; {{ milestone.dates.to }}">{{ milestone_from }}</span>
				{% endif %}
				{% if milestone_from != nil and milestone_to != nil %}
					(~{% include datediff.liq begin=milestone.dates.from end=milestone.dates.to measure='dynamic' %}{{ result }}&nbsp;{{ measure }})
				{% else %}
					current
				{% endif %}
			</span><br/>
			<strong>Role</strong>: {{ milestone.role }}<br/>
			<strong>Sector</strong>: {{ milestone.sector }}<br/>
			<strong>Main technologies</strong>: {{ milestone.maintech }}
		</article></a>

		{% assign currentYear = milestone.dates.from | date: '%Y' %}
		{% assign diff = currentYear | minus: lastYear %}{% if diff < 0 %}{% assign diff = 0 | minus: diff %}{% endif %}
		{% if forloop.first == false and lastYear <> currentYear and diff > 1 %}
			<h2 class="timeline-date">{{currentYear}}</h2>
			{% assign lastYear = currentYear %}
		{% endif %}
	{% endunless %}{% endfor %}
</section>

{%comment%}
{% for milestone in site.milestones reversed %}{% unless milestone.hidden %}
 * <span title="{{ milestone.dates.from }}">{{ milestone.dates.from | date: '%Y' }}</span>
   --
   <span title="{{ milestone.dates.to }}">{{ milestone.dates.to | date: '%Y' }}</span>
   {% include datediff.liq begin=milestone.dates.from end=milestone.dates.to measure='dynamic' %}
   {% if result != 0 %}(~{{ result }}&nbsp;{{ measure }}){% endif %}:
   [**{{ milestone.title }}**]({{ site.baseurl }}{{ milestone.url }}){: title="{{ milestone.type }}: {{ milestone.role }} in {{ milestone.maintech }}"}{% endunless %}{% endfor %}
{%endcomment%}
