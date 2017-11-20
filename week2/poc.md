Beschrijving van de PoC's
==========================

**Firebase**:
Hiervoor heb ik een Proof-of-Concept gemaakt in iOS (Swift). De applicatie bevat een login scherm waarmee een gebruiker kan inloggen indien deze een account heeft. Indien geen account, kan er een account worden aangemaakt en kan men vervolgens inloggen.

De code hiervoor staat in "/poc/poc_Firebase"


**Heatmap**:
Voor deze POC is er een simpele applicatie gemaakt met een map weergave van Efteling, waarbij een enkele attractie op is voorzien van een "heat" op de betreffende map.

Zie screenshot: [logo]: /screenshots/heatmap

 
poc_Firebase
----------------
* **hypothese:**

Het idee van deze tech is dat er een werkende testopstelling is gemaakt van een login authenticatie voor een eventuele applicatie. Aangezien het idee van de opdrachtgever onder andere omvat dat er gebruikers bestaan met een puntensysteem, waarin gebruikers punten kunnen sparen, is het logischerwijs een gevolg om hiervoor user authentication voor te gebruiken. 

Met Google Firebase kan men eenvoudig authenticatie instellen binnen een applicatie, zonder het inrichten en beheren van een eigen infrastructuur. Denk hierbij aan databases, servers en veel code om authenticatie mogelijk te maken. Dit beheerd  Firebase namelijk.

Ik zelf heb geen ervaring met Firebase en vond het daarom een leuke uitdaging om deze tech werkend te krijgen in een iOS applicatie. 


* **testopzet:**  
Aangezien al bekend was dat Google Firebase authenticatie in iOS (Swift) werkt (volgends de Google documentatie), was het een kwestie van implementeren van de UI (login buttons, text velden voor email/wachtwoord), en vervolgens de API gebruiken van Firebase die het mogelijk maakt om in te loggen met input credentials, en uit te loggen. 

Errors die in Firebase heeft, moeten zelf afgehandeld worden in de UI. Dit heb ik in deze testopzet gedaan adhv. een simpel textveld die aangeeft of er wel of niet ingelogged kan worden.
 
* **resultaat:**  
De werkende applicatie toont aan om een eenvoudige Firebase authenticatie met gebruik van email/wachtwoord te implementeren in een iOS applicatie. De applicatie heeft een connectie met Google Firebase die de authenticatie beheerd en de gebruikers in beheer heeft.


Naam van de POC 2
----------------
* **hypothese:**  
Om de drukte te kunnen tonen in een applicatie, kan er gebruik gemaakt worden van een map weergeve, met een overlay die de drukte aangeeft. Dit kan met een zogeheten "Heatmap". In het Billy Jean project, waar Crowd-control het hoofdonderwerp betreft, kan het prettig zijn om ook bij bepaalde attracties (in de context van een pretpark) de drukte te kunnen inzien.

* **testopzet:**  
Deze test applicatie (Proof of concept) betreft een implementatie van een dergelijke Heatmap met als voorbeeld de Efteling. In de heatmap is in deze situatie slechts de Baron (een bepaalde attractie) als voorbeeld genenomen om hiervan een Heatmap te tonen.
 
* **resultaat:**  
De werkende applicatie toont de heatmap voor een bepaald punt in het pretpark, en zou in het project verder uitgewerkt kunnen worden zodat het hele park wordt gedekt. Hiervoor is echter wel realtime data voor nodig in de vorm van GPS coordinaten. De beheerders van bijvoorbeeld een pretpark dienen dit dan zelf aan te leveren.
