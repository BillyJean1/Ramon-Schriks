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
 
* **resultaat:**  
De app heeft geen UI, slechts een wit scherm. Ik heb een aparte Service gemaakt binnen de app om simpel notificaties te kunnen versturen. Deze service roep ik aan in de ViewController die bij het starten van de app direct wordt initieerd.

Zie screenshot:[Link](/week5/screenshots/notification.jpeg)

Naam van de POC 2
----------------
* **hypothese:**  
Voor deze POC is het de bedoeling om door middel van "Background Tasking" de app om de x aantal minuten (voorbeeld) een lokale notificatie (zie poc hierboven) te versturen. Hierdoor krijgen gebruikers bijvoorbeeld willekeurige notificaties vanuit de applicatie zodat ze verleid worden de applicatie te gaan gebruiken.

* **testopzet:**  
Ik maak deze POC ter aanvulling op de POC van hierboven (de lokale notificaties). Ik wil hier een background timer in stellen en nog een extra messages maken zodat er enige variatie in de notificaties zit.

Vervolgens wil ik in de testopzet enkele notificaties tonen die applicatie initieerd, zodra de applicatie gesloten is.

 
* **resultaat:**  
De app heeft geen UI, slechts een wit scherm net zoals POC 1 (zie hierboven). Om "Background tasking" mogelijk te maken binnen iOS, moest er in het xCode project eerst een enkele (of meerdere, afhankelijk van de mogelijkheden van de app) "Background Tasking" aanzetten in het "Capabilities" menu. Hierdoor worden enkele regels in de applicatie info.plist aangevuld die de applicatie de mogelijkheid geeft om in de achtergrond (dus als de app niet open is), taken uit te voeren.

Indien het bovenstaande niet in de info.plist wordt geplaats, blijft de app maar maximaal 10 minuten in de achtergrond actief.

De timer is voor nu ingesteld op 5 seconden, en stuurt vervolgens een willekeurige message als de app in de achterstond actief is naar de gebruiker.

Zie screenshot:[Link](/week5/screenshots/timer.jpeg)
