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

Cannot Add Negative Number Of Tickets
    [Tags]    Martin
    [Documentation]    Testing that users can't add negative amount of tickets to cart.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Try To Add A Negative Number Of Tickets To Cart
    Then The Cart Should Be Empty

Cannot Add Zero Quantity of Tickets
    [Tags]    Martin
    [Documentation]    Testing that users can't add zero tickets to cart.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Try To Add Zero Tickets To Cart
    Then The Cart Should Be Empty

VIP Ticket Costs Double the Regular Ticket
    [Tags]    Martin
    [Documentation]  Testing that VIP tickets are twice the price of regular tickets.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add 1 Regular Adult Ticket To The Cart
    And I Add 1 VIP Adult Ticket To The Cart
    Then The Price Of The VIP Ticket Should Be Double The Regular Ticket Price

Combine Different Ticket Types To Verify Total Price Calculates Correctly
    [Tags]    Martin
    [Documentation]    Testing that the total amount is shown and calculated correctly when combining different ticket types.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One Regular Ticket Of Each Ticket Type To The Cart
    Then The Total Amount Should Be Correct

Buy One Regular Child Ticket
    [Tags]    Martin
    [Documentation]    Testing that you can buy a regular child ticket.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One Regular "Child" Ticket To The Cart
    Then I Should See One Regular Child Ticket In The Cart
    And I Can Proceed To Checkout

Buy One VIP Child Ticket
    [Tags]    Martin
    [Documentation]    Testing that you can buy a VIP child ticket.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One VIP "Child" Ticket To The Cart
    Then I Should See One VIP Child Ticket In The Cart
    And I Can Proceed To Checkout

Buy One Regular Adult Ticket
    [Tags]    Martin
    [Documentation]    Testing that you can buy a regular adult ticket.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One Regular "Adult" Ticket To The Cart
    Then I should see One Regular Adult Ticket in the cart
    And I Can Proceed To Checkout

Buy One VIP Adult Ticket
    [Tags]    Martin
    [Documentation]    Testing that you can buy a VIP adult ticket.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I add One VIP "Adult" Ticket To The Cart
    Then I Should See One VIP Adult Ticket In The Cart
    And I Can Proceed To Checkout

Buy One Regular Senior Ticket
    [Tags]    Martin
    [Documentation]    Testing that you can buy a regular senior ticket.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One Regular "Senior" Ticket To The Cart
    Then I Should See One Regular Senior Ticket In The Cart
    And I Can Proceed To Checkout

Buy One VIP Senior Ticket
    [Tags]    Martin
    [Documentation]    Testing that you can buy a VIP senior ticket.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Add One VIP "Senior" Ticket To The Cart
    Then I should see One VIP Senior Ticket in the cart
    And I Can Proceed To Checkout