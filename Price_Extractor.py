import re
from robot.api.deco import keyword

@keyword
def extract_price_regex(parse_ticket_text):
    cleaned_ticket_text = parse_ticket_text.replace("Remove", "").strip()
    match = re.search(r"\$(\d+)", cleaned_ticket_text)
    if match:
        return int(match.group(1))
    return None