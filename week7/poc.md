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

Screenshots:
Code implementatie:

Naam van de POC 2
----------------
* **hypothese:**  

In deze POC ga ik de UI implementeren zoals deze is ontworpen door andere projectleden. Aan de hand van de betreffende UI, wil ik 1-op-1 het design, inclusief de elementen uit het design, in de applicatie implementeren.

Het design die ik hiervoor ga gebruiken betreft: "Inloggen met Email".

De POC wordt direct in de Billy Jean applicatie geimplementeerd aangezien de designs hiervoor al gedeeltelijk klaar zijn, en ik dus direct ook bijdrage lever aan de applicatie.

* **testopzet:**  

Ik wil allereerst de losse elementen uit de designs implementeren in het storyboard van de applicatie. Vervolgens ga ik de destails (afmetingen, witruimtes en overige constraints) toepassen op deze elementen. 
 
* **resultaat:**  

De UI is geimplementeerd in de app. Het design bleek simpeler te implementeren dan verwacht, maar dat komt ook mede doordat het design redelijk basic was. Bij toekomstige design implementaties wordt het meer werk om alle elemeneten exact volgens design te implementeren aangezien de komende designs wat complexer zijn (meer elementen en meer details).

Zie UI:[Link](/week6/poc/poc_UIImplementatie)
