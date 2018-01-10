Beschrijving van de PoC's
==========================

Geef een beschrijving van de test die je gedaan hebt met elk Proof of Concept. Voeg 
 de code ook toe in de map **code**.
 
Naam van de POC 1
----------------
* **hypothese:**  

In deze POC ga ik voor de ReCrowd applicatie (BillyJean project) een implementatie verzorgen om de snelste route te kunnen tonen op de kaart van de huidige locatie naar de locatie van de aanbeveling.

Hiervoor ligt het voor de hand dat ik Google Maps API ga gebruiken aangezien dit ook al in andere delen van de applicatie wordt gebruikt. Hiervoor kan dan dezelfde api-key worden gebruikt.

Het doel is om op de kaart de snelste route te tonen voor een betreffende aanbeveling die de gebruiker heeft gekozen. 

* **testopzet:**  

Allereerst moet er worden uitgezocht of Google Maps uberhaubt een beschikbare API heeft voor het ophalen van routes. Daarnaast, mocht het bovenstaande inderdaad mogelijk zijn, moet het ook nog eens mogelijk zijn om routes op te vragen voor "lopers" (aangezien mensen in het pretpark lopers zijn). 

Vervolgens moet de API gebruikt gaan worden en geimplementeerd worden in de al bestande opzet, waarbij momenteel de huidige locatie van de gebruiker wordt getoont op de map met een marker. Zodra een gebruiker dan vraagt om de route, moet de map getoond worden met daarop de huidige locatie, en een weergave van de route naar de doelbestemming.
 
* **resultaat:**  

Bij het implementeren ging er allereerst een hele hoop mis. Het ophalen van routes ging niet via een SDK in swift, maar moet het request via een HTTP-request naar de Google API worden verstuurd om vervolgens de JSON als response te verwerken. De response bestaat uit locaties (stappen) richting de doelbestemming.

In de applicatie moet er van iedere "stap", zoals hierboven is opgehaald uit de API, een lijn worden getrokken op de map. Alle lijnen (stappen) samen vormen vervolgens een route op de map.

Probleem 1: In de testopzet kan voor test doeleinden handmatig een locatie op worden gegeven als huidige GPS locatie (iOS emulator). Bij het wijzigen van deze locatie, moet de applicatie zelf vanaf dat nieuwe punt de route berekenen. Dit wordt netjes gedaan, echter blijft de route vanuit de oude locatie ook nog steeds zichtbaar op de kaart.
Oplossing 1: Na wat research moet de map "gecleared" worden van alle markers en lines. Vervolgens worden de nieuwe elementen opnieuw getekend (``` self.mapView.clear() ```)

Uiteindelijk is de route weergave geimplementeerd en kunnen gebruiker van de applicatie voor een aanbeveling een route opvragen vanuit de huidige locatie.

Code implementatie: [Link](/week7/poc/poc_Route/)

Screenshot: [Link](/week7/screenshots/poc_route.jpeg)

Naam van de POC 2
----------------
* **hypothese:**  

Voor deze POC moet er een oplossing worden gevonden om bij een IOS applicatie, op de achtergrond de locatie te blijven updaten. Het doel hiervan is, volgens de functionele eisen van de applicatie, om op de achtergrond van de applicatie status de afstand bij te houden tussen de aanbeveling en de huidige locatie. Vervolgens moet er, indien de huidige locatie zich binnen een bepaalde straal van de doelbestemming van de aanbeveling bevindt, een notificatie worden gestuurd dat de doelbestemming is bereikt. Uiteindelijk wordt de aanbeveling gestopt en worden de punten toegekend.

* **testopzet:**  

In de testopzet wordt er verder doorontwikkeld op "Background Fetching". Op dit moment is daar al een beperkte implementatie van. Hierbij wordt momenteel willekeurig een fetch uitgevoerd waarop er wordt gecontrolleerd op of er nieuwe aanbevelingen zijn.

Helaas kan deze implementatie niet gebruikt worden om de afstand continue te blijven meten tussen de huidige locatie en de doelbestemming.

Er moet worden onderzocht op welke manier de locatie van de gebruiker op de achtergrond kan worden geupdate waardoor er vervolgens acties in de applicatie uitgevoerd kunnen worden. Hoewel naast de bestaande "Background Fetch", "Background Location" ook een modus is van de applicatie die in- en uitgeschakeld kan worden, is de implementatie hiervan nog onduidelijk.
 
* **resultaat:**  

De uiteindelijke oplossing werkt als volgt:
In de viewController waar momenteel de huidige aanbeveling wordt getoond, wordt achtergrond locatie ingeschakeld. Bij een update van de locatie wordt er vervolgens een methode uitgevoerd die controlleerd of de huidige locatie binnen een bepaalde straal van de doellocatie zit. Indien dit zo is wordt er een notificatie verstuurd, wordt de aanbeveling beindigd en worden de punten die met de aanbeveling behaald konden worden toegekend.

In de screenshot is de pushnotificatie te zien nadat een gebruiker is aangekomen op de doellocatie: [Link](/week7/screenshots/poc_background_location_1.jpeg)

De code (viewController) die de locatie blijft updaten (methodenaam: *LocationManager (r:77)* (voor updates) en *startLocationUpdates (r:129)* (voor inschakelen achtergrond updates): [Link](/week7/poc/poc_Background_location_fetch/RecommendationService.swift)

De code die de controleert of de huidige locatie zich binnen de straal van de doellocatie bevind (methodenaam: *checkDestinationIsReached*): [Link](/week7/poc/poc_Background_location_fetch/RecommendationService.swift)
