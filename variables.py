#Directory
import os


current_directory = os.getcwd().replace('\\', '/')

#variables
browser = "chrome"
url = f"{current_directory}/JuraStinaKallePark/jurap.html"
title = "Jura-Stina-Kalle Park"

username_register_input_id ="id=reg-username"
password_register_input_id ="id=reg-password"

username_input_id = "id=login-username"
password_input_id = "id=login-password"

login_button = "//*[@id='login-form']/button"
register_button = "//*[@id='register-form']/button"
add_to_cart_button = "//*[@id='ticket-form']/button"
cart_nav_button = "id=cart-nav"
proceed_to_checkout_button = "id=checkout-button"
remove_button = "css=button[onclick^='removeFromCart']"

safari_cart_button = "//*[@id='safari-form']/button"

invalid_username = "qwerty1234"
invalid_passwords = ["", "asdf123", "åäö"]

valid_username = "KimMedFamiljen"
valid_password = "Familj123"

error_message_element_safari = "//*[@id='safari-message']"
error_message_element = "id=login-message"
error_message = "Invalid username or password"

error_message_register_element = "id=register-message"
error_message_register = "Username already exists. Please choose another."
error_message_password_register = "Password must be at least 8 characters long."

successful_message_element = ""
successful_message = ""

buy_tickets = "id=tickets-nav"
cart_visible = "id=cart-nav"

test_variable = "Hello, Robot!"

adult_ticket_type = "Adult"
child_ticket_type = "Child"
senior_ticket_type = "Senior"

regular_ticket_category = "Regular"
vip_ticket_category = "VIP"

two_ticket_quantity = "2"
expected_ticket_quantity_vip_adult = "2 VIP Adult Ticket(s) - $200"
expected_ticket_quantity_vip_child = "2 VIP Child Ticket(s) - $120"
expected_ticket_quantity = ""

safari_dates_category = "id=safari-date"
safari_weekend_date = "002025-04-19"
safari_weekday_date = "2025-02-19"

safari_type_category = "id=safari-type"
herbivore_feeding_tour = "Herbivore Tour with Feeding"
rumble_thrill = "T-Rex Rumble eXtreme Thrill Pack"

herbivore_tour = "Herbivore Tour"

alert_cart_message = "Item added to cart!"

safari_weekend_denied_message = "VIP tickets required to book safaris on weekends."
safari_vip_booking_denied_message = "Only VIP users can book the selected safari option."

denied_buying_ticket_message = "You must be logged in to purchase tickets."
empty_cart_message = "Your cart is empty."