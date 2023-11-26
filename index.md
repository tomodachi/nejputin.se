---
---

{% assign all = site.companies | sort: "name" %}
{% assign companies = "" | split: ',' %}
{% for company in all %}
		{% assign companies = companies | push: company %}
{% endfor %}

## Svartlistan

<table class="sortable">
<thead>
<tr><th>Company</th><th>Source</th><th>Comment</th><th>Date Updated</th></tr>
</thead>
<tbody>
{% for company in companies %}
  <tr>
  <td markdown="span"><a href="{{ company.url }}">{{ company.name }}</a></td>
  <td markdown="span"><a href="{{ company.source }}">{{ company.source_name }}</a></td>
  <td>{{ company.comment }}</td>
  <td>{{ company.updated_at }}</td>
  </tr>
{% endfor %}
</tbody>
</table>
