import re

class PriceExtractor:
    def extract_price_regex(self, parse_ticket_text):
        match = re.search(r"\$(\d+)", parse_ticket_text)
        if match:
            return int(match.group(1))
        return None