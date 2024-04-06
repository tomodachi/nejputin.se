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

<details>
<summary>
Varför bör jag bojkotta dessa företag?
</summary>
Företagen listade här har direkt eller indirekt en verksamhet som stödjer Rysslands anfallskrig i Ukraina.
Detta genom att tex ha tillverkningen / fabriker / försäljning
av produkter i eller till Ryssland vilket genererar inkomster till Ryska staten.
Pengar som oavkortet går till krigsekonomin. Du kan med några enkla val
protestera och påverka företagen och Ryssland med din konsumtion.
</details>

<details>
<summary>
Hur kan jag föreslå att lägga till/ta bort ett företag från denna lista?
</summary>
Denna sidan är automatiskt genererad baserat på innehållet i filerna i <a href="https://github.com/tomodachi/nejputin.se/tree/main/_companies">denna mapp</a>
Är du mer tekniskt lagd kan  du skapa en "merge request" med förslag på förändringar. Annars kan du även prova på att kontakta mig på: "nejputin snabel-a fishface.se"
</details>
