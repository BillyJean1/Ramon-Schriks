Beschrijving van de PoC's
==========================

Geef een beschrijving van de test die je gedaan hebt met elk Proof of Concept. Voeg 
 de code ook toe in de map **code**.
 
Naam van de POC 1
----------------
* **hypothese:**  
Voor het BillyJean project is er uit onze concepten gekomen dat er een mobiele applicatie ontwikkeld gaat worden voor themaparken/evenementen. Hierbij is het doel van de applicatie dat bezoekers gestuurd worden naar minder drukke locaties op het evenement, waaraan beloningen in de vorm van bijvoorbeeld fastpasses zijn gekoppeld.

* In deze applicatie zou het eventueel ook mogelijk moeten zijn om aan de hand van een Map, te zien waar de gebruiker zich nu bevind op het evenement, en welke route tot nu toe is afgelegd. Zo kan de bezoeker ook eenvoudig zien waar hij/zei nog niet is geweest.

* Met deze POC wil ik een iOS applicatie bouwen met daarin een simpele Map weergave van de huidige locatie, en de route die gebruiker heeft afgelegd sinds het openen van de applicatie. De gebruiker moet hierdoor live kunnen zien waar hij/zei zich bevindt, en welke route er is afgelegd om eenvoudig inzicht te krijgen welke locaties nog niet zijn bezocht.

* **testopzet:**  
Het maken van een mobiele applicatie in Swift(iOS) met het gebruik van de Google Maps SDK voor iOS. Vervolgens wordt de GPS sensor van de device benaderd om de huidige locatie op te vragen. Ook wordt er gebruik gemaakt van een background tasker die bij een bepaalde interval de huidige GPS locatie opvraagd, en de Map bijwerkt.
 
* **resultaat:**  
De mobiele applicatie weerspiegeld exact wat vooraf verwacht werd. De applicatie heeft verder geen "buttons" of overige menu items, maar enkel een Map die de huidige locatie weergeeft, en live bewegingen van de gebruiker verwerkt als nieuwe locatie in de applicatie. De afgelegde route wordt weergeven middels een getrokken lijn in de applicatie. 


Naam van de POC 2
----------------
* **hypothese:**  
Korte beschrijving van de veronderstelling

* **testopzet:**  
Korte beschrijving van de manier van testen
 
* **resultaat:**  
Beschrijf in hoeverre de test uitsluitsel heeft gegeven 
over de hypothese
