Feature:  
Inloggade användare kan köpa entrébiljetter till parken.

User Story:  
Som system så vill jag att endast inloggade användare skall kunna köpa biljett.  
Som användare så vill jag kunna ta bort tillagd biljett från varukorgen.  
Som system så vill jag att det inte ska vara möjligt att lägga till minus antal biljetter.  

Acceptanskriterier:
- Användare skall vara inloggad för att kunna köpa biljett
- Användare skall kunna lägga till biljett till varukorgen.
- Användare skall kunna ta bort tillagd biljett från varukorgen.
- Användare skall inte kunna lägga till negativt antal biljetter.

Testfall 1: Deny Buying Tickets When Not Logged In: Kollar så att man inte skall kunna köpa biljett om man inte är inloggad.  
Testfall 2: Remove Ticket from Cart: Kollar så att användare kan radera varor från varukorgen.  
Testfall 3: Cannot Add Negative Amount Of Tickets: Kollar så att man inte kan lägga till minus antal biljetter. 

Testfall 3 fick jag tyvärr överge. Tanken var att jag skulle testa genom flera tester att det inte gick att skriva in 0 eller negativa tal 
som antal biljetter men webbläsaren ger ifrån sig en "tooltip" med felmeddelande som jag inte kan komma åt och testa i koden.
 
---

Feature:  
Det finns biljetter av typerna ”Adult”, ”Child” och ”Senior” samt VIP-biljetter för dubbelt pris.

User Story:  
Som System så vill jag att vip biljetten skall vara dubbelt så dyr som regular biljett.
Som system så vill jag att när olika biljetter läggs till i varukorgen så ska totala priset räknas ut korrekt.

Acceptanskriterier:
- Användare skall kunna välja Adult biljett.
- Användare skall kunna välja Child biljett.
- Användare skall kunna välja Senior biljett.
- Användare skall kunna välja Regular biljett.
- Användare skall kunna välja VIP biljett.
- Biljettpriset för VIP skall vara dubbelt än för Regular.

Testfall 1: VIP Ticket Costs Double the Regular Ticket: Kollar så att VIP biljetten är dubbelt så dyr som regular. 
Testfall 2: Child biljett: Man skall kunna välja barn biljett.  
Testfall 3: Senior biljett: Man skall kunna välja senior biljett.  
Testfall 4: Regular biljett: Man skall kunna välja vanlig biljett oavsett om man har valt vuxen, barn eller senior.  
Testfall 5: VIP biljett: Man skall kunna välja vip biljett oavsett om man har valt vuxen, barn eller senior.  
Testfall 6: Adult biljett: Man skall kunna välja vuxen biljett. 