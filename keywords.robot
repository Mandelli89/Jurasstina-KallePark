*** Settings ***
Library    SeleniumLibrary
Variables    variables.py

*** Keywords ***

Type In Element
    [Tags]    Andreas
    [Arguments]    ${id_element}    ${text_to_write}
    Input Text    ${id_element}    ${text_to_write}

I Am On The Page
    [Tags]    Andreas
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Title Should Be    ${title}

I Navigated To The Login Site
    [Tags]    Andreas
    Execute JavaScript    document.getElementById('login-section').style.display = 'block'

I Am On The Registration Page
    [Tags]    Andreas
    Execute Javascript    document.getElementById('register-section').style.display = 'block'

I Enter An Invalid Username And Password
    [Tags]    Andreas
    Type In Element    ${username_input_id}    ${invalid_username}
    Type In Element    ${password_input_id}    ${invalid_passwords}

I Click The Login Button
    [Tags]    Andreas
    Click Button    ${login_button}

I Should See An Error Message
    [Tags]    Andreas

    Wait Until Element Is Visible    ${error_message_element}
    Wait Until Element Contains    ${error_message_element}    ${error_message}

I Enter A Valid Username And Password
    [Tags]    Andreas
    Type In Element    ${username_input_id}    ${valid_username}
    Type In Element    ${password_input_id}    ${valid_password}

I Should Be Logged In
    [Tags]    Andreas
    Wait Until Element Is Visible    ${cart_visible}

I Have Registered A Valid User
    [Tags]    Andreas
    Execute Javascript    document.getElementById('register-section').style.display = 'block'
    Type In Element    ${username_register_input_id}    ${valid_username}
    Type In Element    ${password_register_input_id}    ${valid_password}
    Click Button    ${register_button}

I Want To Register The Same User
    [Tags]    Andreas
    Type In Element    ${username_register_input_id}    ${valid_username}
    Type In Element    ${password_register_input_id}    ${valid_password}
    Click Button    ${register_button}

I Should See An Failed To Register Message
    [Tags]    Andreas
    Wait Until Element Is Visible    ${error_message_register_element}
    Wait Until Element Contains    ${error_message_register_element}    ${error_message_register}


I Should See An Invalid Password Message
    [Tags]    Andreas
    Wait Until Element Is Visible    ${error_message_register_element}
    Wait Until Element Contains    ${error_message_register_element}    ${error_message_password_register}

I Want To Register A User Using The Wrong Password Length
    [Tags]    Andreas
    FOR    ${invalid_password}    IN    @{invalid_passwords}
        Clear Element Text    ${username_register_input_id}
        Clear Element Text    ${password_register_input_id}
        Type In Element    ${username_register_input_id}    ${valid_username}
        Type In Element    ${password_register_input_id}    ${invalid_password}
        Click Button    ${register_button}
    END

Open Page And Register User
    [Tags]    Martin
    I Am On The Page    ${url}    ${browser}    ${title}
    I Have Registered A Valid User

I Have Logged In With Valid Credentials
    [Tags]    Martin
    I Navigated To The Login Site
    I Enter A Valid Username And Password
    I Click The Login Button
    Wait Until Element Is Visible    ${cart_visible}

I Navigate To The Buy Tickets Page
    [Tags]    Martin
    Execute JavaScript    document.getElementById('tickets-section').style.display = 'block'

I Added Two Adult VIP-tickets To Cart
    [Tags]    Martin
    Select ticket type    ${adult_ticket_type}
    Select ticket category    ${vip_ticket_category}
    Select ticket quantity    ${two_ticket_quantity}
    Click Button    ${add_to_cart_button}
    Alert Should Be Present    ${alert_cart_message}    ACCEPT

I Added Two Child VIP-tickets To Cart
    [Tags]    Martin
    Select ticket type    ${child_ticket_type}
    Select ticket category    ${vip_ticket_category}
    Select ticket quantity    ${two_ticket_quantity}
    Click Button    ${add_to_cart_button}
    Alert Should Be Present    ${alert_cart_message}    ACCEPT

Select Ticket Type
    [Tags]    Martin
    [Arguments]    ${adult_ticket_type}
    Select From List By Value    id=ticket-type    ${adult_ticket_type}

Select Ticket Category
    [Tags]    Martin
    [Arguments]    ${vip_ticket_category}
    Select From List By Value    id=ticket-category    ${vip_ticket_category}

Select Ticket Quantity
    [Tags]    Martin
    [Arguments]    ${ticket_quantity}
    Input Text    id=ticket-quantity    ${ticket_quantity}

The Cart Should Be Updated
    [Tags]    Martin
    Navigate To Cart Page
    Verify Cart Quantity    ${expected_ticket_quantity}

Navigate To Cart Page
    [Tags]    Martin
    Execute JavaScript    document.getElementById('cart-section').style.display = 'block'

Verify Cart Quantity
    [Tags]    Martin
    [Arguments]    ${expected_ticket_quantity}
    ${cart_text}    Get Text    css=#cart-details
    Should Contain    ${cart_text}    ${expected_ticket_quantity}

I Can Proceed To Checkout
    [Tags]    Martin
    Click Button    ${proceed_to_checkout_button}
    Handle Alert    ACCEPT

I am logged In And Have VIP-Tickets
    [Tags]    Martin
    I Have Logged In With Valid Credentials
    I Navigate To The Buy Tickets Page
    I Added Two Adult VIP-tickets To Cart
    I Added Two Child VIP-tickets To Cart

I Navigate To The Book Safaris Page
    [Tags]    Martin
    Execute JavaScript    document.getElementById('safari-section').style.display = 'block'
    Wait Until Element Is Visible    ${safari_type_category}

I Add The VIP Safari Tours
    [Tags]    Andreas
    Select Safari Weekend Date
    Select Safari Exclusive Tour
    Click Button    ${safari_cart_button}

I Book Tours On The Weekend
    [Tags]    Andreas
    Select Safari Weekend Date
    Select Safari Tour
    Click Button    ${safari_cart_button}

Select Safari Weekend Date
    [Tags]    Andreas
    Input Text    ${safari_dates_category}    ${safari_weekend_date}

Select Safari Exclusive Tour
    [Tags]    Andreas
    Select From List By Value    ${safari_type_category}    ${herbivore_feeding_tour}
    Select From List By Value    ${safari_type_category}    ${rumble_thrill}

Select Safari Tour
    [Tags]    Andreas
    Select From List By Value    ${safari_type_category}    ${herbivore_tour}

I Added Two Regular Adult Tickets To Cart
    [Tags]    Andreas
    Select ticket type    ${adult_ticket_type}
    Select ticket category    ${regular_ticket_category}
    Select ticket quantity    ${two_ticket_quantity}
    Click Button    ${add_to_cart_button}
    Alert Should Be Present    ${alert_cart_message}    ACCEPT

I Should See A Cannot Book On Weekend Message
    [Tags]    Andreas
    Wait Until Element Is Visible    ${error_message_element_safari}
    Wait Until Element Contains    ${error_message_element_safari}    ${safari_weekend_denied_message}

I Should See Safari Access Denied Message
    [Tags]    Andreas
    Wait Until Element Is Visible    ${error_message_element_safari}
    Wait Until Element Contains    ${error_message_element_safari}    ${safari_vip_booking_denied_message}

Select Safari Date
    [Tags]    Andreas
    Input Text    ${safari_dates_category}    ${safari_weekend_date}

I Have Logged In And Booked The Regular Tickets
    [Tags]    Andreas
    I Have Registered A Valid User
    I Have Logged In With Valid Credentials
    I Navigate To The Buy Tickets Page
    I Added Two Regular Adult Tickets To Cart

I am On The Buy Tickets Page Without logging In
    [Tags]    Martin
    I Navigate To The Buy Tickets Page

I Try To Add A Ticket To The Cart
    [Tags]    Martin
    Wait Until Element Is Visible    ${add_to_cart_button}
    Click Button    ${add_to_cart_button}

I Should See A Login Required Message
    [Tags]    Martin
    Alert Should Be Present    ${denied_buying_ticket_message}    ACCEPT

I Have Navigated To Buy Tickets Page When Logged In
    [Tags]    Martin
    I Have Logged In With Valid Credentials
    I Navigate To The Buy Tickets Page

I Have Added A Ticket To The Cart
    [Tags]    Martin
    Select Ticket Type    ${adult_ticket_type}
    Select Ticket Category    ${regular_ticket_category}
    Select Ticket Quantity    1
    Click Button    ${add_to_cart_button}
    Alert Should Be Present    ${alert_cart_message}    ACCEPT

I Remove The Ticket From The Cart
    [Tags]    Martin
    Navigate To Cart Page
    Click Button    ${remove_button}

The Cart Should Be Empty
    [Tags]    Martin
    ${cart_text}    Get Text    css=#cart-details
    Should Contain    ${cart_text}    ${empty_cart_message}

I Set Ticket Quantity To
    [Tags]    Martin
    [Arguments]    ${quantity}
    Input Text    id=ticket-quantity    ${quantity}

I Try To Add To Cart
    [Tags]    Martin
    Click Button    ${add_to_cart_button}

I Should See An Error Message Indicating Valid Quantity
    [Tags]    Martin
    Wait Until Element Is Visible    id=ticket-quantity-error
    ${error_message}    Get Text    id=ticket-quantity-error
    Should Contain    ${error_message}    Värdet måste vara större än eller lika med 1.
    Sleep    3s