Beschrijving van de PoC's
==========================

Geef een beschrijving van de test die je gedaan hebt met elk Proof of Concept. Voeg 
 de code ook toe in de map **code**.
 
Naam van de POC 1
----------------
* **hypothese:**  

In deze POC ga ik UI tests bouwen voor de bestaande feature: Inloggen (specifiek "inloggen via Facebook").
Hiervoor wil ik doormiddel van de tests ervoor zorgen dat de juiste knoppen worden geklikt, en het verwachte resultaat (dat de gebruiker is ingelogd) wordt gevalideerd.

Deze POC sluit tevens aan op het behalen van de kwaliteit van onze applicatie, waarbij we als projectgroep hebben vastgesteld dat er tests geschreven gaan worden. De implementatie hiervan zal ook direct aan de applicatie worden toegevoegd.

* **testopzet:**  

Allereerst wil ik gaan zoeken naar de correcte opzet van een dergelijke tests. De structuur zoals ik deze al in overige tests (examples) zie, is totaal nieuw voor mij waardoor het nog wat vaag is.

Zodra mij de structuur en opzet duidelijk is van de manier van testen, kan ik de test gaan opzetten. Hierbij is het belangrijk om de flow te definieren en op basis hiervan de verwachte resultaten gaan meten in de test.

Uiteindelijk is het doel om ingelogd te zijn via Facebook met behulp van de Facebook "button". De applicatie gaat nu simpelweg naar een andere pagina van de app, wat dan ook door de test gevalideerd moet worden als er is ingelogd.
 
* **resultaat:**  

De tests zijn geimplementeerd in de app en zijn tevens bijgevoegd aan deze repo en zijn correct geslaagd zoals verwacht.
Zie test files:[Link](/week6/poc/poc_UITests/)

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
