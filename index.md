---
layout: default
---

<details>
<summary>
Varför bör jag bojkotta dessa företag?
</summary>
På grund av Ryssland rasar ett storskaligt krig i Europa. Ryssland har oprovocerat anfallit ett demokratiskt och fritt grannland. Rysslands fullskaliga invasion av Ukraina fortsätter att medföra stort lidande för det ukrainska folket som just nu slåss för Europas säkerhet. 

Trots detta fortsätter många västerländska och svenska företag sin verksamhet med Ryssland. 

Företagen som ingår i som listas här har antingen tillverkning i Ryssland eller försäljning av sina produkter på den ryska marknaden. Det genererar inkomster till den ryska staten som i sin tur bidrar till Rysslands krigsekonomi. 

Genom att välja att avstå från produkter från de här varumärkena har du möjlighet att påverka företagen att förhoppningsvis avsluta sin verksamhet med Ryssland. På så sätt minskar också förutsättningarna för Ryssland att fortsätta bedriva sitt krig, och för Ukraina att vinna tillbaka sin självständighet. 

Vi kan alla göra något.
</details>

<details>
<summary>
Hur kan jag lämna förslag på företag att listas eller avlistas?
</summary>
Denna sidan är automatiskt genererad baserat på innehållet i filerna i <a href="https://github.com/tomodachi/nejputin.se/tree/main/_companies">denna mapp</a>
Om du är tekniskt lagd kan  du skapa en "merge request" med förslag på förändringar. Du kan även kontakta mig på: "nejputin snabel-a fishface.se"

Slava Ukraini.
</details>

<details>
<summary>
Ladda ner och skriv ut klisterlappar för att göra din egen guerilla-marknadsföring
</summary>
Ladda ner klisterlappar <a href="https://github.com/tomodachi/nejputin.se/blob/main/stickers/nejputin-gevalia.pdf">här</a>
Du kan hitta matchande klisterlappar på  <a href="https://www.clasohlson.com/se/Sjalvhaftande-etiketter-Hama/p/32-2618">Clas Ohlson</a> 
</details>

<br>

{% assign all = site.companies | sort: "name" %}
{% assign companies = "" | split: ',' %}
{% for company in all %}
		{% assign companies = companies | push: company %}
{% endfor %}

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
