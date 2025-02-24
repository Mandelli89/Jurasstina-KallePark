#Directory
import os


current_directory = os.getcwd().replace('\\', '/')

#variables
browser = "chrome"
url = f"{current_directory}/JuraStinaKallePark/jurap.html"
title = "Jura-Stina-Kalle Park"


username_register_input_id = "id=reg-username"
password_register_input_id = "id=reg-password"
username_input_id = "id=login-username"
password_input_id = "id=login-password"

login_button = "//*[@id='login-form']/button"
register_button = "//*[@id='register-form']/button"
cart_nav = "id=cart-nav"

safari_cart_button = "//*[@id='safari-form']/button"
buy_tickets_visible =  "id=tickets-nav" 

buy_tickets_button = "id=buy-tickets-btn"
cart_button = "id=cart-button"
ticket_category_selector = "id=ticket-category"
ticket_option = "Regular"
Ticket_type_selector = "id=ticket-type"
ticket_type = "Adult"


ticket_quantity = "id=ticket-quantity"
add_to_cart_button = '//*[@id="ticket-form"]/button'
checkout_button =  "id=checkout-button"
confirmation_message = "id=confirmation-message"
cart_updated_message =  "Cart updated successfully"
loginlink_element = '//*[@id="login-nav"]/a'
login_Section = "id=login-section"
Ticketlink_element = '//*[@id="tickets-nav"]/a'
alert_cart_message = "Item added to cart!"
home_section = "id=home-section"
Register_link = '//*[@id="register-nav"]/a'

invalid_username = "qwerty1234"
invalid_password = "asdf123"
valid_username = "KimMedFamiljen"
valid_password = "Familj123"

valid_username2 = "Stina-Palle"
valid_password2 = "Stina4251!"


error_message_element = "id=login-message"
error_message = "Invalid username or password"
successful_message_element = "id=register-message"
successful_message = "Registration successful! Redirecting to login..."


safari_type_category = "id=safari-type"
safari_type = "Herbivore Tour"
safari_nav = "id=safari-nav"
safari_dates_category = "id=safari-date"
safari_date = "27022025"
