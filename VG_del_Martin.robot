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

Cannot Add Less Than One Ticket
    [Tags]    Martin
    [Documentation]    Testing that users can't add less than one ticket to cart.
    Given I Have Navigated To Buy Tickets Page When Logged In
    When I Set Ticket Quantity To  0
    And I Try To Add To Cart
    Then I Should See An Error Message Indicating Valid Quantity

Atleast One Ticket In Cart To Proceed To Checkout
    [Tags]    Martin
    [Documentation]    Testing that you must have atleast one ticket in cart to proceed to checkout. 
    Given
    When 
    Then 