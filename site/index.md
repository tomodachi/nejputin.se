---
layout: default
---

{% assign all = site.companies | sort: "name" %}
{% assign companies = "" | split: ',' %}
{% for company in all %}
		{% assign companies = companies | push: company %}
{% endfor %}

## Svartlistan
  <table class="sortable">
    <thead>
      <tr><th>Företag</th><th>Källa</th><th>Kommentar</th><th>Uppdaterat</th></tr>
    </thead>
    <tbody>
    {% for company in companies %}
      <tr>
        <td markdown="span"><a href="{{ company.website }}">{{ company.name }}</a></td>
        <td markdown="span"><a href="{{ company.source }}">{{ company.source_name }}</a></td>
        <td>{{ company.comment }}</td>
        <td>{{ company.updated_at }}</td>
      </tr>
    {% endfor %}
    </tbody>
  </table>
