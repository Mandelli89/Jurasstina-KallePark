Feature:  
Inloggade användare kan köpa entrébiljetter till parken.

User Story:  
Som system så vill jag att endast inloggade användare skall kunna köpa biljett.  
Som användare så vill jag kunna ta bort tillagd biljett från varukorgen.  
Som system så vill jag att det inte ska vara möjligt att lägga till mindre än ett i antal biljetter.  

Acceptanskriterier:
- Användare skall vara inloggad för att kunna köpa biljett
- Användare skall kunna lägga till biljett till varukorgen.
- Användare skall kunna ta bort tillagd biljett från varukorgen.
- Användare skall inte kunna lägga till negativt antal biljetter.
- Användare skall inte kunna lägga till noll antal biljetter.

Testfall 1: Deny Buying Tickets When Not Logged In: Testar så att man inte skall kunna köpa biljett om man inte är inloggad.  
Testfall 2: Remove Ticket from Cart: Testar så att användare kan radera varor från varukorgen.  
Testfall 3: Cannot Add Negative Number Of Tickets: Testar så att man inte kan lägga till minus antal biljetter.  
Testfall 4: Cannot Add Zero Quantity of Tickets:  Testar så att man inte kan lägga till noll antal biljetter.  
 
---

Feature:  
Det finns biljetter av typerna ”Adult”, ”Child” och ”Senior” samt VIP-biljetter för dubbelt pris.

User Story:  
Som system så vill jag att vip biljetten skall vara dubbelt så dyr som regular biljett.  
Som system så vill jag att när olika biljetter läggs till i varukorgen så ska totala priset räknas ut korrekt och priset redovisas.  
Som användare så vill jag kunna välja vanlig eller vip biljett oavsett om jag är vuxen, barn eller senior.  

Acceptanskriterier:
- Användare skall kunna välja Adult biljett.
- Användare skall kunna välja Child biljett.
- Användare skall kunna välja Senior biljett.
- Användare skall kunna välja Regular biljett.
- Användare skall kunna välja VIP biljett.
- Biljettpriset för VIP skall vara dubbelt än för Regular.
- Biljettpris och totala summa skall vara synligt.
- Systemet skall utföra uträkning av totala summan korrekt.

Testfall 1: VIP Ticket Costs Double the Regular Ticket: Testar så att VIP biljetten är dubbelt så dyr som regular.  
Testfall 2: Combine Different Ticket Types To Verify Total Price Calculates Correctly: Testar så att priset räknas ut korrekt och totalen redovisas.  
Testfall 3: Buy One Regular Child Ticket: Testar så att man skall kunna köpa en vanlig barn biljett.  
Testfall 4: Buy One VIP Child Ticket: Testar så att man skall kunna köpa en vip barn biljett.  
Testfall 5: Buy One Regular Adult Ticket: Testar så att man skall kunna köpa en vanlig vuxen biljett.  
Testfall 6: Buy One VIP Adult Ticket: Testar så att man skall kunna köpa en vip vuxen biljett.  
Testfall 7: Buy One Regular Senior Ticket: Testar så att man skall kunna köpa en vanlig senior biljett.  
Testfall 8: Buy One VIP Senior Ticket: Testar så att man skall kunna köpa en vip senior biljett.  