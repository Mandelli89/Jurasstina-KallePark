Feature:  
Inloggade användare kan köpa entrébiljetter till parken.

User Story:  
Som system så vill jag att endast inloggade användare skall kunna köpa biljett.  
Som användare så vill jag kunna ta bort tillagd biljett från varukorgen.

Acceptanskriterier:
- Användare skall vara inloggad för att kunna köpa biljett
- Användare skall kunna lägga till biljett till varukorgen.
- Användare skall kunna ta bort tillagd biljett från varukorgen.
- Användare skall inte kunna lägga till negativt antal biljetter.
- Användare måste ha lagt till minst en entrebiljett för att kunna gå till checkout.  

Testfall 1: Köp nekas utan inloggning: Man skall inte kunna köpa biljett om man inte är inloggad.  
Testfall 2: Ta bort vara: Användare skall kunna radera varor från varukorgen.  
Testfall 3: Negativt antal: Man skall inte kunna lägga till negativt antal biljetter.  
 
---

Feature:  
Det finns biljetter av typerna ”Adult”, ”Child” och ”Senior” samt VIP-biljetter för dubbelt pris.

User Story:  
Som System så vill jag att vip biljetten skall vara dubbelt så dyr som regular biljett.

Acceptanskriterier:
- Användare skall kunna välja Adult biljett.
- Användare skall kunna välja Child biljett.
- Användare skall kunna välja Senior biljett.
- Användare skall kunna välja Regular biljett.
- Användare skall kunna välja VIP biljett.
- Biljettpriser för VIP skall vara dubbelt än för Regular.

Testfall 1: Dyrare VIP biljett: VIP biljetten skall vara dubbelt så dyr som regular. 
Testfall 2: Child biljett: Man skall kunna välja barn biljett.  
Testfall 3: Senior biljett: Man skall kunna välja senior biljett.  
Testfall 4: Regular biljett: Man skall kunna välja vanlig biljett oavsett om man har valt vuxen, barn eller senior.  
Testfall 5: VIP biljett: Man skall kunna välja vip biljett oavsett om man har valt vuxen, barn eller senior.  
Testfall 6: Adult biljett: Man skall kunna välja vuxen biljett. 