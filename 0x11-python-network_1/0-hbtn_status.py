#!/usr/bin/python3
import requests
print(requests.get("https://alx-intranet.hbtn.io/status").text)