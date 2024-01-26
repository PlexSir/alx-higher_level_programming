#!/usr/bin/python3

import urllib.request
url = "https://alx-intranet.hbtn.io/status"
with urllib.request.urlopen(url) as response:
    content = response.read().decode('utf-8')
print("-" * 10 + " BODY " + "-" * 10)
print(content)