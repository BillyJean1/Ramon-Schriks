Beschrijving van de PoC's
==========================

Geef een beschrijving van de test die je gedaan hebt met elk Proof of Concept. Voeg 
 de code ook toe in de map **code**.
 
Naam van de POC 1
----------------
* **hypothese:**  
Voor het BillyJean project is er uit onze concepten gekomen dat er een mobiele applicatie ontwikkeld gaat worden voor themaparken/evenementen. Hierbij is het doel van de applicatie dat bezoekers gestuurd worden naar minder drukke locaties op het evenement, waaraan beloningen in de vorm van bijvoorbeeld fastpasses zijn gekoppeld.

In deze applicatie zou het eventueel ook mogelijk moeten zijn om aan de hand van een Map, te zien waar de gebruiker zich nu bevind op het evenement, en welke route tot nu toe is afgelegd. Zo kan de bezoeker ook eenvoudig zien waar hij/zei nog niet is geweest.

Met deze POC wil ik een iOS applicatie bouwen met daarin een simpele Map weergave van de huidige locatie, en de route die gebruiker heeft afgelegd sinds het openen van de applicatie. De gebruiker moet hierdoor live kunnen zien waar hij/zei zich bevindt, en welke route er is afgelegd om eenvoudig inzicht te krijgen welke locaties nog niet zijn bezocht.

* **testopzet:**  
Het maken van een mobiele applicatie in Swift(iOS) met het gebruik van de Google Maps SDK voor iOS. Vervolgens wordt de GPS sensor van de device benaderd om de huidige locatie op te vragen. Ook wordt er gebruik gemaakt van een background tasker die bij een bepaalde interval de huidige GPS locatie opvraagd, en de Map bijwerkt.
 
* **resultaat:**  
De mobiele applicatie weerspiegeld exact wat vooraf verwacht werd. De applicatie heeft verder geen "buttons" of overige menu items, maar enkel een Map die de huidige locatie weergeeft, en live bewegingen van de gebruiker verwerkt als nieuwe locatie in de applicatie. De afgelegde route wordt weergeven middels een getrokken lijn in de applicatie. 


Naam van de POC 2
----------------
* **hypothese:**  
Als aansluiting op het BillyJean project, zouden PushNotificaties voor gebruikers een ideale toevoeging zijn. Dit kan als toepassing hebben dan gebruikers worden geinformeerd zodra er een nieuwe, mindere drukke, locatie wordt gesuggereerd.

Deze POC wordt een uitbreiding op de al bestaande POC_Firebase, waarbij authenticatie is toegepast met behulp van Firebase. 

De pushnotificaties zullen ook vanuit Firebase worden geregeld, die als centrale push notificatie service zal dienen.

* **testopzet:**  
Deze POC wordt een kopie van de POC_Firebase (authenticatie uit week1), met als uitbreiding de push notificaties. Ik wil hierbij de gebruiker een notificatie sturen vanuit Firebase, zodra er is ingelogd binnen de applicatie.
 
* **resultaat:**  
Het resultaat was tegenvallend. Om Push Notificaties te mogen gebruiken (Remote), moet de applicatie toe worden gevoegd aan het Developer Account. Aangezien ik geen developer account heb bij Apple, ben ik toegevoegd aan de organisatie (HAN) om als dit als nog te kunnnen doen. 

Vervolgens ben moet de developer de applicatie registreren middels het zogeheten BundleID (unique id van de App). Daarnaast moet er een certificaat worden aangemaakt om Push Notificaties te mogen versturen via de applicatie. Helaas was het limiet om certificaten (APN keys) aan te maken binnen het betreffende Developer Account al bereikt, waardoor de uitwerking van de POC gestaakt moest worden.

Het vervolg zou zijn dat de betreffende key, die in dit geval niet aangemaakt kon worden, wordt geupload in de Firebase Console zodat Firebase de notificaties kan versturen naar de betreffende App (die geregistreerd staat bij Apple bij het registreren van het BundleID). Deze stap heb ik in de uitwerking helaas niet kunnen doen.

Het enige wat er in de app nog gedaan moet worden in het registeren op "remote" notifications. Dit heb ik wel geimplementeerd, maar is dus helaas niet werkend gekregen. De POC is dan ook niet werkend, maar bevat wel de essentiele code de applicatie te laten werken zodra in Firebase de APN key wordt geinstalleerd. Voor Push Notification implementatie, waarbij de applicatie zich registreerd voor "Remote" notifications, zie de "AppDelegate" voor de methode "registerForFirebaseNotifications" in de volgende file: [Link](/poc_Firebase/poc_Firebase/AppDelegate.swift)

De conclusie is dan helaas, dat indien wij (als projectgroep) ervoor kiezen om Push Notifications te gaan gebruiken, wij een privé Developer Account bij Apple moeten aanvragen ($99). Dit zal in een later stadium beslist en overwogen worden.
