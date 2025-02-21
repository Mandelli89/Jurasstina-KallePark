*** Settings ***
Documentation    Tester för Martins VG-del 
Library    SeleniumLibrary
Variables    variables.py
Resource    keywords.robot
Test Setup    Open Page And Register User
Test Teardown    Close Browser

*** Test Cases ***

Deny Buying Tickets When Not Logged In
    [Tags]    Martin
    [Documentation]    Testing that users cannot add tickets to the cart without logging in.
    Given I am On The Buy Tickets Page Without logging In
    When I Try To Add A Ticket To The Cart
    Then I Should See A Login Required Message

Remove Ticket from Cart
    [Tags]    Martin
    [Documentation]    Testing that users can remove tickets from cart.
    Given I Have Navigated To Buy Tickets Page When Logged In
    And I Have Added A Ticket To The Cart
    When I Remove The Ticket From The Cart
    Then The Cart Should Be Empty

# Cannot Add Less Than One Ticket
    #[Tags]    Martin
    #[Documentation]    Testing that users can't add less than one ticket to cart.
    #Given I Have Navigated To Buy Tickets Page When Logged In
    #When I Set Ticket Quantity To  0
    #And I Try To Add To Cart
    #Then I Should See An Error Message Indicating Valid Quantity

# Tanken var att jag skulle testa genom flera tester att det inte gick att skriva in 0 eller negativa tal 
# som antal biljetter men webbläsaren ger ifrån sig en "tooltip" med felmeddelande som jag inte kan komma åt och testa i koden.

VIP Ticket Costs Double the Regular Ticket
    [Tags]    Martin
    [Documentation]  Testing that VIP tickets are twice the price of regular tickets.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add 1 Regular Adult Ticket To The Cart
    And I Add 1 VIP Adult Ticket To The Cart
    Then The Price Of The VIP Ticket Should Be Double The Regular Ticket Price

Buy One Regular Child Ticket
    [Tags]    Martin
    [Documentation]
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One Regular "Child" Ticket To The Cart
    Then I Should See One Regular Child Ticket In The Cart
    And I Can Proceed To Checkout

Buy One VIP Child Ticket
    [Tags]    Martin
    [Documentation]
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One VIP "Child" Ticket To The Cart
    Then I Should See One VIP Child Ticket In The Cart
    And I Can Proceed To Checkout

Buy One Regular Adult Ticket
    [Tags]    Martin
    [Documentation]
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One Regular "Adult" Ticket To The Cart
    Then I should see One Regular Adult Ticket in the cart
    And I Can Proceed To Checkout

Buy One VIP Adult Ticket
    [Tags]    Martin
    [Documentation]
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I add One VIP "Adult" Ticket To The Cart
    Then I Should See One VIP Adult Ticket In The Cart
    And I Can Proceed To Checkout

Buy One Regular Senior Ticket
    [Tags]    Martin
    [Documentation]
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One Regular "Senior" Ticket To The Cart
    Then I Should See One Regular Senior Ticket In The Cart
    And I Can Proceed To Checkout

Buy One VIP Senior Ticket
    [Tags]    Martin
    [Documentation]
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One VIP "Senior" Ticket To The Cart
    Then I should see One VIP Senior Ticket in the cart
    And I Can Proceed To Checkout