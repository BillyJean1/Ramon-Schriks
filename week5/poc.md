Beschrijving van de PoC's
==========================

Geef een beschrijving van de test die je gedaan hebt met elk Proof of Concept. Voeg 
 de code ook toe in de map **code**.
 
Naam van de POC 1
----------------
* **hypothese:**  
Uit de POC's van vorige week (week4) ben ik Push Notificaties gaan testen. Doordat dit niet is gelukt (zie week4), heb ik naart andere mogelijkheden voor notificaties gezocht. Ik ben vervolgens tot de oplossing gekomen om Notificaties Lokaal te kunnen versturen binnen de locale omgeving van de device. 

In deze POC moet ik kunnen aantonen dat het mogelijk moet zijn om lokaal notificaties te kunnen versturen naar de gebruiker, die vanuit de app worden geinitieerd. Een voorbeeld hiervan zou kunnen zijn dat als een gebruiker op een bepaalde locatie aankomt, een notificatie verstuurd wordt.

* **testopzet:**  
Het maken van een mobiele applicatie in Swift(iOS). Vervolgens wordt de NotificationCenter api van swift benaderd om een notificatie te sturen.

Ik wil hiervoor een simpele app in Swift ontwikkelen die bij het starten van de app, binnen enkele seconden de gebruiker een notificatie stuurt.

Zie screenshot:[Link](/week5/screenshots/notification.jpeg)
 
* **resultaat:**  
De app heeft geen UI, slechts een wit scherm. Ik heb een aparte Service gemaakt binnen de app om simpel notificaties te kunnen versturen. Deze service roep ik aan in de ViewController die bij het starten van de app direct wordt initieerd.


Naam van de POC 2
----------------

