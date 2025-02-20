User Story:
Som system så vill jag endast att inloggade användare skall kunna köpa biljett

Feature: 
Inloggade användare kan köpa entrébiljetter till parken.

Acceptanskriterier:
- Användare skall vara inloggad.
- Användare skall kunna lägga till biljett till varukorgen.
- Användare skall kunna ta bort tillagd biljett från varukorgen.
- Användare skall inte kunna lägga till negativt antal biljetter.
- Användare måste ha lagt till minst en entrebiljett för att kunna gå till checkout.
- ev. Totala beloppet skall justeras till rätt belopp efter att en biljett tas bort.

Testfall 1: Köp nekas utan inloggning: Man skall inte kunna köpa biljett om man inte är inloggad.  
Testfall 2: Ta bort vara: Man skall kunna radera varor från varukorgen.  
Testfall 3: Negativt antal: Man skall inte kunna lägga till negativt antal biljetter.  
Testfall 4: Minsta antal varor: Man måste ha minst en entrebiljett för att kunna gå till checkout.  
ev testfall 5: Justering Belopp: Beloppet skall justeras när en vara tas bort från vaurkorgen.  

User Story:


Feature:
Det finns biljetter av typerna ”Adult”, ”Child” och ”Senior” samt VIP-biljetter för dubbelt pris.

Acceptanskriterier:
- Användare skall kunna välja Adult biljett.
- Användare skall kunna välja Child biljett.
- Användare skall kunna välja Senior biljett.
- Användare skall kunna välja Regular biljett.
- Användare skall kunna välja VIP biljett.
- Biljettpriser för VIP skall vara dubbelt än för Regular.

Testfall 1: Adult biljett: Man skall kunna välja vuxen biljett.  
Testfall 2: Child biljett: Man skall kunna välja barn biljett.  
Testfall 3: Senior biljett: Man skall kunna välja senior biljett.  
Testfall 4: Regular biljett: Man skall kunna välja vanlig biljett oavsett om man har valt vuxen, barn eller senior.  
Testfall 5: VIP biljett: Man skall kunna välja vip biljett oavsett om man har valt vuxen, barn eller senior.  
Testfall 6: Dyrare VIP biljett: VIP biljetten skall vara dubbelt så dyr som regular.  